@include('paneluser.header')
  <!-- Start Page Title -->
  <div class="page-title-area">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <h2>Website Design Projects</h2>
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

<!-- Start ML Projects Area -->
<div class="ml-projects-area ptb-80">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img1.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="{{ url('website-design-project-details') }}">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img2.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img3.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img4.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img5.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img6.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img7.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-sm-6 col-md-6">
                <div class="single-ml-projects-box">
                    <img src="{{ asset('web/assets/img/projects-img8.jpg')}}" alt="image">

                    <div class="plus-icon">
                        <a href="#">
                            <span></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End ML Projects Area -->

@include('paneluser.footer')
