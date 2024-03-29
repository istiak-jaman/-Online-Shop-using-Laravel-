@extends('layout')
@section('content')
<section id="cart_items">
	<div class="container">
		{{-- <div class="breadcrumbs">
			<ol class="breadcrumb">
			  <li><a href="#">Home</a></li>
			  <li class="active">Check out</li>
			</ol>
		</div><!--/breadcrums-->

		<div class="step-one">
			<h2 class="heading">Step1</h2>
		</div>
		<div class="checkout-options">
			<h3>New User</h3>
			<p>Checkout options</p>
			<ul class="nav">
				<li>
					<label><input type="checkbox"> Register Account</label>
				</li>
				<li>
					<label><input type="checkbox"> Guest Checkout</label>
				</li>
				<li>
					<a href=""><i class="fa fa-times"></i>Cancel</a>
				</li>
			</ul>
		</div><!--/checkout-options--> --}}

		<div class="register-req">
			<h5 class="alert alert-danger">Please Fill Up This Form Properly !!</h5>
		</div><!--/register-req-->

		<div class="shopper-informations">
			<div class="row">
				
				<div class="col-sm-12 clearfix">
					<div class="bill-to">
						<p>Shipping Details</p>
						<div class="form-one">
							<form action="{{url('/save-shipping-details')}}" method="post">
							{{csrf_field()}}
								<input type="text" name="shipping_email" placeholder="Email*">
								<input type="text" name="shipping_firstName" placeholder="First Name *">
								<input type="text" name="shipping_lastName" placeholder="Last Name *">
								<input type="text" name="shipping_address" placeholder="Address  *">
								<input type="text" name="shipping_city" placeholder="City  *">
								<input type="text" name="shipping_zipcode" placeholder="Zip Code  *">
								<input type="text" name="shipping_mobileNo" placeholder="Contact No">
								<input type="submit" class="btn btn-warning" >
							</form>
						</div>
					
					</div>
				</div>
				{{-- <div class="col-sm-4">
					<div class="order-message">
						<p>Shipping Order</p>
						<textarea name="message"  placeholder="Notes about your order, Special Notes for Delivery" rows="16"></textarea>
						<label><input type="checkbox"> Shipping to bill address</label>
					</div>	
				</div> --}}					
			</div>
		</div>
		{{-- <div class="review-payment">
			<h2>Review & Payment</h2>
		</div> --}}

		{{-- <div class="table-responsive cart_info">
			<table class="table table-condensed">
				<thead>
					<tr class="cart_menu">
						<td class="image">Item</td>
						<td class="description"></td>
						<td class="price">Price</td>
						<td class="quantity">Quantity</td>
						<td class="total">Total</td>
						<td></td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="cart_product">
							<a href=""><img src="images/cart/one.png" alt=""></a>
						</td>
						<td class="cart_description">
							<h4><a href="">Colorblock Scuba</a></h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>$59</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a>
								<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								<a class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">$59</p>
						</td>
						<td class="cart_delete">
							<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
						</td>
					</tr>

					<tr>
						<td class="cart_product">
							<a href=""><img src="images/cart/two.png" alt=""></a>
						</td>
						<td class="cart_description">
							<h4><a href="">Colorblock Scuba</a></h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>$59</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a>
								<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								<a class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">$59</p>
						</td>
						<td class="cart_delete">
							<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
						</td>
					</tr>
					<tr>
						<td class="cart_product">
							<a href=""><img src="images/cart/three.png" alt=""></a>
						</td>
						<td class="cart_description">
							<h4><a href="">Colorblock Scuba</a></h4>
							<p>Web ID: 1089772</p>
						</td>
						<td class="cart_price">
							<p>$59</p>
						</td>
						<td class="cart_quantity">
							<div class="cart_quantity_button">
								<a class="cart_quantity_up" href=""> + </a>
								<input class="cart_quantity_input" type="text" name="quantity" value="1" autocomplete="off" size="2">
								<a class="cart_quantity_down" href=""> - </a>
							</div>
						</td>
						<td class="cart_total">
							<p class="cart_total_price">$59</p>
						</td>
						<td class="cart_delete">
							<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
						</td>
					</tr>
					<tr>
						<td colspan="4">&nbsp;</td>
						<td colspan="2">
							<table class="table table-condensed total-result">
								<tr>
									<td>Cart Sub Total</td>
									<td>$59</td>
								</tr>
								<tr>
									<td>Exo Tax</td>
									<td>$2</td>
								</tr>
								<tr class="shipping-cost">
									<td>Shipping Cost</td>
									<td>Free</td>										
								</tr>
								<tr>
									<td>Total</td>
									<td><span>$61</span></td>
								</tr>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
		</div> --}}
		{{-- <div class="payment-options">
				<span>
					<label><input type="checkbox"> Direct Bank Transfer</label>
				</span>
				<span>
					<label><input type="checkbox"> Check Payment</label>
				</span>
				<span>
					<label><input type="checkbox"> Paypal</label>
				</span>
			</div> --}}
	</div>
</section> <!--/#cart_items-->

@endsection