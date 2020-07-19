<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class ProductController extends Controller
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


    	return view('admin.add_product');

    }


    public function addProductMethod(Request $request){

    	$data = array();

    	$data['product_name']				 = $request->product_name;
    	$data['category_id']				 = $request->category_id;
    	$data['manufacture_id']				 = $request->manufacture_id;
    	$data['product_short_description']   = $request->product_short_description;
    	$data['product_long_description']    = $request->product_long_description;
    	$data['product_price'] 				 = $request->product_price;
    	$data['product_size'] 				 = $request->product_size;
    	$data['product_color']				 = $request->product_color;
    	$data['publication_status'] 		 = $request->publication_status;



    	$image = $request->file('product_image');
    	if($image){

    		$image_name 	 = str_random(10);
    		$extension       = strtolower($image->getClientOriginalExtension());
    		$image_full_name = $image_name.'.'.$extension;
    		$upload_path 	 = 'uploaded_image/';
    		$image_url 		 = $upload_path.$image_full_name;
    		$success 		 = $image->move($upload_path,$image_full_name);

    		if($success){

    			$data['product_image'] = $image_url;

    			DB::table('tbl_products')->insert($data);

    			Session::put('message', 'Product Added Successfully!!');

    			return Redirect::to('/add-product');

    		}
    	}

    	$data['product_image']='';
    	DB::table('tbl_products')->insert($data);
    	Session::put('message', 'Product Added Successfully without Image!!');

    	return Redirect::to('/add-product');


    }


    public function allProductsMethod(){

    	$all_product_info = DB::table('tbl_products')
    						->join('tbl_category','tbl_products.category_id','tbl_category.category_id')
    						->join('tbl_manufacture', 'tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
    						->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
    						->get();
    	$manage = view('admin.all_products')
    			->with('show_all_product', $all_product_info );

    	return view('admin_layout')->with('admin.all_products', $manage);

    }


    public function unactiveProductMethod($id){

    	DB::table('tbl_products')
                    ->where('product_id', $id)
                    ->update(['publication_status' => 0]);


        Session::put('message', 'Product Unactivated Successfully!');

        return Redirect::to('/all-products');

    }


    public function activeProductMethod($id){

        DB::table('tbl_products')
                    ->where('product_id', $id)
                    ->update(['publication_status' => 1]);


        Session::put('message', 'Product Activated Successfully!');

        return Redirect::to('/all-products');
    }


    public function editProductMethod($id){

        $product_info = DB::table('tbl_products')
                ->where('product_id', $id)
                ->join('tbl_category','tbl_products.category_id','tbl_category.category_id')
                ->join('tbl_manufacture','tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
                ->select('tbl_products.*','tbl_category.category_name','tbl_category.category_id','tbl_manufacture.manufacture_name','tbl_manufacture.manufacture_id')
                ->first();


        $manage = view('admin.edit_product')
                ->with('show_product_info', $product_info );

        return view('admin_layout')->with('admin.edit_product', $manage);

        //return view('admin.edit_category');

    }

    public function updateProductMethod(Request $request, $id){


    	
    }




    public function deleteProductMethod($id){

    	$product = DB::table('tbl_products')->where('product_id',$id)->first();
    	$image = $product->product_image;

        DB::table('tbl_products')
                ->where('product_id', $id)
                ->delete();
        unlink($image);

        Session::put('message', 'Product Deleted Successfully !');
        return Redirect::to('/all-products');

    }






}
