<?php


require_once(dirname(__FILE__).'/config.php');
require_once(dirname(__FILE__).'/dolibarr.class.php');
require_once(dirname(__FILE__).'/stripe-php/init.php');

$payload = @file_get_contents('php://input');
$sig_header = $_SERVER['HTTP_STRIPE_SIGNATURE'];
$event = null;

$doli = new dolibarr(false);
$doli->addlog("Stripe payload: ".$payload);

// This is your Stripe CLI webhook secret for testing your endpoint locally.
$endpoint_secret = INTERDOLI_STRIPE_WH_SEC;


try
{
	$event = \Stripe\Webhook::constructEvent(
		$payload, $sig_header, $endpoint_secret
	);
}
catch(\UnexpectedValueException $e)
{
	// Invalid payload
	http_response_code(400);
	$doli->addlog("Stripe Invalid payload");
	exit();
}
catch(\Stripe\Exception\SignatureVerificationException $e)
{
	// Invalid signature
	http_response_code(400);
	$doli->addlog("Stripe Invalid signature HTTP_STRIPE_SIGNATURE : ".$sig_header);
	if(INTERDOLI_STRIPE_CHECK_SIG)
	{
		exit();
	}
	if(!is_object($event))
	{
		$event = \Stripe\Event::constructFrom( json_decode($payload, true) );
	}
}

$doli->addlog("Stripe event: ".print_r($event,true));

// Handle the event
switch ($event->type) {
	case 'payment_intent.succeeded':
		$paymentIntent = $event->data->object; // contains a \Stripe\PaymentIntent
		// Then define and call a method to handle the successful payment intent.
		// handlePaymentIntentSucceeded($paymentIntent);
		break;
	case 'payment_method.attached':
		$paymentMethod = $event->data->object; // contains a \Stripe\PaymentMethod
		// Then define and call a method to handle the successful attachment of a PaymentMethod.
		// handlePaymentMethodAttached($paymentMethod);
		break;
	case 'checkout.session.completed':
		checkout_session_completed($doli, $event->data->object);
		break;
	default:
		echo 'Received unknown event type ' . $event->type;
}

http_response_code(200);
exit();

/****************************************************/

function checkout_session_completed($doli, $object)
{
	$amount = 			$object->amount_total/100.0;	// centimes -> euros
	$currency = 		$object->currency; // "eur"
	$tm_create = 		$object->created;
	$session_id = 		$object->id; // "cs_live_**********************************************************"
	$submit_type = 		$object->submit_type; // "donate"
	$payment_status = 	$object->payment_status; // "paid"
	$status = 			$object->status; // "complete"
	$payment_intent = 	$object->payment_intent; // "pi_9xxxxxxxxxxxxxxxxxxx"
	$name = 			$object->customer_details->name;
	$email = 			$object->customer_details->email;
	
	if($submit_type != "donate")
	{
		$doli->addlog("REFUS : Stripe submit_type!='donate' : ".$submit_type);
		return false;
	}
	if($payment_status != "paid")
	{
		$doli->addlog("REFUS : Stripe payment_status!='paid' : ".$payment_status);
		return false;
	}
	if($status != "complete")
	{
		$doli->addlog("REFUS : Stripe status!='complete' : ".$status);
		return false;
	}
	
	$member = false;
	$json = $doli->_get('/members', array('sqlfilters'=>"(t.email:like:'".$email."')"));
	if($json!==false)
	{
		$rMembers = json_decode($json, false);
		if(is_array($rMembers) && isset($rMembers[0]->id))
		{
			$member = $rMembers[0];
			
			// get cotisations
			$end_of_cotis = time();
			$json = $doli->_get('/members/'.intval($member->id).'/subscriptions');
			if($json!==false)
			{
				$rCotis = json_decode($json, false);
				if(is_array($rCotis) && count($rCotis)>0)
				{
					foreach($rCotis as $cotis)
					{
						if($cotis->specimen==0 && $cotis->datef>$end_of_cotis)
						{
							$end_of_cotis = $cotis->datef;
						}
					}
				}
			}
			// renew adhesion (31 days before end or after end)
			if( $member->need_subscription && ($end_of_cotis-(31*24*3600)) < time() && $amount>=INTERDOLI_MBRFEE)
			{
				$amount -= INTERDOLI_MBRFEE; // amount is now the remaining donation amount
				$new_cotis = new StdClass();
				$new_cotis->fk_adherent = intval($member->id);
				$new_cotis->date_h = $end_of_cotis+(24*3600);
				$new_cotis->start_date = $new_cotis->date_h;
				$new_cotis->date_f = $new_cotis->date_h+(365*24*3600);
				$new_cotis->end_date = $new_cotis->date_f;
				$new_cotis->amount = INTERDOLI_MBRFEE;
				$new_cotis->fk_type = $member->typeid;
				$new_cotis->label = "Cotisation Stripe ".$new_cotis->start_date." / ".$new_cotis->end_date;
				$new_cotis->note_public = $new_cotis->label;
				$new_cotis->note_private = "Session Stripe: ".$session_id."\n";
				$new_cotis->note_private.= "Intent Stripe: ".$payment_intent."\n";
				$new_cotis->note_private.= "Montant restant pour donation: ".$amount." ".$currency."\n";
				
				$doli->_post('/members/'.intval($member->id).'/subscriptions', json_encode($new_cotis));
				
				$member->statut=1;
				$member->status=1;
				$doli->_put('/members/'.intval($member->id), json_encode($member));
			}
			// donation ?
			if($amount>0.00)
			{
				$donation = new StdClass();
				$donation->firstname = $member->firstname;
				$donation->lastname = $member->lastname;
				$donation->societe = $member->societe;
				$donation->address = $member->address;
				$donation->zip = $member->zip;
				$donation->town = $member->town;
				$donation->country_id = $member->country_id;
				$donation->email = $email;
				$donation->phone = $member->phone;
				$donation->phone_mobile = $member->phone_mobile;
				$donation->datedon = time();
				$donation->date_creation = $donation->datedon;
				$donation->date = $donation->datedon;
				$donation->amount = $amount;
				$donation->label = "Don Stripe ".$amount." ".$currency;
				$donation->note_private = "Session Stripe: ".$session_id."\n";
				$donation->note_private.= "Intent Stripe: ".$payment_intent."\n";
				$id_donation = $doli->_post('/donations', json_encode($donation));
			}
		}
	}
	return false;
}
