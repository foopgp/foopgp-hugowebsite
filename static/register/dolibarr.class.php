<?php

/***************************************
 * 
 * Module Interface Dolibarr
 *
 * Author : Befox
 *
 * Licence publique générale GNU 3.0
 *
 ***************************************/

class dolibarr
{
	
	private $m_apiurl		= false;
	private $m_apikey		= false;
	private $m_logging		= false;
	private $m_logroot		= false;
	private $m_displayLog	= false;
	
	public function __construct( $displayLog = false)
	{
		$this->m_apiurl     =  INTERDOLI_DOLAPIURL;
		$this->m_apikey     =  INTERDOLI_DOLAPIKEY;
		$this->m_logroot    =  INTERDOLI_LOGROOT;
		$this->m_logging    =  INTERDOLI_LOGGING;
		$this->m_displayLog = $displayLog;
	}

	public function addlog($strMessage)
	{
		// log ?
		if(!$this->m_logging)
			return false;
		
		// vérification du message
		if (trim($strMessage) == "")
			return false;

		// vérification de la présence du répertoire log
		$yyyymm = date("Y-m");
		if (!file_exists($this->m_logroot. $yyyymm))
			@mkdir($this->m_logroot. $yyyymm, 0700, true);

		// établissement du nom du fichier
		$strFileName = $yyyymm . "/log-" . date('d') . ".txt";

		// écriture du log
		if (($fHandle = fopen($this->m_logroot . $strFileName, "a+")) !== false) {
			fwrite($fHandle, date("H:i:s: ") . ( isset($_SERVER["REMOTE_ADDR"]) ? $_SERVER["REMOTE_ADDR"] : '127.0.0.1' ) . ": $strMessage\n");
			fclose($fHandle);
		}
		if( $this->m_displayLog )
			echo date("H:i:s: ") . ": $strMessage\n";

		// retour ok
		return true;
	}

	public function _get($url, $rParams=false)
	{
		$headers = array();
		if($this->m_apikey!=false)
			$headers[] = "DOLAPIKEY: ".$this->m_apikey;
		$headers[] = "Accept: application/json";
		
		if($rParams!==false)
		{
			if(strpos($url, '?')===false)
				$url.='?'.http_build_query($rParams);
			else
				$url.='&'.http_build_query($rParams);
		}
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $this->m_apiurl.$url);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		curl_setopt($ch, CURLOPT_TIMEOUT, 600);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		$this->addlog('curl : '.$this->m_apiurl.$url);
		while(true)
		{
			$result = curl_exec($ch);
			if(!$result || curl_error($ch)!='')
			{
				$this->addlog('ERROR curl '.curl_error($ch));
				$this->addlog('HTTP code : '.curl_getinfo($ch, CURLINFO_HTTP_CODE));
				return false;
			}
			$this->addlog("Result : ".$result);
			break;
		}
		curl_close($ch);
		return $result;
	}

	public function _put($url, $json='')
	{
		return $this->_post($url, $json, 'PUT');
	}

	public function _post($url, $json='', $method='POST')
	{
		$headers = array();
		if($this->m_apikey!=false)
			$headers[] = "DOLAPIKEY: ".$this->m_apikey;
		$headers[] = "Accept: application/json";
		$headers[] = "Content-Type: application/json";
		if(!empty($json))
			$headers[] = "Content-Length: ".strlen($json);

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $this->m_apiurl.$url);
		curl_setopt($ch, CURLOPT_HEADER, false);
		curl_setopt($ch, CURLOPT_NOBODY, false); // remove body
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
		if($method=='POST')
			curl_setopt($ch, CURLOPT_POST, true);
		else
			curl_setopt($ch, CURLOPT_CUSTOMREQUEST, strtoupper($method));
		curl_setopt($ch, CURLOPT_TIMEOUT, 600);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
		if(!empty($json))
			curl_setopt($ch, CURLOPT_POSTFIELDS, $json);
		$this->addlog('curl : '.$this->m_apiurl.$url);
		$this->addlog($method.' : '.$json);
		while(true)
		{
			$result = curl_exec($ch);
			if(!$result || curl_error($ch)!='')
			{
				$this->addlog('ERROR curl '.curl_error($ch));
				$this->addlog('HTTP code : '.curl_getinfo($ch, CURLINFO_HTTP_CODE));
				return false;
			}
			$this->addlog("Result : ".$result);
			break;
		}
		curl_close($ch);
		return $result;
	}

	public function getCountryId($iso_code)
	{
		$json = $this->_get('/setup/dictionary/countries/byCode/'.$iso_code);
		$country = json_decode($json);
		if(isset($country->id))
			return intval($country->id);
		
		return false;
	}
	
	/** 
	 * Test connection to Dolibarr
	 */
	public function test_connection()
	{
		$json = $this->_get('/status');
		$status = json_decode($json);
		if(isset($status->success->dolibarr_version))
			return true;
		return false;
	}
	
}
