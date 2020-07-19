@extends('admin_layout')
@section('admin_content')

<div class="row-fluid sortable">
	<div class="box span6">
		<div class="box-header">
			<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Customer Details </h2>
		</div>
		<div class="box-content">
			<table class="table">
				<thead>
					<tr>
						<th>Customer Name</th>
						<th>Mobile</th>
					</tr>
				</thead>
				<tbody>
					
					
					<tr>
					@foreach($orderDetailsById as $value)
					@endforeach 
						<td>{{$value->customer_name }}</td>
						<td>{{$value->mobile_number }}</td>
					</tr>
					
			
				</tbody>	
			</table>	
		</div>	
	</div>

	<div class="box span6">
		<div class="box-header">
			<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Shipping Details </h2>
		</div>
		<div class="box-content">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Username</th>
						<th>Address</th>
						<th>Email</th>
						<th>Mobile</th>
					</tr>
				</thead>
				<tbody>
			
					<tr>
				@foreach($orderDetailsById as $value)
				@endforeach
						<td>{{$value->shipping_firstName." ".$value->shipping_lastName }}</td>
						<td>{{$value->shipping_address }}</td>
						<td>{{$value->shipping_email }}</td>
						<td>{{$value->shipping_mobileNo }}</td>
					</tr>
			
				</tbody>
			</table>
		</div>
	</div>

</div>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon user"></i><span class="break"></span>Order Details </h2>
		</div>
		<div class="box-content">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Id</th>
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Product Sales Quantity</th>
						<th>Product Sub Total</th>
					</tr>
				</thead>
				<tbody>
			@foreach($orderDetailsById as $value)
					<tr>
						<td>{{$value->order_id }}</td>
						<td>{{$value->product_name }}</td>
						<td>{{$value->product_price }}</td>
						<td>{{$value->product_sales_quantity }}</td>
						<td>{{$value->product_price * $value->product_sales_quantity }}</td>
					</tr>
			@endforeach
				</tbody>
				<tfoot>
					<tr>
						<td class="text-warning font-weight-bold" colspan="4"><strong><h3>Total with VAT: </h3></strong></td>
						<td class="text-warning font-weight-bold"><strong><h3>{{$value->order_total}} TK</h3></strong></td>
					</tr>
				</tfoot>
			
			</table>
		</div>
		
	</div>
	

</div>



@endsection