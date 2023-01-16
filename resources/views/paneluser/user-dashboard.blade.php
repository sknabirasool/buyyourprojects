@include('paneluser.header')

<div class="page-title-area">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <h2>Welcome back, {{ Auth::user()->name }}</h2>
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
   <!-- Start Checkout Area -->
   <div class="checkout-area ptb-80">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                <div class="flash-message">
                    @foreach (['danger', 'warning', 'success', 'info'] as $msg)
                      @if(Session::has('alert-' . $msg))

                      <h3 style="text-align:left" class="alert alert-{{ $msg }}">{{ Session::get('alert-' . $msg) }} <a href="#" class="btn-close" data-bs-dismiss="alert" aria-label="close">&times;</a></h3>
                      @endif
                    @endforeach
                  </div>

                <div class="user-actions">
                    <i data-feather="edit"></i>
                    <span>Please update your profile details we will get back you soon!</a></span>
                </div>
            </div>
        </div>


            <div class="row">
                <div class="col-lg-5 col-md-12">
                    <div class="billing-details">
                        <h3 class="title">personal Details</h3>
                        <form action="{{ url('/user-profile-update') }}" method="post" id="loginpassword">
                            @csrf
                            <input type="hidden" name="id" value="{{ Auth::user()->id }}">
                              <div class="row">
                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>Email Address <span class="required">*</span></label>
                                    <input type="email" class="form-control" name="email" value="{{ Auth::user()->email }}" disabled>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>First Name <span class="required">*</span></label>
                                    <input type="text" name="name" class="form-control" value="{{ Auth::user()->name }}" >
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>Mobile Number <span class="required">*</span></label>
                                    <input type="text" name="mobile_number" class="form-control" value="{{ Auth::user()->mobile_number }}">
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>College Name</label>
                                    <input type="text"name="college_name" class="form-control" placeholder="College Name" value="{{ Auth::user()->college_name }}">
                                </div>
                            </div>

                             <div class="col-lg-12 col-md-12">
                                <div class="form-group">
                                    <label>Branch <span class="required">*</span></label>

                                    <div class="select-box" >
                                        <select class="form-select" name="branch">
                                            <option value="B.E/B.Tech">B.E/B.Tech</option>
                                            <option value="M.Tech">M.Tech</option>
                                            <option value="BCA">BCA</option>
                                            <option value="MCA">MCA</option>
                                            <option value="Other">other</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>Stream</label>
                                    <input type="text"  name="stream" class="form-control" name="stream" placeholder="Stream" value="{{ Auth::user()->stream }}">
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6">
                                <div class="form-group">
                                    <label>Year of Passing  <span class="required">*</span></label>
                                    <input type="text"  name="yop" class="form-control" name="yop" placeholder="Year of Passing" value="{{ Auth::user()->yearofpassing }}">
                                </div>
                            </div>
                            <button  type="submit" class="btn btn-primary order-btn">Update Profile</button>

                        </form>
                        </div>
                    </div>
                </div>

                <div class="col-lg-5 col-md-12">
                    <div class="order-details">
                        <h3 class="title">Your Order</h3>

                        <div class="order-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Total</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">Smart Watch</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">TV</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">Book</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">Smart Watch</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">TV</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-name">
                                            <a href="#">Book</a>
                                        </td>

                                        <td class="product-total">
                                            <span class="subtotal-amount">$30.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="order-subtotal">
                                            <span>Cart Subtotal</span>
                                        </td>

                                        <td class="order-subtotal-price">
                                            <span class="order-subtotal-amount">$210.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="order-shipping">
                                            <span>Shipping</span>
                                        </td>

                                        <td class="shipping-price">
                                            <span>$5.00</span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="total-price">
                                            <span>Order Total</span>
                                        </td>

                                        <td class="product-subtotal">
                                            <span class="subtotal-amount">$215.00</span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="payment-method">
                            <p>
                                <input type="radio" id="direct-bank-transfer" name="radio-group" checked>
                                <label for="direct-bank-transfer">Direct Bank Transfer</label>

                                Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.
                            </p>
                            <p>
                                <input type="radio" id="paypal" name="radio-group">
                                <label for="paypal">PayPal</label>
                            </p>
                            <p>
                                <input type="radio" id="cash-on-delivery" name="radio-group">
                                <label for="cash-on-delivery">Cash on Delivery</label>
                            </p>
                        </div>

                        <a href="#" class="btn btn-primary order-btn">Place Order</a>
                    </div>
                </div>
            </div>

    </div>
</div>
<!-- End Checkout Area -->

@include('paneluser.footer')
