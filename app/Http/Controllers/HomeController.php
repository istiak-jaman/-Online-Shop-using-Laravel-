<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class HomeController extends Controller
{
    
    public function index(){

    	$all_published_product = DB::table('tbl_products')
    						->join('tbl_category','tbl_products.category_id','tbl_category.category_id')
    						->join('tbl_manufacture', 'tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
    						->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
    						->where('tbl_products.publication_status',1)
    						->inRandomOrder()
    						->limit(6)
    						->get();
    	$manage = view('pages.home_content')
    			->with('show_published_product', $all_published_product );

    	return view('layout')->with('pages.home_content', $manage);

    	
    	//return view('pages.home_content');
    }


    public function showProductByCategoryMethod($id){

        $products_by_category = DB::table('tbl_products')
                                ->where('category_id',$id)                              
                               ->where('tbl_products.publication_status',1)
                                ->join('tbl_manufacture','tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
                                ->select('tbl_products.*','tbl_manufacture.manufacture_name')
                                ->limit(18)
                                ->get();

        // echo "<pre>";
        //     print_r($products_by_category);
        // echo "</pre>";
        $manage = view('pages.product_by_category')
                ->with('show_product_by_category', $products_by_category );

        return view('layout')->with('pages.product_by_category', $manage);

    }


    public function showProductByBrandMethod($id){

        $products_by_brand = DB::table('tbl_products')
                                ->where('tbl_products.manufacture_id',$id)                              
                               ->where('tbl_products.publication_status',1)
                                ->join('tbl_manufacture','tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
                                ->select('tbl_products.*','tbl_manufacture.manufacture_name')
                                ->limit(18)
                                ->get();

        // echo "<pre>";
        //     print_r($products_by_category);
        // echo "</pre>";
        $manage = view('pages.product_by_brand')
                ->with('show_product_by_brand', $products_by_brand );

        return view('layout')->with('pages.product_by_brand', $manage);

    }

    public function ViewParticularProductMethod($id){

        $product_detalis = DB::table('tbl_products')
                        ->join('tbl_manufacture','tbl_products.manufacture_id','tbl_manufacture.manufacture_id')
                        ->join('tbl_category','tbl_products.category_id','tbl_category.category_id')
                        ->select('tbl_products.*','tbl_category.category_name','tbl_manufacture.manufacture_name')
                        ->where('tbl_products.product_id',$id)
                        ->where('tbl_products.publication_status',1)
                        ->first();

        $manage = view('pages.product_details')
                ->with('show_product_details', $product_detalis );

        return view('layout')->with('pages.product_details', $manage);


    }






}
