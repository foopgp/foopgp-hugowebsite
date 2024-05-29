<?php
/*************************************
 * Config interface Dolibarr et stripe
 * 
 * copy this file to config.php
 * 
 ************************************/

// Dolibarr API URL
define('INTERDOLI_DOLAPIURL', "https://server:4443/api/index.php");

// Dolibarr API key
define('INTERDOLI_DOLAPIKEY', "qWeRtYuIoPqWeRtYuIoPqWeRtYuIoP");

// Generate a file log file per day
define('INTERDOLI_LOGGING', true);

// Directory root for log files
define('INTERDOLI_LOGROOT', "/tmp/interface_dolibarr/");

// Dolibarr Member type O
define('INTERDOLI_DOLIMBRTYPE_O', 1);

// Dolibarr Member type P
define('INTERDOLI_DOLIMBRTYPE_P', 2);

// membership fee
define('INTERDOLI_MBRFEE', 1.00);

// Stripe donation link
define('INTERDOLI_STRIPE_LINK', "https://donate.stripe.com/xxxxxxxxxxxxxxxxxxxxxxx?utm_source=xxxxxxxxx&utm_medium=site");

// Stripe CLI webhook secret
define('INTERDOLI_STRIPE_WH_SEC', "whsec_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");

// Stripe Check signature ?
define('INTERDOLI_STRIPE_CHECK_SIG', true);
