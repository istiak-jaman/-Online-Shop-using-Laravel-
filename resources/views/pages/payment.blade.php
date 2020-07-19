@extends('layout')
@section('content')
<section id="cart_items">
<div class="container col-sm-12">
	<div class="breadcrumbs">
		<ol class="breadcrumb">
		  <li><a href="#">Home</a></li>
		  <li class="active">Shopping Cart</li>
		</ol>
	</div>
	<?php 

		$contents = Cart::content();

	?>
	<div class="table-responsive cart_info">
		<table class="table table-condensed">
			<thead>
				<tr class="cart_menu">
					<td class="image">Image</td>
					<td class="description">Name</td>
					<td class="price">Price</td>
					<td class="quantity">Quantity</td>
					<td class="total">Total</td>
					<td>Action</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
		@foreach($contents as $value)
				<tr>
					<td class="cart_product">
						<a href=""><img src="{{URL::to($value->options->image)}} " alt="" style="height: 80px; width: 60px" ></a>
					</td>
					<td class="cart_description">
						<h4><a href="">{{$value->name}} </a></h4>
						
					</td>
					<td class="cart_price">
						<p>TK{{$value->price}}</p>
					</td>
					<td class="cart_quantity">
						<div class="cart_quantity_button">

						<form action="{{url('/update-quantity-in-cart')}} " method="post">

						{{csrf_field()}}	
							<input class="cart_quantity_input" type="text" name="qty" value="{{$value->qty}}" autocomplete="off" size="2">
							<input  type="hidden" name="rowId" value="{{$value->rowId}}">
							<input type="submit" name="submit" value="update" class="btn btn-sm btn-success">
							{{-- <a href="#" class="badge badge-danger">update</a> --}}

						</form>	
						</div>
					</td>
					<td class="cart_total">
						<p class="cart_total_price">{{$value->total}}</p>
					</td>
					<td class="cart_delete">
						<center><a class="cart_quantity_delete" href="{{URL::to('/delete-product-from-cart/'.$value->rowId)}}"><i class="fa fa-times"></i></a></center>
					</td>
				</tr>
		@endforeach
				
				
			</tbody>
		</table>
	</div>
</div>
</section> <!--/#cart_items-->
<section id="do_action">
	<div class="container">
		<div class="heading">
			<h3>What would you like to do next?</h3>
			<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
		</div>
		<div class="breadcrumbs">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li class="active">Payment method</li>
			</ol>
		</div>
		<div class="paymentCont col-sm-8">
			<div class="headingWrap">
					<h3 class="headingTop text-center">Select Your Payment Method</h3>	
					<p class="text-center">Created with bootsrap button and using radio button</p>
			</div>
		<form action="{{url('/order-place')}}" method="post">
		{{csrf_field()}}
			<div class="paymentWrap">
				<div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
		            <label class="btn paymentMethod active">
		            	<div class="method visa"></div>
		                <input type="radio" name="payment_method" value="visa" checked> 
		            </label>
		            <label class="btn paymentMethod">
		            	<div class="method master-card"></div>
		                <input type="radio" name="payment_method" value="mastercard"> 
		            </label>
		            <label class="btn paymentMethod">
	            		<div class="method amex"></div>
		                <input type="radio" name="payment_method" value="bkash">
		            </label>
		       		<label class="btn paymentMethod">
	             		<div class="method vishwa"></div>
		                <input type="radio" name="payment_method" value="paypal"> 
		            </label>
		            <label class="btn paymentMethod">
	            		<div class="method ez-cash"></div>
		                <input type="radio" name="payment_method" value="handcash"> 
		            </label> 
		         
		        </div>        
			</div>
		
			<div class="footerNavWrap clearfix">
				<a href="{{URL::to('/')}} "><div class="btn btn-success pull-left btn-fyi"><span class="glyphicon glyphicon-chevron-left"></span> Continue Shopping</div></a>
				<div class="pull-right btn-fyi"><input class="btn btn-success  " type="submit" value="Payment" name="submit"></div>
				{{-- <div class="btn btn-success pull-right btn-fyi">Payment<span class="glyphicon glyphicon-chevron-right"></span></div> --}}
			</div>
		</form>

		</div>
	</div>
</section><!--/#do_action-->


@endsection