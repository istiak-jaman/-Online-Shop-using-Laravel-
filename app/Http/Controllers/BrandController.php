<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class BrandController extends Controller
{

    // public function __construct(){
    //     $this->adminAuthCheck();
    // }

    // public function adminAuthCheck(){

    //     $admin = Session::get('admin_id');
    //     if($admin){
    //         return;
    //     }else{
    //         return Redirect::to('/admin')->send();
    //     }

    // }


    public function index(){

    	return view('admin.add_brand');

    }

    public function addBrandMethod(Request $request){

    	$data = array();
    	$data['manufacture_name'] 	      = $request->manufacture_name;
    	$data['manufacture_description'] = $request->manufacture_description;
    	$data['publication_status']   = $request->publication_status;

    	


    	DB::table('tbl_manufacture')->insert($data);
    	Session::put('message', 'Brand Added Successfully!');
    	return Redirect::to('/add-brand');
    }

    public function allBrandsMethod(){

    	$all_brand_info = DB::table('tbl_manufacture')->get();
    	$manage = view('admin.all_brands')
    			->with('show_all_brand', $all_brand_info );

    	return view('admin_layout')->with('admin.all_brands', $manage);

    	//return view('admin.all_category');
    }


    public function unactiveBrandMethod($id){

        DB::table('tbl_manufacture')
                    ->where('manufacture_id', $id)
                    ->update(['publication_status' => 0]);


        Session::put('message', 'Brand Unactivated Successfully!');

        return Redirect::to('/all-brands');
    }

    public function activeBrandMethod($id){

        DB::table('tbl_manufacture')
                    ->where('manufacture_id', $id)
                    ->update(['publication_status' => 1]);


        Session::put('message', 'Brand Activated Successfully!');

        return Redirect::to('/all-brands');
    }


    public function editBrandMethod($id){

        $brand_info = DB::table('tbl_manufacture')
                ->where('manufacture_id', $id)
                ->first();


        $manage = view('admin.edit_brand')
                ->with('show_brand_info', $brand_info );

        return view('admin_layout')->with('admin.edit_brand', $manage);

        //return view('admin.edit_category');

    }
	public function updateBrandMethod(Request $request , $id){

        $data = array();

        $data['manufacture_name'] = $request-> manufacture_name;
        $data['manufacture_description'] = $request-> manufacture_description;

        DB::table('tbl_manufacture')
                ->where('manufacture_id', $id)
                ->update($data);

        Session::put('message', 'Brand Updated Successfully !');
        return Redirect::to('/all-brands');

    }









    public function deleteBrandMethod($id){

        DB::table('tbl_manufacture')
                ->where('manufacture_id', $id)
                ->delete();

        Session::put('message', 'Brand Deleted Successfully !');
        return Redirect::to('/all-brands');

    }




}
