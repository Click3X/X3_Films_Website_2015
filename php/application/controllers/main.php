<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {
	/*==== PAGES =====*/
	public function index( $_page_id = "home", $category_slug = "" )
	{
		$viewdata = $this->getpagedata( $_page_id, $category_slug );

		if($_page_id == "home"){
			$featured_projects = $this->getpagedata( "projects", "featured" );
			$viewdata["featured_projects"] = $featured_projects["data"];
		}

		if($_page_id == "directors"){
			$directors = $this->getpagedata( "projects", "project" );
			$viewdata["directors"] = $directors["data"];
		}

		$this->load->view( 'index_view', $viewdata );
	}

	//project detail
	public function projectdetail( $_detail_slug, $category_slug = "project", $parent_slug = "projects" ){
		$viewdata = $this->getprojectdetaildata( $_detail_slug, $category_slug );
		$viewdata["page_id"] = "project";
		$viewdata["category_slug"] = $category_slug; 
		$viewdata["parent_slug"] = $parent_slug;
		// $viewdata["module_id"] = $module_id;

		$this->load->view("index_view", $viewdata );
	}

	public function directordetail( $_detail_slug, $category_slug = "director", $parent_slug = "directors" ){
		$viewdata = $this->getprojectdetaildata( $_detail_slug, $category_slug );
		$viewdata["page_id"] = "director";
		$viewdata["category_slug"] = $category_slug; 
		$viewdata["parent_slug"] = $parent_slug;
		// $viewdata["module_id"] = $module_id;

		$this->load->view("index_view", $viewdata );
	}

	/*==== JS PAGE TEMPLATES =====*/
	//page js template
	public function pagetemplate( $_page_id = "home", $category_slug = "" ){
		$viewdata = $this->getpagedata( $_page_id, $category_slug );
		$viewdata["template"] = true;

		if($_page_id == "home"){
			$featured_projects = $this->getpagedata( "projects", "featured" );
			$viewdata["featured_projects"] = $featured_projects["data"];
		}

		if($_page_id == "directors"){
			$directors = $this->getpagedata( "projects", "project" );
			$viewdata["directors"] = $directors["data"];
		}

		$this->load->view( 'pages/' . $_page_id . "_view", $viewdata );
	}

	//page detail js template called with ajax from project.js view
	public function projectdetailtemplate( $_detailslug, $category_slug = "project", $parent_slug = "projects" ){
		$viewdata = $this->getprojectdetaildata( $_detailslug, $category_slug );
		$viewdata["page_id"] = "project"; 
		$viewdata["category_slug"] = $category_slug; 
		$viewdata["parent_slug"] = $parent_slug;
		$viewdata["template"] = true;

		$detail = $this->load->view( "project_detail_view", $viewdata, true);
		echo $detail;
	}

	public function directordetailtemplate( $_detailslug, $category_slug = "director", $parent_slug = "directors" ){
		$viewdata = $this->getprojectdetaildata( $_detailslug, $category_slug );
		$viewdata["page_id"] = "director"; 
		$viewdata["category_slug"] = $category_slug; 
		$viewdata["parent_slug"] = $parent_slug;
		$viewdata["template"] = true;

		$detail = $this->load->view( "director_detail_view", $viewdata, true);
		echo $detail;
	}

	/*==== DATA FUNCTIONS =====*/
	public function getprojectdetaildata( $_detailslug, $_category_slug = ""){
		$model = $this->load->model( "projects_model" );
		$project_data = $this->projects_model->get( array( "slug"=>$_detailslug ) );
		$project_data = $project_data[0];
		// $next_director;
		// $previous_director;

		$modules = $this->projects_model->getmodules( $project_data->id );
		$links = $this->projects_model->getlinks( $project_data->id );

		$nextrecord = $this->projects_model->nextproject( $project_data->id, $_category_slug, $project_data->date_created  );	

		if ($nextrecord) {
			$next_director = $nextrecord->title;

		} else {
			$next_director = '';
		}
		// if($nextrecord) $next_director = $nextrecord->title;
		if($nextrecord) $nextrecord = $nextrecord->slug;

		$previousrecord = $this->projects_model->previousproject( $project_data->id, $_category_slug, $project_data->date_created );

		if($previousrecord) {
			$previous_director = $previousrecord->title;
		} else {
			$previous_director = '';
		}

		if($previousrecord) $previousrecord = $previousrecord->slug;


		return array( 
			"data"=>$project_data, 
			"previous"=>$previousrecord, 
			"next"=>$nextrecord, 
			"modules"=>$modules, 
			"links"=>$links,
			"next_director"=>$next_director,
			"previous_director"=>$previous_director,
		);
	}

	public function getpagedata( $_page_id = "home", $_category_slug = "" ){
		$model_name = $_page_id . "_model";
 		$model_path = APPPATH . "models/" . $model_name . ".php";

 		$data = array();

 		if( file_exists( $model_path ) ){
	 		$this->load->model( $model_name, 'model' );
	 		if( empty($_category_slug) ){
	 			$data = $this->model->get();
	 		} else {
	 			if ($_category_slug == 'featured') {
	 				$data = $this->model->getmodulesbycategory( $_category_slug );
	 			} else {
	 				$data = $this->model->getbycategory( $_category_slug );
	 			}
	 			// $data = $this->model->getbycategory( $_category_slug );
	 			
	 			// echo '<pre>';
	 			// var_dump($data);
	 			// echo '</pre>';
	 		}
	 	}

	 	return array( "page_id"=>$_page_id, "data"=>$data, "category_slug"=>$_category_slug );
	}
}