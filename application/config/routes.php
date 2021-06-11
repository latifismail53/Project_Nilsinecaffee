<?php
defined('BASEPATH') OR exit('No direct script access allowed');
//yang pertama dijalankan
$route['default_controller'] = 'home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

$route['admin'] = 'admin/admin';
$route['customer'] = 'customer/customer';
