<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use DB;
use App\Http\Requests;
use Session;
session_start();

class SliderController extends Controller
{
    // public function __construct(){
    //     $this->adminAuthCheck();
    // }

    // public function adminAuthCheck(){

    //     $admin = Session::get('admin_id');

    //     // echo "<pre>";
    //     // print_r($admin);
    //     // echo "</pre>";
        
    //     if($admin != null){
    //         return;
    //     }else{
    //         return Redirect::to('/admin')->send();
          
    //     }

    // }

    public function index(){
    	return view('admin.add_slider');
    }

    public function addSliderMethod(Request $request){

    	$data = array();

    	$data['slider_name']				 = $request->slider_name;
    	$data['publication_status'] 		 = $request->publication_status;

    	$image = $request->file('slider_image');
    	if($image){

    		$image_name 	 = str_random(10);
    		$extension       = strtolower($image->getClientOriginalExtension());
    		$image_full_name = $image_name.'.'.$extension;
    		$upload_path 	 = 'uploaded_image/slider_image/';
    		$image_url 		 = $upload_path.$image_full_name;
    		$success 		 = $image->move($upload_path,$image_full_name);

    		if($success){

    			$data['slider_image'] = $image_url;

    			DB::table('tbl_slider')->insert($data);

    			Session::put('message', 'Slider Added Successfully!!');

    			return Redirect::to('/add-slider');

    		}
    	}

    	$data['slider_image']='';
    	DB::table('tbl_slider')->insert($data);
    	Session::put('message', 'Slider Added Successfully without Image!!');

    	return Redirect::to('/add-slider');



    }

    public function allSliderssMethod(){

    	$all_slider_info = DB::table('tbl_slider')->get();
    	$manage = view('admin.all_sliders')
    			->with('show_all_slider', $all_slider_info );

    	return view('admin_layout')->with('admin.all_sliders', $manage);
    }


    public function unactiveSliderMethod($id){

        DB::table('tbl_slider')
                    ->where('slider_id', $id)
                    ->update(['publication_status' => 0]);


        Session::put('message', 'Slider Unactivated Successfully!');

        return Redirect::to('/all-sliders');
    }

    public function activeSliderMethod($id){

        DB::table('tbl_slider')
                    ->where('slider_id', $id)
                    ->update(['publication_status' => 1]);


        Session::put('message', 'Slider Activated Successfully!');

        return Redirect::to('/all-sliders');
    }







    public function deleteSliderMethod($id){

    	$slider = DB::table('tbl_slider')->where('slider_id',$id)->first();
    	$image = $slider->slider_image;

        DB::table('tbl_slider')
                ->where('slider_id', $id)
                ->delete();
        unlink($image);

        Session::put('message', 'Slider Deleted Successfully !');
        return Redirect::to('/all-sliders');


    }







}
