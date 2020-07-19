@extends('admin_layout')
@section('admin_content')
<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>

	<p class=" alert-success">
		<?php
			$message = Session::get('message');
			if($message){
				echo $message;
				Session::put('message', NULL);
			}
		?>

	</p>
	

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Product ID</th>
								  <th>Product Name</th>
								  <th>Category</th>
								  <th>Brand</th>
								  <th>Product Image</th>
								  <th>Price</th>
								  <th>Status</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
					@foreach($show_all_product as $value)
						 
							<tr>
								<td>{{ $value->product_id }} </td>

								<td class="center">{{ $value->product_name }}</td>

								<td class="center">{{ $value->category_name }}</td>

								<td class="center">{{ $value->manufacture_name }}</td>


								<td class="center">
									<img style="height: 80px; width: 80px;" src="{{ URL::to($value->product_image) }}">
								</td>

								<td class="center">{{ $value->product_price }}TK</td>



								<td class="center">
							@if($value->publication_status == 1)
								<span class="badge badge-info">Active</span>
							@else
								<span class="badge badge-dark">Unactive</span>

							@endif
								</td>


								<td class="center">

								@if($value->publication_status == 1)
									<a class="btn btn-dark" href="{{URL::to('/unactive-product/'. $value->product_id)}} ">
										<i class="halflings-icon white thumbs-down"></i>  
									</a>
								@else
									<a class="btn btn-success" href="{{URL::to('/active-product/'. $value->product_id)}}">
										<i class="halflings-icon white thumbs-up"></i>  
									</a>
								@endif


									<a class="btn btn-info" href="{{URL::to('/edit-product/'. $value->product_id)}}">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="{{URL::to('/delete-product/'. $value->product_id)}}" id="delete" onclick="return confirm('Are you sure?')">
										<i class="halflings-icon white trash"></i> 
									</a>
								</td>
							</tr>
							
						@endforeach	
							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

@endsection
