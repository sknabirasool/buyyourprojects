
<!doctype html>
<html lang="en">

<!-- Mirrored from www.kodingwife.com/demos/unipro/v1-x/01-design-blue/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 20 Dec 2022 02:17:28 GMT -->
<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

		<!-- Meta -->
		<meta name="description" content="UniPro App">
		<meta name="author" content="ParkerThemes">
		<link rel="shortcut icon" href="img/fav.png" />

		<!-- Title -->
		<title>Admin Login</title>


		<!-- *************
			************ Common Css Files *************
		************ -->
		<!-- Bootstrap css -->
		<link rel="stylesheet" href="{{ asset('admin/css/bootstrap.min.css')}}">

		<!-- Main css -->
		<link rel="stylesheet" href="{{ asset('admin/css/main.css')}}">


		<!-- *************
			************ Vendor Css Files *************
		************ -->

	</head>
	<body class="authentication">

		<!-- Loading wrapper start -->
		<div id="loading-wrapper">
			<div class="spinner-border"></div>
			Loading...
		</div>
		<!-- Loading wrapper end -->

		<!-- *************
			************ Login container start *************
		************* -->
		<div class="login-container">

			<div class="container-fluid h-100">

			<!-- Row start -->
			<div class="row g-0 h-100">
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="login-about">
						<div class="slogan">
							<span>Design</span>
							<span>Made</span>
							<span>Simple.</span>
						</div>
						<div class="about-desc">
							UniPro a data dashboard is an information management tool that visually tracks, analyzes and displays key performance indicators (KPI), metrics and key data points to monitor the health of a business, department or specific process.
						</div>
						<a href="#" class="know-more">Know More <img src="{{ asset('admin/img/right-arrow.svg')}}" alt="Uni Pro Admin"></a>

					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-12 col-sm-12 col-12">
					<div class="login-wrapper">
                        <form action="{{ url('/create-account') }}" method="post" id="loginpassword">
                            <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />
							<div class="login-screen">
								<div class="login-body">
									<a href="#" class="login-logo">
										<img src="{{ asset('admin/img/logo.svg')}}" alt="iChat">
									</a>
									<h6>Welcome back,<br>Please login to your account.</h6>

                                    @if ($errors->any())
                                    <div class="btn btn-danger add-danger-noti">
                                        <ul>
                                            @foreach ($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                @endif
                                <div class="field-wrapper">
                                    <input type="text" name="name" autofocus>
                                    <div class="field-placeholder">User Name</div>
                                </div>
									<div class="field-wrapper">
										<input type="email" name="email" autofocus>
										<div class="field-placeholder">Email ID</div>
									</div>
									<div class="field-wrapper mb-3">
										<input type="password" name="password">
										<div class="field-placeholder">Password</div>
									</div>
                                    <div class="field-wrapper mb-3">
										<input type="password" name="password_confirmation">
										<div class="field-placeholder">Confirm Password</div>
									</div>
									<div class="actions">

										<button type="submit" class="btn btn-primary">Sign Up</button>
									</div>
								</div>
								<div class="login-footer">
									<span class="additional-link">have an account <a href="{{ url('login') }}" class="btn btn-light">Login</a></span>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- Row end -->

			</div>
		</div>
		<!-- *************
			************ Login container end *************
		************* -->

		<!-- *************
			************ Required JavaScript Files *************
		************* -->
		<!-- Required jQuery first, then Bootstrap Bundle JS -->
		<script src="{{ asset('admin/js/jquery.min.js')}}"></script>
		<script src="{{ asset('admin/js/bootstrap.bundle.min.js')}}"></script>
		<script src="{{ asset('admin/js/modernizr.js')}}"></script>
		<script src="{{ asset('admin/js/moment.js')}}"></script>

		<!-- *************
			************ Vendor Js Files *************
		************* -->

		<!-- Main Js Required -->
		<script src="{{ asset('admin/js/main.js')}}"></script>

	</body>

</html>
<style>
    .error{
    color:red;
    }

    </style>
