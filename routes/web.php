<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//front-end routes
Route::get('/', 'HomeController@index');












//back-end routes
Route::get('/logout','SuperAdminController@logoutMethod');

Route::get('/admin', 'AdminController@index');
Route::get('/dashboard','SuperAdminController@index');
Route::post('/admin-dashboard','AdminController@dashboard');




//Category Related Route
Route::get('/add-category','CategoryController@index');
Route::post('/save-category','CategoryController@addCategoryMethod');
Route::get('/all-category','CategoryController@allCategoryMethod');
Route::get('/unactive-category/{category_id}','CategoryController@unactiveCategoryMethod');
Route::get('/active-category/{category_id}','CategoryController@activeCategoryMethod');
Route::get('/edit-category/{category_id}','CategoryController@editCategoryMethod');
Route::post('/update-category/{category_id}','CategoryController@updateCategoryMethod');
Route::get('/delete-category/{category_id}','CategoryController@deleteCategoryMethod');



//Brands Related Route
Route::get('/add-brand','BrandController@index');
Route::post('/save-brand','BrandController@addBrandMethod');
Route::get('/all-brands','BrandController@allBrandsMethod');
Route::get('/unactive-brand/{manufacture_id}', 'BrandController@unactiveBrandMethod');
Route::get('/active-brand/{manufacture_id}', 'BrandController@activeBrandMethod');
Route::get('/edit-brand/{manufacture_id}', 'BrandController@editBrandMethod');
Route::post('/update-brand/{manufacture_id}','BrandController@updateBrandMethod');
Route::get('/delete-brand/{manufacture_id}','BrandController@deleteBrandMethod');


//Products Related Route
Route::get('/add-product','ProductController@index');
Route::post('/save-product', 'ProductController@addProductMethod');
Route::get('/all-products','ProductController@allProductsMethod');
Route::get('/unactive-product/{product_id}', 'ProductController@unactiveProductMethod');
Route::get('/active-product/{product_id}', 'ProductController@activeProductMethod');
Route::get('/edit-product/{product_id}', 'ProductController@editProductMethod');
Route::post('/update-product/{product_id}', 'ProductController@updateProductMethod');
Route::get('/delete-product/{product_id}','ProductController@deleteProductMethod');


//Slider Related Routes
Route::get('/add-slider','SliderController@index');
Route::post('/save-slider', 'SliderController@addSliderMethod');
Route::get('/all-sliders','SliderController@allSliderssMethod');
Route::get('/unactive-slider/{slider_id}', 'SliderController@unactiveSliderMethod');
Route::get('/active-slider/{slider_id}', 'SliderController@activeSliderMethod');

Route::get('/delete-slider/{slider_id}','SliderController@deleteSliderMethod');




//Show Category wise product

Route::get('/product-by-category/{category_id}','HomeController@showProductByCategoryMethod');
Route::get('/product-by-brand/{manufacture_id}','HomeController@showProductByBrandMethod');
Route::get('/view-particular-product/{product_id}','HomeController@ViewParticularProductMethod');




//Cart Routes are here

Route::post('/add-to-cart','CartController@addTocartMethod');
Route::get('/show-cart','CartController@showToCartMethod');
Route::get('/delete-product-from-cart/{rowId}','CartController@deleteProductFromCartMethod');
Route::post('/update-quantity-in-cart','CartController@updateQuantityInCartMethod');




//Checkout Routes is here
Route::get('/login-customer','CheckoutController@customerLoginCheckMethod');
Route::post('/customer-registration','CheckoutController@customerRegistrationMethod');
Route::get('/checkout','CheckoutController@checkoutMethod');

Route::post('/customer-sign-in','CheckoutController@customerSignInMethod');
Route::get('/customer-logout','CheckoutController@customerLogoutMethod');

Route::post('/save-shipping-details','CheckoutController@saveShippingDetailsMethod');

Route::get('/payment','CheckoutController@paymentMethod');
//Select payment method route
Route::post('/order-place','CheckoutController@orderPlaceMethod');


//Order Related Routes


Route::get('/manage-order','OrderController@manageOrderMethod');
Route::get('/view-order/{order_id}','OrderController@viewOrderMethod');

