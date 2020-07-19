@extends('admin_layout')
@section('admin_content')
<ul class="breadcrumb">
	<li>
		<i class="icon-home"></i>
		<a href="index.html">Home</a>
		<i class="icon-angle-right"></i> 
	</li>
	<li>
		<i class="icon-edit"></i>
		<a href="#">Update Product</a>
	</li>
</ul>

<div class="row-fluid sortable">
	<div class="box span12">
		<div class="box-header" data-original-title>
			<h2><i class="halflings-icon edit"></i><span class="break"></span>Update Product</h2>		
		</div>
	
	<p class=" alert-success">
		<?php
			$message = Session::get('message');
			if($message){
				echo $message;
				echo "\n";
				Session::put('message', NULL);
			}
		?>

	</p>


		<div class="box-content">
			<form class="form-horizontal" action="{{url('/update-product')}} " method="post" enctype="multipart/form-data">
		{{ csrf_field() }}

			  <fieldset>
				
				<div class="control-group">
				  <label class="control-label" for="date01">Product Name</label>
				  <div class="controls">
					<input type="text" class="input-xlarge " name="product_name" value="{{ $show_product_info->product_name }}">
				  </div>
				</div>

				<div class="control-group">
					<label class="control-label" for="selectError3">Product Category</label>
					<div class="controls">
					  <select id="selectError3" name="category_id">
		<?php 
	        $all_published_category = DB::table('tbl_category')
	            ->where('publication_status', 1)
	            ->get();

        ?>
        @foreach($all_published_category as $value)

						<option value="{{$value -> category_id }} " <?php if($show_product_info->category_id == $value->category_id) echo "selected";?> >
							{{$value -> category_name }}
						</option>
		@endforeach		
					  </select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="selectError3">Brand Name</label>
					<div class="controls">
					  <select id="selectError3" name="manufacture_id">

		<?php 
            $all_published_brand = DB::table('tbl_manufacture')
                ->where('publication_status', 1)
                ->get();
        ?>
        @foreach($all_published_brand as $value)
						<option value="{{$value->manufacture_id }}" <?php if($show_product_info->manufacture_id == $value->manufacture_id) echo "selected";?> >
							{{ $value -> manufacture_name }}
						</option>
		@endforeach				
					  </select>
					</div>
				</div>

				         
				<div class="control-group hidden-phone">
				  <label class="control-label" for="textarea2">Product Short Description</label>
				  <div class="controls">
					<textarea class="cleditor" name="product_short_description" rows="3" required="">{{ $show_product_info->product_short_description }} </textarea>
				  </div>
				</div>

				<div class="control-group hidden-phone">
				  <label class="control-label" for="textarea2">Product Long Description</label>
				  <div class="controls">
					<textarea class="cleditor" name="product_long_description" rows="3" required="">{{ $show_product_info->product_long_description }}</textarea>
				  </div>
				</div>

				<div class="control-group">
				  <label class="control-label" for="date01">Product Price</label>
				  <div class="controls">
					<input type="text" class="input-xlarge " name="product_price" value="{{ $show_product_info->product_price }}">
				  </div>
				</div>

				<div class="control-group">
					  <label class="control-label" for="fileInput">Product Image</label>
					  <div class="controls">
					  		<img style="height: 150px; width: 120px;" name="old_photo" src="{{URL::to($show_product_info->product_image) }} ">
							<input class="input-file uniform_on" name="product_image" id="fileInput" type="file">
					  </div>
				</div> 

				<div class="control-group">
				  <label class="control-label" for="date01">Product Size</label>
				  <div class="controls">
					<input type="text" class="input-xlarge " name="product_size" value="{{ $show_product_info->product_size }}">
				  </div>
				</div>

				<div class="control-group">
				  <label class="control-label" for="date01">Product Color</label>
				  <div class="controls">
					<input type="text" class="input-xlarge " name="product_color" value="{{ $show_product_info->product_color }}">
				  </div>
				</div>


				
				<div class="form-actions">
				  <button type="submit" class="btn btn-primary">Update Product</button>
				  <button type="reset" class="btn">Cancel</button>
				</div>
			  </fieldset>
			</form>   

		</div>
	</div><!--/span-->

</div><!--/row-->

@endsection