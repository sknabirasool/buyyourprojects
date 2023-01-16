<!doctype html>
<html lang="zxx" class="theme-light">

<head>
		<!-- Required meta tags -->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- All CSS Link -->
		<link rel="stylesheet" href="{{asset('web/assets/css/bootstrap.min.css')}}">
        <link rel="stylesheet" href="{{asset('web/assets/css/animate.min.css')}}">
        <link rel="stylesheet" href="{{asset('web/assets/css/meanmenu.css')}}">
        <link rel="stylesheet" href="{{asset('web/assets/css/boxicons.min.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/magnific-popup.min.css')}}">
        <link rel="stylesheet" href="{{asset('web/assets/css/owl.carousel.min.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/flaticon.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/odometer.min.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/slick.min.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/style.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/color/purple-style.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/responsive.css')}}">
		<link rel="stylesheet" href="{{asset('web/assets/css/dark-color/purple-dark-style.css')}}">

		<title>Buy Projects</title>

		<link rel="icon" type="image/png" href="{{ asset('web/assets/img/favicon.png')}}">
	</head>

	<body>

		{{-- <!-- Start Preloader Area -->
        <div class="preloader">
			<div class="spinner">Buy Projects</div>
		</div>
        <!-- End Preloader Area --> --}}

		<!-- Start Navbar Area -->
		<header id="header" class="headroom">
			<div class="startp-responsive-nav">
                <div class="container">
                    <div class="startp-responsive-menu">
                        <div class="logo black-logo">
                            <a href="{{ url('/') }}">
                                <img src="{{ asset('web/assets/img/logo.png')}}" alt="logo">
                            </a>
                        </div>
						<div class="logo white-logo">
                            <a href="{{ url('/') }}">
                                <img src="{{ asset('web/assets/img/white-logo.png')}}" alt="logo">
                            </a>
                        </div>
                    </div>
                </div>
            </div>

			<div class="startp-nav">
				<div class="container">
					<nav class="navbar navbar-expand-md navbar-light">
                        {{-- <img src="{{ asset('web/assets/img/logo.png')}}" alt="logo"> --}}
						<a class="navbar-brand black-logo" href="{{ url('/') }}">BuyYourProjects <i data-feather="code"></i></a>
						<a class="navbar-brand white-logo" href="{{ url('/') }}">BuyYourProjects <i data-feather="code"></i></a>

                        {{-- logo insert --}}
                        {{-- <img src="{{ asset('web/assets/img/white-logo.png')}}" alt="logo"> --}}


						<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
							<ul class="navbar-nav nav ml-auto">
                                <li class="nav-item"><a href="{{ url('/') }}" class="nav-link">Home</a></li>
                                <li class="nav-item"><a href="{{ url('/about') }}" class="nav-link">About Us</a></li>

                               <li class="nav-item"><a href="#" class="nav-link active"> Categories <i data-feather="chevron-down"></i></a>
									<ul class="dropdown_menu">
										<li class="nav-item"><a href="#" class="nav-link active">Java Full-Stack<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
												<li class="nav-item"><a href="{{ url('javafullstack/java') }}" class="nav-link">JAVA PROGRAMMING</a></li>

												<li class="nav-item"><a href="brink-pink-index.html" class="nav-link">HTML+CSS+BOOTSTRAP</a></li>

												<li class="nav-item"><a href="pink-index.html" class="nav-link">MYSQL/SQL</a></li>

												<li class="nav-item"><a href="purple-index.html" class="nav-link active">Spring Boot Project</a></li>
											</ul>
										</li>

                                        <li class="nav-item"><a href="#" class="nav-link">Web Development<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
												<li class="nav-item"><a href="static-image-index.html" class="nav-link">HTML 5</a></li>
												<li class="nav-item"><a href="static-image-index-2.html" class="nav-link">CSS</a></li>
                                                <li class="nav-item"><a href="static-image-index-3.html" class="nav-link">JAVA SCRIPT</a></li>
												<li class="nav-item"><a href="static-image-index-3.html" class="nav-link">BOOTSTRAP</a></li>
											</ul>
										</li>

                                        <li class="nav-item"><a href="#" class="nav-link">Programming Languages<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
												<li class="nav-item"><a href="static-image-index.html" class="nav-link">C</a></li>
												<li class="nav-item"><a href="static-image-index-2.html" class="nav-link">JAVA</a></li>
                                                <li class="nav-item"><a href="static-image-index-3.html" class="nav-link">JAVA SCRIPT</a></li>
                                                <li class="nav-item"><a href="static-image-index-3.html" class="nav-link">PHP</a></li>

											</ul>
										</li>

                                        <li class="nav-item"><a href="#" class="nav-link">Database Design<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
												<li class="nav-item"><a href="static-image-index.html" class="nav-link">SQL</a></li>
												<li class="nav-item"><a href="static-image-index-2.html" class="nav-link">MYSQL</a></li>
                                                <li class="nav-item"><a href="static-image-index-3.html" class="nav-link">Orcle</a></li>
                                                <li class="nav-item"><a href="static-image-index-3.html" class="nav-link">Mongo DB</a></li>

											</ul>
										</li>

                                       <li class="nav-item"><a href="#" class="nav-link">FrameWorks<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
												<li class="nav-item"><a href="machine-learning-index.html" class="nav-link">SPRING BOOT (JAVA)</a></li>
                                                <li class="nav-item"><a href="machine-learning-index.html" class="nav-link">LARAVEL FRAMEWORK (PHP)</a></li>
											</ul>
										</li>

                                        <li class="nav-item"><a href="#" class="nav-link">Software Testing<i data-feather="chevron-right"></i></a>
											<ul class="dropdown_menu">
                                                <li class="nav-item"><a href="machine-learning-index.html" class="nav-link">SELENIUM WEB DRIVER</a></li>

												<li class="nav-item"><a href="machine-learning-index.html" class="nav-link">JAVA</a></li>

                                                <li class="nav-item"><a href="machine-learning-index.html" class="nav-link">AUTOMATION TESTING</a></li>

                                                <li class="nav-item"><a href="machine-learning-index.html" class="nav-link">API</a></li>

                                                <li class="nav-item"><a href="machine-learning-index.html" class="nav-link">API TESTING</a></li>

											</ul>
										</li>


									</ul>
								</li>

								<li class="nav-item"><a href="#" class="nav-link">Buy Projects<i data-feather="chevron-down"></i></a>
									<ul class="dropdown_menu">
                                        <li class="nav-item"><a href="{{ url('website-design-projects') }}" class="nav-link">WEBSITE DESIGN PROJECTS</a></li>
										<li class="nav-item"><a href="blog-2.html" class="nav-link">PHP LARAVEL PROJECTS</a></li>
                                        <li class="nav-item"><a href="blog-1.html" class="nav-link">JAVA PROJECTS</a></li>
									</ul>
								</li>

                                <li class="nav-item"><a href="{{ url('/blog') }}" class="nav-link">Blog</a></li>

								<li class="nav-item"><a href="{{ url('contact') }}" class="nav-link">Contact</a></li>


                                <li class="nav-item"><a href="#" class="nav-link"> Login <i data-feather="user"></i></a>
									<ul class="dropdown_menu">
                                        @guest
                                        <li class="nav-item"><a href="{{ url('/user-signUp') }}" class="nav-link">SignUp</a></li>
                                        <li class="nav-item"><a href="{{ url('/userLogin') }}" class="nav-link">Login</a></li>
                                        @else
                                        <li class="nav-item"><a href="#" class="nav-link">{{ Auth::user()->name }}</a></li>
                                        <li class="nav-item"><a href="{{ url('/UserLogout') }}" class="nav-link">Logout</a></li>

                                        @endguest
                                	</ul>
								</li>
                            </ul>
						</div>
					</nav>
				</div>
			</div>


		</header>
		<!-- End Navbar Area -->
