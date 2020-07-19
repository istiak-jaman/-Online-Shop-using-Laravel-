<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use Cart;
use App\Http\Requests;
use Session;
 session_start();

class CheckoutController extends Controller
{
    
	public function customerLoginCheckMethod(){

		return view('pages.login');
	}


	public function customerRegistrationMethod(Request $request){

		$data = array();

		$data['customer_name'] = $request->customer_name;
		$data['customer_email'] = $request->customer_email;
		$data['password'] = md5($request->password);
		$data['mobile_number'] = $request->mobile_number;


		$customer_id = DB::table('tbl_customers')
						   ->insertGetId($data);

		//$customer_id = Session::get('customer_id');
		Session::put('customer_id', $customer_id);
		Session::put('customer_name', $request->customer_name);

		


		return Redirect::to('/checkout');




	}

	public function checkoutMethod(){

		
		return view('pages.checkout');

	}






	public function customerSignInMethod(Request $request){

		$customer_email = $request->customer_email;
		$password       = md5($request->password);

		$result = DB::table('tbl_customers')
				->where('customer_email',$customer_email)
				->where('password',$password)
				->first();

		if($result){

			Session::put('customer_id',$result->customer_id);
			Session::put('customer_name',$result->customer_name);
			return Redirect::to('/checkout');

		}else{

			 Session::put('message', 'Email or Password does not match!!');

			return Redirect::to('/login-customer');
		}


	}

	public function customerLogoutMethod(){

		Session::flush();
		return Redirect::to('/');

	}

	public function saveShippingDetailsMethod(Request $request){

		$data = array();

		$data['shipping_email'] = $request->shipping_email;
		$data['shipping_firstName'] = $request->shipping_firstName;
		$data['shipping_lastName'] = $request->shipping_lastName;
		$data['shipping_address'] = $request->shipping_address;
		$data['shipping_city'] = $request->shipping_city;
		$data['shipping_zipcode'] = $request->shipping_zipcode;
		$data['shipping_mobileNo'] = $request->shipping_mobileNo;


		$shipping_id =  DB::table('tbl_shipping')
						->insertGetId($data);

		Session::put('shipping_id',$shipping_id);
		return Redirect::to('/payment');

	}
	

	public  function paymentMethod(){

		return view('pages.payment');

	}

	public function orderPlaceMethod(Request $request){

		$payment_method = $request->payment_method;

		// $shipping_id = Session::get('shipping_id');
		// $customer_id = Session::get('customer_id');

		$paymentData = array();

		$paymentData['payment_method'] = $payment_method;
		$paymentData['payment_status']  = 'pending';

		$payment_id = DB::table('tbl_payment')
					->insertGetId($paymentData);

		// Everything has is in this Cart::content()
		// $contents = Cart::content()
		// echo $contents;


		$orderData = array();

		$orderData['customer_id'] = Session::get('customer_id');
		$orderData['shipping_id'] = Session::get('shipping_id');
		$orderData['payment_id']  = $payment_id;
		$orderData['order_total'] = Cart::total();
		$orderData['order_status']= 'pending';

		$order_id = DB::table('tbl_order')
		 			->insertGetId($orderData);


	//Access all ordered product for the  customer from Cart::content()
		$contents = Cart::content();
		$orderDetailsData = array();

		foreach ($contents as  $value) {
			$orderDetailsData['order_id'] = $order_id;
			$orderDetailsData['product_id'] = $value->id;
			$orderDetailsData['product_name'] = $value->name;
			$orderDetailsData['product_price'] = $value->price;
			$orderDetailsData['product_sales_quantity'] = $value->qty;

			DB::table('tbl_order_details')
				->insert($orderDetailsData);

		}
		if ($payment_method == 'handcash') {

			Cart::destroy();
			return view('pages.handcash_payment');
			

		}elseif ($payment_method == 'paypal') {

			echo "Successfully done by Paypal";

		}elseif ($payment_method == 'bkash') {

			echo "Successfully done by Bkash";

		}else{
			echo "This payment method is not available now!";
		}





	}





}
