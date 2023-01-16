@include('paneluser.header')
      <!-- Start Page Title -->
      <div class="page-title-area">
        <div class="d-table">
            <div class="d-table-cell">
                <div class="container">
                    <h2>Register</h2>
                </div>
            </div>
        </div>

        <div class="shape1"><img src="{{ asset('web/assets/img/shape1.png')}}" alt="shape"></div>
    <div class="shape2 rotateme"><img src="{{ asset('web/assets/img/shape2.svg')}}" alt="shape"></div>
    <div class="shape3"><img src="{{ asset('web/assets/img/shape3.svg')}}" alt="shape"></div>
    <div class="shape4"><img src="{{ asset('web/assets/img/shape4.svg')}}" alt="shape"></div>
    <div class="shape5"><img src="{{ asset('web/assets/img/shape5.png')}}" alt="shape"></div>
    <div class="shape6 rotateme"><img src="{{ asset('web/assets/img/shape4.svg')}}" alt="shape"></div>
    <div class="shape7"><img src="{{ asset('web/assets/img/shape4.svg')}}" alt="shape"></div>
    <div class="shape8 rotateme"><img src="{{ asset('web/assets/img/shape2.svg')}}" alt="shape"></div>
    </div>
    <!-- End Page Title -->

    <!-- Start Register Area -->
    <div class="ptb-80">
        <div class="container">
            <div class="auth-form">
                <div class="auth-head">
                    <a href="index.html">
                        <img src="{{ asset('web/assets/img/logo.png')}}">
                    </a>
                    <p>Create a new account</p>
                </div>
                <form action="{{ url('/create-user-account') }}" method="post" id="loginpassword">
                    <input type="hidden" name="_token" id="csrf-token" value="{{ Session::token() }}" />

                    <div class="mb-3">
                        <label class="form-label">User Name</label>
                        <input type="text" name="name" class="form-control">
                    </div>

                    <div class="mb-3">
                        <label class="form-label">E-mail</label>
                        <input type="email" name="email" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Confirm Password</label>
                        <input type="password"  name="password_confirmation" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                </form>
                <div class="foot">
                    <p>Already have an account yet? <a href="{{ url('userLogin') }}">Login</a></p>
                </div>
            </div>
        </div>
    </div>
    <!-- End Register Area -->
@include('paneluser.footer')
