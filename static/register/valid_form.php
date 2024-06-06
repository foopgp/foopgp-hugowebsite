<?php

/*****************************

ident_known 1
-> check member with 'email' and 'udid4_input' ?
	-> not found => error/break
-> different addresses ?
	-> add new address in private_note

ident_known 0
-> origine_income = P
	-> check member with 'email' and 'member_type' and 'udid4' ?
-> origine_income = O
	-> check member with 'email' and 'member_type' ?

	-> not found => create draft
	-> found =>
		-> different addresses ?
			-> add new address in private_note

Redirect to stripe url

 *****************************/


require_once(dirname(__FILE__).'/config.php');
require_once(dirname(__FILE__).'/dolibarr.class.php');

$lang = $_GET['lang']??'en';

/**************************************/

function return_with_error($errors)
{

	if(empty($_SERVER['HTTP_REFERER']))
	{
		echo '<!DOCTYPE html><html lang="'.$lang.'"><body><h2>Errors occured</h2><ul><li>';
		echo implode('</li><li>', $errors);
		echo '</li></ul></body></html>';
	}
	else
	{
		header("Location: ".$_SERVER['HTTP_REFERER'].'#'.json_encode($errors),true,302);
	}
	exit;
}

/**************************************/

if(!isset($_POST) || !is_array($_POST) || empty($_POST['payment']))
{
	// 403 Forbidden
	http_response_code(403);
	die("Forbidden, form can not be empty!");
}
$errors = array();

// check FORM fields
foreach(array('origine_income','denomination_O','ident_known','denomination_P',
	'firstname','lastname','day','month','year','udid4','udid4_input','phone',
	'mobile','email','address','postcode','city','country','member','alias',
	'subdate','acceptrenew','acceptcite','acceptphoto') as $field)
{
	if(!isset($_POST[$field]))
		$errors[] = "Missing form field : $field";
}
if(count($errors)>0)
	return_with_error($errors);

// check dolibarr connection
$doli = new dolibarr(false);
if(!$doli->test_connection())
{
	$errors[] = "Connection to Dolibarr failed";
	$errors[] = "Please, try later...";
	return_with_error($errors);
}

/*
 * ident_known = 1 
 * check member with 'email' and 'udid4_input' 
 */

if($_POST['ident_known']=='1')
{
	$json = $doli->_get('/members', array(
			'typeid'=>INTERDOLI_DOLIMBRTYPE_P,
			'sqlfilters'=>"(t.email:like:'".$_POST['email']."') and (ef.udid4:like:'".$_POST['udid4_input']."')"));
	if($json==false)
		return_with_error(array("No member found with this email and udid4 !!"));
	$rMembers = json_decode($json, false);
	if($rMembers===false)
		return_with_error(array("No member found with this email and udid4 !"));
	if(!is_array($rMembers) || !isset($rMembers[0]->id))
		return_with_error(array("No member found with this email and udid4."));
	$member = $rMembers[0];
	$changes = array();
	if(!empty($_POST['alias']) && $member->array_options->options_courrielfoopgporg != $_POST['alias']."@foopgp.org")
		$changes[]="New alias: ".$_POST['alias']."@foopgp.org";
	if(!empty($_POST['phone']) && str_replace(array(' ','.','/','-'),'',$member->phone) != str_replace(array(' ','.','/','-'),'',$_POST['phone']))
		$changes[]="New phone: ".$_POST['phone'];
	if(!empty($_POST['mobile']) && str_replace(array(' ','.','/','-'),'',$member->phone_mobile) != str_replace(array(' ','.','/','-'),'',$_POST['mobile']))
		$changes[]="New mobile: ".$_POST['mobile'];
	if(!empty($_POST['address']) && str_replace(array("\r\n","\n","\r"),"\r\n",trim($member->address)) != trim($_POST['address']))
		$changes[]="New address: ".$_POST['address'];
	if(!empty($_POST['country']) && $member->country_code != $_POST['country'])
		$changes[]="New country: ".$_POST['country'];
	if(intval($member->array_options->options_acceptphoto) != intval($_POST['acceptphoto']))
	{
		$member->array_options->options_acceptphoto = $_POST['acceptphoto'];
		$changes[]="Accept photo corrected! ";
	}
	if(intval($member->public) != intval($_POST['acceptcite']))
	{
		$member->public = $_POST['acceptcite'];
		$changes[]="Accept cite corrected! ";
	}
	if(count($changes)>0)
	{
		$member->note_private.="\r\n**** ".date('Y-m-d H:i').":\r\n";
		$member->note_private.=implode("\r\n",$changes);
		$doli->_put("/members/".$member->id, json_encode($member));
	}
}

/*
 * ident_known = 0
 * check member with 'email' and 'member_type' and 'udid4' 
 */

if($_POST['ident_known']=='0')
{
	$member = false;
	$json = $doli->_get('/members', array('sqlfilters'=>"(t.email:like:'".$_POST['email']."')"));
	if($json!==false)
	{
		$rMembers = json_decode($json, false);
		if(is_array($rMembers) && isset($rMembers[0]->id))
		{
			$member = $rMembers[0];
			if($member->array_options->options_udid4 != str_replace('udid4=','',$_POST['udid4']))
				return_with_error(array("Member found with this email address but with a different and udid4 !"));
			if($member->typeid != constant('INTERDOLI_DOLIMBRTYPE_'.$_POST['origine_income']))
				return_with_error(array("Member found with this email address but with a different type !"));
			
			$changes = array();
			if($_POST['origine_income']=='O' && !empty($_POST['denomination_O']) && $member->societe != $_POST['denomination_O'])
				$changes[]="New society: ".$_POST['denomination_O'];
			if($_POST['origine_income']=='P' && !empty($_POST['denomination_P']) && $member->societe != $_POST['denomination_P'])
				$changes[]="New pseudo: ".$_POST['denomination_P'];
			if(!empty($_POST['alias']) && $member->array_options->options_courrielfoopgporg != $_POST['alias']."@foopgp.org")
				$changes[]="New alias: ".$_POST['alias']."@foopgp.org";
			if(!empty($_POST['phone']) && str_replace(array(' ','.','/','-'),'',$member->phone) != str_replace(array(' ','.','/','-'),'',$_POST['phone']))
				$changes[]="New phone: ".$_POST['phone'];
			if(!empty($_POST['mobile']) && str_replace(array(' ','.','/','-'),'',$member->phone_mobile) != str_replace(array(' ','.','/','-'),'',$_POST['mobile']))
				$changes[]="New mobile: ".$_POST['mobile'];
			if(!empty($_POST['address']) && str_replace(array("\r\n","\n","\r"),"\r\n",trim($member->address)) != trim($_POST['address']))
				$changes[]="New address: ".$_POST['address'];
			if(!empty($_POST['country']) && $member->country_code != $_POST['country'])
				$changes[]="New country: ".$_POST['country'];
			if(intval($member->array_options->options_acceptphoto) != intval($_POST['acceptphoto']))
			{
				$member->array_options->options_acceptphoto = $_POST['acceptphoto'];
				$changes[]="Accept photo corrected! ";
			}
			if(intval($member->public) != intval($_POST['acceptcite']))
			{
				$member->public = intval($_POST['acceptcite']);
				$changes[]="Accept cite corrected! ";
			}
			if(count($changes)>0)
			{
				$member->note_private.="\r\n**** ".date('Y-m-d H:i').":\r\n";
				$member->note_private.=implode("\r\n",$changes);
				$doli->_put("/members/".$member->id, json_encode($member));
			}
		}
	}
	// creation draft
	if($member===false)
	{
		if(strlen($_POST['country'])==2)
			$country_id = intval($doli->getCountryId($_POST['country']));
		else
			$country_id = 0;
		if(empty($country_id))
		{
			$errors[] = "Unknown country code ".($_POST['country']??'');
		}
		else
		{
			$member=new StdClass();
			$member->statut=-1;
			$member->status=-1;
			$member->typeid = constant('INTERDOLI_DOLIMBRTYPE_'.$_POST['origine_income']);
			if($_POST['origine_income']=='O')
			{
				$member->societe = $_POST['denomination_O'];
				$member->company = $_POST['denomination_O'];
				$member->morphy = 'mor';
			}
			if($_POST['origine_income']=='P')
			{
				$member->morphy = 'phy';
				$member->birth = strtotime($_POST['year'].'-'.$_POST['month'].'-'.$_POST['day']." 12:00:00");
			}
			$member->firstname = mb_convert_case($_POST['firstname'],  MB_CASE_TITLE, "UTF-8");
			$member->lastname = mb_convert_case($_POST['lastname'],  MB_CASE_UPPER, "UTF-8");
			$member->email = trim($_POST['email']);
			$member->phone = trim($_POST['phone']);
			$member->phone_mobile = trim($_POST['mobile']);
			$member->first_subscription_date = strtotime($_POST['subdate']." 12:00:00");
			$member->first_subscription_date_start = $member->first_subscription_date;
			$member->address = $_POST['address'];
			$member->zip = $_POST['postcode'];
			$member->town = $_POST['city'];
			$member->country_id = $country_id;
			$member->public = $_POST['acceptcite'];
			$member->array_options = new StdClass();
			$member->array_options->options_pseudo = $_POST['denomination_'.$_POST['origine_income']];
			$member->array_options->options_udid4 = str_replace('udid4=','',$_POST['udid4']);
			$member->array_options->options_courrielfoopgporg = $_POST['alias']."@foopgp.org";
			
			$member->note_private=print_r($_POST, true);
			
			$doli->_post("/members/", json_encode($member));
		}
	}
}


if(count($errors)>0)
	return_with_error($errors);

header("Location: ".INTERDOLI_STRIPE_LINK.'&utm_content='.base64_encode($_POST['email']),true,302);
