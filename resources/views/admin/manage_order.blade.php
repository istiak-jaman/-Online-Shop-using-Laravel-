@extends('admin_layout')
@section('admin_content')
<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">All Orders</a></li>
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
								  <th>Order ID</th>
								  <th>Customer Name</th>
								  <th>Order Total</th>
								  <th>Status</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
					@foreach($show_all_order as $value)
						 
							<tr>
								<td>{{ $value->order_id }} </td>
								<td class="center">{{ $value->customer_name }}</td>
								<td class="center">{{ $value->order_total }}</td>
								<td class="center">{{ $value->order_status }}</td>


								{{-- <td class="center">
							@if($value->order_status == 1)
								<span class="badge badge-info">Active</span>
							@else
								<span class="badge badge-dark">Unactive</span>

							@endif
								</td> --}}


								<td class="center">

								
									<a class="btn btn-dark" href="{{URL::to('/unactive-order/'. $value->order_id)}} ">
										<i class="halflings-icon white thumbs-down"></i>  
									</a>
								
									{{-- <a class="btn btn-success" href="{{URL::to('/active-order/'. $value->order_id)}}">
										<i class="halflings-icon white thumbs-up"></i>  
									</a> --}}
								


									<a class="btn btn-info" href="{{URL::to('/view-order/'. $value->order_id)}}">
										<i class="halflings-icon white edit"></i>  
									</a>
									<a class="btn btn-danger" href="{{URL::to('/delete-order/'. $value->order_id)}}" id="delete" onclick="return confirm('Are you sure?')">
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
