<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once dirname(__FILE__) . '/Infobip/Infobip_sms_api.php';

class Sms extends Infobip_sms_api
{
    function __construct()
    {
        parent::__construct();
    }
}

