<!-- Start Footer Area -->
<footer class="footer-area bg-f7fafd">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <div class="logo black-logo">
                        <a href="index.html"> BuyYourProjects <i data-feather="code"></i></a>
                    </div>
                    <div class="logo white-logo">
                        <a href="index.html"> BuyYourProjects <i data-feather="code"></i></a>
                    </div>
                    <p>Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis.</p>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget pl-5">
                    <h3>Company</h3>
                    <ul class="list">
                        <li><a href="about-1.html">About Us</a></li>
                        <li><a href="services-1.html">Services</a></li>
                        <li><a href="features.html">Features</a></li>
                        <li><a href="{{ url('sign-up') }}">Admin SignUp</a></li>
                        <li><a href="{{ url('/login') }}">Admin Login</a></li>

                        </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h3>Support</h3>
                    <ul class="list">
                        <li><a href="faq.html">FAQ's</a></li>
                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                        <li><a href="terms-conditions.html">Terms & Condition</a></li>
                        <li><a href="contact.html">Support Us</a></li>
                        <li><a href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="single-footer-widget">
                    <h3>Address</h3>

                    <ul class="footer-contact-info">
                        <li><i data-feather="map-pin"></i> 27 Division St, New York, NY 10002, USA</li>
                        <li><i data-feather="phone-call"></i> Phone: <a href="tel:+ (321) 984 754">+ (321) 984 754</a></li>
                    </ul>
                    <ul class="social-links">
                        <li><a href="#" class="facebook" target="_blank"><i data-feather="facebook"></i></a></li>
                        <li><a href="#" class="twitter" target="_blank"><i data-feather="twitter"></i></a></li>
                        <li><a href="#" class="instagram" target="_blank"><i data-feather="instagram"></i></a></li>
                        <li><a href="#" class="linkedin" target="_blank"><i data-feather="linkedin"></i></a></li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-12 col-md-12">
                <div class="copyright-area">
                    <p>Copyright @<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear())</script> StartP. All Rights Reserved by <a href="https://envytheme.com/" target="_blank">EnvyTheme</a></p>
                </div>
            </div>
        </div>
    </div>

    <img src="{{ asset('web/assets/img/map.png')}}" class="map" alt="map">
    <div class="shape1"><img src="{{ asset('web/assets/img/shape1.png')}}" alt="shape"></div>
    <div class="shape8 rotateme"><img src="{{ asset('web/assets/img/shape2.svg')}}" alt="shape"></div>
</footer>
<!-- End Footer Area -->

<div class="go-top"><i data-feather="arrow-up"></i></div>

<!-- Dark/Light Toggle -->
<div class="dark-version">
    <label id="switch" class="switch">
        <input type="checkbox" onchange="toggleTheme()" id="slider">
        <span class="slider round"></span>
    </label>
</div>

<!-- All JS Link -->
<script src="{{asset('web/assets/js/jquery.min.js')}}"></script>
<script src="{{asset('web/assets/js/bootstrap.bundle.min.js')}}"></script>
<script src="{{asset('web/assets/js/meanmenu.min.js')}}"></script>
<script src="{{asset('web/assets/js/wow.min.js')}}"></script>
<script src="{{asset('web/assets/js/magnific-popup.min.js')}}"></script>
<script src="{{asset('web/assets/js/appear.min.js')}}"></script>
<script src="{{asset('web/assets/js/odometer.min.js')}}"></script>
<script src="{{asset('web/assets/js/slick.min.js')}}"></script>
<script src="{{asset('web/assets/js/imagesloaded.pkgd.min.js')}}"></script>
<script src="{{asset('web/assets/js/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('web/assets/js/owl.carousel.min.js')}}"></script>
<script src="{{asset('web/assets/js/feather.min.js')}}"></script>
<script src="{{asset('web/assets/js/form-validator.min.js')}}"></script>
<script src="{{asset('web/assets/js/contact-form-script.js')}}"></script>
<script src="{{asset('web/assets/js/main.js')}}"></script>
</body>

</html>
