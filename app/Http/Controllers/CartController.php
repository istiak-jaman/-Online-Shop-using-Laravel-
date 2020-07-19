<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Cart;
use App\Http\Requests;
use Session;
session_start();

class CartController extends Controller
{
    

	public function addTocartMethod(Request $request){

		$qty        = $request->qty;
		$product_id = $request->product_id;

		$product = DB::table('tbl_products')
				  ->where('product_id',$product_id)
				  ->first();

		//$data[] =array();
		$data['qty'] 		  = $qty;
		$data['id'] 			  = $product->product_id;
		$data['name'] 			  = $product->product_name;
		$data['price'] 			  = $product->product_price;
		$data['options']['image'] = $product->product_image;


		Cart::add($data);
		return Redirect::to('/show-cart');
	}

	public  function showToCartMethod(){

		$all_published_category = DB::table('tbl_category')
								->where('publication_status',1)
								->get();


		$manage = view('pages.add_to_cart')
                ->with('all_published_category', $all_published_category );

        return view('layout')->with('pages.add_to_cart', $manage);


	}


	public function deleteProductFromCartMethod($rowId){

		Cart::update($rowId,0);
		return Redirect::to('/show-cart');

	}


	public function updateQuantityInCartMethod(Request $request){

		$qty = $request->qty;
		$rowId = $request->rowId;




		Cart::update($rowId,$qty);
		return Redirect::to('/show-cart');


	}




}
