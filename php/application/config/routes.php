<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] 			= "main";
$route['404_override'] 					= '';

/* js detail template routes */	
// $route['template/project/(:any)'] 		= 'main/projectdetailtemplate/$1/project/projects';
// $route['template/featured/(:any)'] 		= 'main/projectdetailtemplate/$1/featured/home';

// directors
$route['template/director/(:any)'] 		= 'main/directordetailtemplate/$1/project/directors';
// $route['template/featured/(:any)'] 		= 'main/projectdetailtemplate/$1/featured/home';

/* js page template routes */	
$route['template/projects.php'] 		= 'main/pagetemplate/projects/project';
$route['template/(:any).php'] 			= 'main/pagetemplate/$1';

/* page routes */
// $route['project/(:any)/(:any)'] 		= 'main/projectdetail/$1/project/projects/$2';
// $route['project/(:any)'] 				= 'main/projectdetail/$1/project/projects';

// $route['director/(:any)/(:any)'] 		= 'main/directordetail/$1/project/directors/$2';
$route['director/(:any)'] 				= 'main/directordetail/$1/project/directors';

$route['featured/(:any)'] 				= 'main/projectdetail/$1/featured/home';
$route['projects'] 						= 'main/index/projects/project';
$route['(:any)'] 						= 'main/index/$1';
/* End of file routes.php */

/* Location: ./application/config/routes.php */