<?php

class Module_Category_Lu_Model extends C3X_Model
{
	public function Module_Category_Lu_Model()
	{
		$this->table = "module_category_lu";
		$this->pk = "id";
    	$this->fields = array(
    		'id' 							=> array("shown"=>false, 	"label"=>"ID"),
            'category_id'                  	=> array("shown"=>true,     "label"=>"Category ID"),
            'module_id'              		=> array("shown"=>true,     "label"=>"Module ID")
		);
	}
}

?>