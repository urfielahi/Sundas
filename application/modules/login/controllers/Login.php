<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	function __construct()
    {
        parent::__construct();
    }


	public function index()
	{
        if( isset( $this->session->userdata['id'] ) )
        {
            redirect('dashboard', 'refresh');
        }
		$data['title'] 	=	"Login";
		$this->load->view('login', $data);
	}


	public function validate_user()
    {
        echo "hello"; die();
        if($this->input->post('user_name') || $this->input->post('user_password'))
        {

            if($this->Login_Model->check_authentication($this->input->post('user_name'), md5($this->input->post('user_password'))))
            {
                redirect('dashboard', 'refresh');
            }
            else
            {               
                redirect('/', 'refresh');
            }
        }
        else
        {
            redirect('login/four_zero_four', 'refresh');
        }
    }


    /*public function reset_password()
    {
        if($this->input->server('REQUEST_METHOD') == 'POST')
        {
            $user   		=   $this->Login_Model->get_user_details($this->input->post('email'));     
            $sub_domain 	=	$this->general_model->get_sub_domain($_SERVER['HTTP_HOST']);  

            if(count($user) && $sub_domain == $user['sub_domain'])
            {
                $time       =   time();
                $link       =   'http://'.$user['sub_domain'].'.ingarages.com/login/login/activate_account/'.$user['id'].'/'.$time;

                $to         =   $user['user_email'];
                $subject    =   'GARAGE - Password Reset';                
                $message    =   "Dear ".$user['user_name'].",<br><br>You have requested password restore for your Garage Account. Please click on the link below to restore your account,<br><br> ".$link ." <br><br>Sincerly,<br>Technical Team - GARAGE";

                if($this->general_model->send_email($to, $subject, $message))
                {
                    $data['link_value']     =   $time;
                    $data['status']         =   'link_send';
                    $this->Settings_Model->update_personal_profile($user['id'], $data);

                    if($user['password'])
                    {
                        $this->session->set_flashdata('notification', get_success_message($this->lang->line('email_reset')));
                    }
                }
                else
                {
                    $this->session->set_flashdata('notification', get_error_message($this->lang->line('gen_error_msg')));  
                }
                
                redirect('/', 'refresh');               
            }
            else
            {
                $this->session->set_flashdata('notification', get_error_message($this->lang->line('email_not_registered')));
                redirect('/', 'refresh');  
            }
        }
        else
        {
            redirect('login/four_zero_four', 'refresh');
        }        
    }


    public function activate_account($user_id = '', $link_value = '')
    {
        if( isset( $this->session->userdata['id'] ) )
        {
            redirect('dashboard', 'refresh');
        }
        
        if($this->input->post('password1') && $this->input->post('password2') && is_numeric($user_id))
        {
            $data['password']           =   md5($this->input->post('password1'));
            $data['last_updated_by']    =   $user_id;            
            $data['last_updated_at']    =   date('Y-m-d H:i:s');
            $data['link_value']         =   NULL;
            $data['status']             =   'active';

            if($this->Settings_Model->update_personal_profile($user_id, $data))
            {
                $user   =   $this->Settings_Model->get_personal_profile($user_id);

                if($this->Login_Model->check_authentication($user['user_email'], md5($this->input->post('password1')), $this->general_model->get_sub_domain($_SERVER['HTTP_HOST'])))
                {
                    $this->session->set_flashdata('notification', get_success_message($this->lang->line('password_changed')));
                    redirect('dashboard', 'refresh');
                }
                else
                {
                    $this->session->set_flashdata('notification', get_error_message($this->lang->line('gen_error_msg')));
                    redirect('login', 'refresh');
                } 
            }
            else
            {
                 $this->session->set_flashdata('notification', get_error_message($this->lang->line('gen_error_msg')));  
            }    

            //redirect('login', 'refresh');        
        }

        if(is_numeric($user_id) && is_numeric($link_value))
        {
            $user   =   $this->Settings_Model->get_personal_profile($user_id);

            if($user['link_value'] == $link_value && $user['status'] == 'link_send' && $user['sub_domain'] == $this->general_model->get_sub_domain($_SERVER['HTTP_HOST']))
            {
                $data['title']  =   'Activate Account';
                $data['id']     =   $user_id;
                $this->load->view('activate-account', $data);
            }
            else
            {
                redirect('login/four_zero_four', 'refresh');
            }
        }
        else
        {
            redirect('login/four_zero_four', 'refresh');
        }
    }

*/
	public function do_logout()
    {
        $user_data = $this->session->all_userdata();    
        foreach ($user_data as $key => $value) 
        {
            $this->session->unset_userdata($key);
        }
        $this->session->sess_destroy();
        $this->session->set_flashdata('notification', get_success_message($this->lang->line('logout_success')));
        redirect('/', 'refresh');
    }


    function four_zero_four()
    {
        $this->load->view('errors/html/error_404.php');
    }


}
