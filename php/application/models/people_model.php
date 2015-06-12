<?php

class People_Model extends C3X_Model
{
	public function People_Model()
	{
		$this->table = "people";
		$this->pk = "id";
    	$this->fields = array(
    		'id' 						=> array("shown"=>false, 	"label"=>"ID"),
            'name'                      => array("shown"=>true,    "label"=>"Name"),
            'title'                     => array("shown"=>true,     "label"=>"Title"),
            'description'               => array("shown"=>true,     "label"=>"Description"),
            'profile_img'               => array("shown"=>true,   	"label"=>"Profile Image"),
            'order'                     => array("shown"=>true,     "label"=>"Order")
		);
	}
}

?>