<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();
class CategoryController extends Controller
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

		return view('admin.add_category');
	}


    public function addCategoryMethod(Request $request){

    	$data = array();
    	$data['category_name'] 	      = $request->category_name;
    	$data['category_description'] = $request->category_description;
    	$data['publication_status']   = $request->publication_status;

    	


    	DB::table('tbl_category')->insert($data);
    	Session::put('message', 'Category Added Successfully!');
    	return Redirect::to('/add-category');

    }

    public function allCategoryMethod(){

    	$all_category_info = DB::table('tbl_category')->get();
    	$manage = view('admin.all_category')
    			->with('show_all_category', $all_category_info );

    	return view('admin_layout')->with('admin.all_category', $manage);

    	//return view('admin.all_category');
    }


    public function unactiveCategoryMethod($id){

        DB::table('tbl_category')
                    ->where('category_id', $id)
                    ->update(['publication_status' => 0]);


        Session::put('message', 'Category Unactivated Successfully!');

        return Redirect::to('/all-category');
    }

    public function activeCategoryMethod($id){
        DB::table('tbl_category')
                    ->where('category_id', $id)
                    ->update(['publication_status' => 1]);


        Session::put('message', 'Category Activated Successfully!');

        return Redirect::to('/all-category');

    } 


    public function editCategoryMethod($id){

        $category_info = DB::table('tbl_category')
                ->where('category_id', $id)
                ->first();


        $manage = view('admin.edit_category')
                ->with('show_category_info', $category_info );

        return view('admin_layout')->with('admin.edit_category', $manage);

        //return view('admin.edit_category');

    }

    public function updateCategoryMethod(Request $request , $id){

        $data = array();

        $data['category_name'] = $request-> category_name;
        $data['category_description'] = $request-> category_description;

        DB::table('tbl_category')
                ->where('category_id', $id)
                ->update($data);

        Session::put('message', 'Category Updated Successfully !');
        return Redirect::to('/all-category');

    }


    public function deleteCategoryMethod($id){

        DB::table('tbl_category')
                ->where('category_id', $id)
                ->delete();

        Session::put('message', 'Category Deleted Successfully !');
        return Redirect::to('/all-category');

    }






}
