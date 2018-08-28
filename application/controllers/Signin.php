<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Signin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function __construct()
	{
		ini_set("error_reporting", E_ALL & ~E_NOTICE);
		parent::__construct();	
		$this->load->model("Commonmodel");	
	}

	public function login()
	{		
		if($_POST){
			$user_name = $_POST['u_name'];
			$user_pass = $_POST['u_pass'];
			$res = $this->Commonmodel->signIn($user_name);
			$savedPass = $res[0]['us_password'];
			$hashPass = hash('sha512',$user_pass);
			if(count($res))
			{
				if($hashPass === $savedPass)
				{
					$savedName = $res[0]['us_user_name'];
					$last_name = $res[0]['us_last_name'];
					$first_name = $res[0]['us_first_name'];
					$group_type = $res[0]['ug_group_type'];
					$sessionArray = array('ug_group_type'=>$group_type,
										 'user_name'=>$savedName,
										 'login_user'=>1,
										 'first_name'=>$first_name,
										 'last_name'=>$last_name);
					$this->session->set_userdata($sessionArray);
					$mainUrl = $this->config->item('base_url') . 'main/index';
					redirect($mainUrl);					
				}else{
					$data = array('message'=>'Wrong Password');
				}
			}else{
				$data = array('message'=>'User Not Found');	
			}
		}
		$this->load->view('signin',$data);	
		
	}

	public function logout()
	{
		$this->session->sess_destroy();
		$signUrl = $this->config->item('base_url') . 'signin/login';
        redirect($signUrl);
	}
}
