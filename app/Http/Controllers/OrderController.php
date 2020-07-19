<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();
class OrderController extends Controller
{
    
	public function manageOrderMethod(){


		$all_order_info = DB::table('tbl_order')
    						->join('tbl_customers','tbl_order.customer_id','tbl_customers.customer_id')
    						->select('tbl_order.*','tbl_customers.customer_name')
    						->get();
    	$manage = view('admin.manage_order')
    			->with('show_all_order', $all_order_info );

    	return view('admin_layout')->with('admin.manage_order', $manage);

	}

	public function viewOrderMethod($id){

		//return view('admin.view_order');

		$order_by_id = DB::table('tbl_order')
							->where('tbl_order.order_id',$id)
    						->join('tbl_customers','tbl_order.customer_id','tbl_customers.customer_id')
    						->join('tbl_order_details','tbl_order.order_id','tbl_order_details.order_id')
    						->join('tbl_shipping','tbl_order.shipping_id','tbl_shipping.shipping_id')
    						->select('tbl_order.*','tbl_customers.*','tbl_order_details.*','tbl_shipping.*' )
    						->get();

    		// echo "<pre>";
    		// print_r($order_by_id);
    		// echo "</pre>";
    	$manage = view('admin.view_order')
    			->with('orderDetailsById', $order_by_id );

    	return view('admin_layout')->with('admin.view_order', $manage);

	}



}
