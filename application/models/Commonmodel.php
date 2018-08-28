<?php
class Commonmodel extends CI_Model {

    public function __construct() {
        parent::__construct();
    }    
	
	public function signIn($data)
	{
		$this->db->select('B.ug_group_type,us_user_name,us_password,us_first_name,us_last_name,us_status');
        $this->db->join('eq_user_groups AS B','B.ug_master_id=A.ug_master_id');
		$this->db->where('us_user_name',$data);
		$res = $this->db->get('eq_users AS A');
		return $res->result_array();
	}

}

?>