<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Main extends MY_controller {
	public function __construct()
	{
		parent::__construct();		
	}
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
	public function index()
	{
		$signUrl = $this->config->item('base_url') . 'signin/logout';	
		if($this->session->userdata('ug_group_type')=='1')
		{
			$this->load->view('main_view_admin');
		}else if($this->session->userdata('ug_group_type')=='2'){
			$this->load->view('main_view_user');
		}else{
			redirect($signUrl);
		}
	}
}
