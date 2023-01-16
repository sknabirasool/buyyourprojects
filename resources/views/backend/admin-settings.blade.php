@include('paneladmin.header')
	<!-- Content wrapper scroll start -->
    <div class="content-wrapper-scroll">


        @foreach ($contentdetails as $data)

        @endforeach
        <!-- Content wrapper start -->
        <div class="content-wrapper">

            <!-- Row start -->
            <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                    <!-- Card start -->
                    <div class="card">
                        <div class="card-header-lg">
                            <h4>Account Settings</h4>
                        </div>
                        <div class="card-body">

                            <div class="row gutters">
                                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-12">
                                    <div class="row gutters">
                                        <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
                                            <img src="{{asset('admin/img/user1.png')}}" class="img-fluid change-img-avatar" alt="Image">
                                        </div>

                                        <div class="col-xl-8 col-lg-8 col-md-8 col-sm-8 col-12">
                                            <div id="dropzone-sm" class="mb-4">
                                                <form action="demo.java" method="post" class="dropzone needsclick dz-clickable" id="demo-upload">
                                                    @csrf
                                                    <div class="dz-message needsclick mb-3">
                                                        <input type="file" required>
                                                    </div>
                                                    <div class="dz-message needsclick">
                                                        <button class="btn btn-primary mb-3">Upload</button>
                                                    </div>
                                                </form>
                                            </div>
                                         </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">

                                            <form method="post" action="hello.java">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="Name" value="{{ $data->name }}">
                                                <div class="field-placeholder">First  Name</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="Winter">
                                                <div class="field-placeholder">Last  Name</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="admin@gmail.com" value="{{ $data->email }}">
                                                <div class="field-placeholder">Email</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="123-456-7890" value="{{ $data->mobile_number }}">
                                                <div class="field-placeholder">Phone</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="Bangalore 550037" value="{{ $data->address }}">
                                                <div class="field-placeholder">Address</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="Bangalore" value="{{ $data->city }}">
                                                <div class="field-placeholder">City</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="State" value="{{ $data->state }}" >
                                                <div class="field-placeholder">State</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="text" class="form-control" placeholder="11789" value="{{ $data->pincode }}">
                                                <div class="field-placeholder">Zip Code</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>

                                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <!-- Field wrapper start -->
                                            <div class="field-wrapper">
                                                <input type="password" class="form-control" placeholder="Enter Password">
                                                <div class="field-placeholder">Password</div>
                                            </div>
                                            <!-- Field wrapper end -->
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
                                    <div class="account-settings-block">
                                        <div class="settings-block">
                                            <div class="settings-block-title">Change Plan</div>
                                            <div class="settings-block-body">
                                                <div class="pricing-chnage-plan">
                                                    <a href="#" class="active-plan">
                                                        <h5>$29</h5>
                                                        <h6>Basic</h6>
                                                    </a>
                                                    <a href="#">
                                                        <h5>$59</h5>
                                                        <h6>Business</h6>
                                                    </a>
                                                    <a href="#">
                                                        <h5>$99</h5>
                                                        <h6>Enterprise</h6>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="settings-block">
                                            <div class="settings-block-title">Other Settings</div>
                                            <div class="settings-block-body">
                                                <div class="list-group">
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show desktop notifications</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showNotifications">
                                                            <label class="form-check-label" for="showNotifications"></label>
                                                        </div>
                                                    </div>
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show email notifications</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showEmailNotifications" checked>
                                                            <label class="form-check-label" for="showEmailNotifications"></label>
                                                        </div>
                                                    </div>
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show chat notifications</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showChatNotifications">
                                                            <label class="form-check-label" for="showChatNotifications"></label>
                                                        </div>
                                                    </div>
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show purchase history</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showPurchaseNotifications">
                                                            <label class="form-check-label" for="showPurchaseNotifications"></label>
                                                        </div>
                                                    </div>
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show orders</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showOrders">
                                                            <label class="form-check-label" for="showOrders"></label>
                                                        </div>
                                                    </div>
                                                    <div class="list-group-item d-flex justify-content-between align-items-center">
                                                        <div>Show alerts</div>
                                                        <div class="form-switch">
                                                            <input class="form-check-input" type="checkbox" id="showAlerts">
                                                            <label class="form-check-label" for="showAlerts"></label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <button type="submit" class="btn btn-primary mb-3">Save Settings</button>
                                </div>
                            </div>
                        </form>
                        </div>
                    </div>
                    <!-- Card end -->

                </div>
            </div>
            <!-- Row end -->

        </div>
        <!-- Content wrapper end -->

@include('paneladmin.footer')
