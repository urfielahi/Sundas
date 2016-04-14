<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Login_Model extends CI_Model {
	
	function __construct()
    {
        parent::__construct();
    }
    
	
	
    function check_authentication($user_name, $user_password)
    {   
        $query            =   $this->db->query("SELECT * FROM employees WHERE user_name = '$user_name' AND user_password = '$user_password' AND ( status IN ('active', 'link_send'))");

        if($query->num_rows())
        {
            $user         =   $query->row_array();

            $this->session->set_userdata('id', $user['id']);
            $this->session->set_userdata('name', $user['first_name'].' '.$user['last_name']);
            $this->session->set_userdata('user_name', $user['user_name']);
            $this->session->set_userdata('email', $user['email']);
            $this->session->set_userdata('email_password', $user['email_password']);
            $this->session->set_userdata('designation_id', $user['designation_id']);
            $this->session->set_userdata('designation', $user['designation']);
            $this->session->set_userdata('avatar', $user['avatar']);

            /*if($user['designation'] !== 'admin')
            {
                $this->load->model('employees/Roles_Model');
                $roles      =   $this->Roles_Model->get_employee_roles($user['designation_id']);                
                
                $modules    =   array();
                $controllers=   array();

                foreach($roles as $role)
                {
                    if(!in_array($role['module'], $modules))
                    {
                        $modules[]      =   $role['module'];
                        $controllers[]  =   $role['controller'];
                    }
                    
                    $this->session->set_userdata($role['module'].'@'.$role['controller'].'@'.$role['function'], true);                    
                }

                $this->session->set_userdata('accessible_modules', $modules);
                $this->session->set_userdata('accessible_controllers', $controllers);
            }*/
            
            return true;
        }
        else
        {
            $this->session->set_flashdata('notification', get_error_message($this->lang->line('login_error')));
            return false;
        }
    }


    function get_client_ip_address() 
    {
        $ipaddress = '';

        if (getenv('HTTP_CLIENT_IP'))
            $ipaddress = getenv('HTTP_CLIENT_IP');
        else if(getenv('HTTP_X_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_X_FORWARDED_FOR');
        else if(getenv('HTTP_X_FORWARDED'))
            $ipaddress = getenv('HTTP_X_FORWARDED');
        else if(getenv('HTTP_FORWARDED_FOR'))
            $ipaddress = getenv('HTTP_FORWARDED_FOR');
        else if(getenv('HTTP_FORWARDED'))
            $ipaddress = getenv('HTTP_FORWARDED');
        else if(getenv('REMOTE_ADDR'))
            $ipaddress = getenv('REMOTE_ADDR');
        else
            $ipaddress = 'UNKNOWN';
     
        return $ipaddress;
    }


    function get_user_details($user_email)
    {
        $user_details       =   $this->db->query("SELECT * FROM app_users WHERE user_email = '$user_email' AND status = 'active'")->row_array();
        return $user_details;
    }

	
}

