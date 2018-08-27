<?php
class Commonmodel extends CI_Model {

    public function __construct() {
        parent::__construct();
    }

    function loginSessionCheck() {
        if ($this->session->userdata('login_user')) {
            return true;
        } else {
            $url = $this->config->item('site_url') . '/signin/logOut';
            redirect($url);
        }
    }
	
	public function signIn($data)
	{
		$this->db->select('users_username,users_password,users_active');
		$this->db->where('users_username',$data);
		$res = $this->db->get('zhemr_users');
		return $res;
	}

}

?>