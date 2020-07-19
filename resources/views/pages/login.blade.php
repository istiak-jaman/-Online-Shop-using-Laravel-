@extends('layout')
@section('content')
<section id="form"><!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-sm-offset-1">
				<div class="login-form"><!--login form-->
					<h2>Login to your account</h2>
		<?php
			$message = Session::get('message');
			if($message){  ?>
				<p class="alert alert-danger">
					<?php echo $message;?>
				</p>
			<?php	Session::put('message', NULL);
			}
		?>
					<form action="{{url('/customer-sign-in')}}" method="post">
				{{csrf_field()}}
						<input type="email" name="customer_email" placeholder="Email Address" required="" />
						<input type="password" name="password" placeholder="Your Password" required="" />
						<span>
							<input type="checkbox" class="checkbox"> 
							Keep me signed in
						</span>
						<button type="submit" class="btn btn-default">Login</button>
					</form>
				</div><!--/login form-->
			</div>
			<div class="col-sm-1">
				<h2 class="or">OR</h2>
			</div>
			<div class="col-sm-4">
				<div class="signup-form"><!--sign up form-->
					<h2>New User Signup!</h2>
					<form action="{{url('/customer-registration')}}" method="post">
					{{csrf_field()}}
						<input type="text" name="customer_name" placeholder="Full Name" required=""/>
						<input type="email"name="customer_email" placeholder="Email Address" required=""/>
						<input type="password" name="password" placeholder="Password" required=""/>
						<input type="text" name="mobile_number" placeholder="Phone No" required=""/>
						<button type="submit"  class="btn btn-default">Signup</button>
					</form>
				</div><!--/sign up form-->
			</div>
		</div>
	</div>
</section><!--/form-->

@endsection