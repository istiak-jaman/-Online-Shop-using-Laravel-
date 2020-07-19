<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class SuperAdminController extends Controller
{
    

    public function index(){

    	$this->adminAuthCheck();
    	return view('admin.dashboard');
    }

    public function logoutMethod(){
    	//Session::put('admin_name', NULL);
    	//Session::put('admin_id', NULL);

    	//or
    	Session::flush();

    	return Redirect::to('/admin');
    }


    public function adminAuthCheck(){

    	$admin = Session::get('admin_id');
    	if($admin){
    		return;
    	}else{
    		return Redirect::to('/admin')->send();
    	}

    }


}
