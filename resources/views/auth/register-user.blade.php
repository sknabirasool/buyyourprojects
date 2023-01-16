@include('paneluser.header')
<!-- Main content Start -->
<div class="main-content">
    <!-- Breadcrumbs Start -->
    <div class="breadcrumb-area shadow dark text-center bg-fixed text-light" style="background-image: url(assets/img/banner/21.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>About Us</h1>
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                        <li><a href="#">Page</a></li>
                        <li class="active">About</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadcrumb -->


    <!-- Register Section -->
    <section class="register-section pt-100 pb-200">
        <div class="container">
            <div class="register-box">

                <div class="sec-title text-center mb-30">
                    <h2 class="title mb-10">Create New Account</h2>
                </div>

                <!-- Login Form -->
                <div class="styled-form text-center" >
                    <div id="form-messages"></div>
                    <form id="" method="post" action="{{ url('add-register-data') }}">
                        @csrf
                        <div class="row clearfix">
                            <!-- Form Group -->
                            <div class="form-group col-lg-12 mb-25">
                                <input type="text" id="Name" name="name" value="" placeholder="First Name" required>
                            </div>
                             <!-- Form Group -->
                            <div class="form-group col-lg-12">
                                <input type="email" id="email" name="email" value="" placeholder="Email address " required>
                            </div>

                            <!-- Form Group -->
                            <div class="form-group col-lg-12">
                                <input type="text" id="user" name="phonenumber" value="" placeholder="Phone Number" required>
                            </div>
                            <!-- Form Group -->
                            <div class="form-group col-lg-12">
                                <input type="text" id="puser" name="password" value="" placeholder="Password" required>
                            </div>
                            <!-- Form Group -->
                            <div class="form-group col-lg-12">
                                <input type="text" id="Confirm" name="password_confirmation" value="" placeholder="Confirm Password" required>
                            </div>

                            <div class="form-group col-lg-12 col-md-12 col-sm-12 text-center">
                                <button type="submit" class="btn btn-dark border btn-md"><span class="txt">Sign Up</span></button>
                            </div>


                        </div>

                    </form>
                </div>

            </div>
        </div>
    </section>
    <!-- End Login Section -->

</div>
<!-- Main content End -->

@include('paneluser.footer')
