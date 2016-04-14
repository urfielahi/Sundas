<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
	
	private $icon = 'fa fa-users';
	
	function __construct()
    {
        parent::__construct();


    }


	public function index()
	{   
        $data['title']      =   'Dashboard'; 
        $data['icon']		=	$this->icon; 
        $this->load->view('hr-dashboard', $data);
	}
	
	
}
