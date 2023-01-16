@include('paneladmin.header')
	<!-- Content wrapper scroll start -->
    <div class="content-wrapper-scroll">

        <!-- Content wrapper start -->
        <div class="content-wrapper">

            <!-- Row start -->
            <div class="row gutters">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                    @if ($errors->any())
                    <div class="btn btn-danger add-danger-noti">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                    <!-- Card start -->
                    <div class="card">
                        <div class="card-body">
                            <!-- Row start -->
                            <div class="row gutters">
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-4 col-12">
                                    <div class="form-section-header">Account Personal Information</div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">
                     <form action="{{ url('/add-website-subadmin-login-data') }}" method="post" id="loginpassword">
                        @csrf
                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" type="text"  name="name" required>
                                            <span class="input-group-text">
                                                <i class="icon-user1"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Full Name <span class="text-danger">*</span></div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" name="email" type="email" required>
                                            <span class="input-group-text">
                                                <i class="icon-email"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Email Address <span class="text-danger">*</span></div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" name="mobile_number" type="number" maxlength="10" required>
                                            <span class="input-group-text">
                                                <i class="icon-phone1"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Phone Number</div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>

                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-4 col-12">
                                    <div class="form-section-header">Business Address</div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" type="text" name="address" required>
                                            <span class="input-group-text">
                                                <i class="icon-map-pin"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Street Address</div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" name="city" type="text" name="city" required>
                                            <span class="input-group-text">
                                                <i class="icon-map"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">City</div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" name="pincode" type="text" name="pincode" required>
                                            <span class="input-group-text">
                                                <i class="icon-edit-2"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Postal Code</div>
                                    </div>
                                    <!-- Field wrapper end -->
                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-4 col-12">
                                    <div class="form-section-header">Add Privileges </div>
                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-12">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="input-group">
                                            <input class="form-control" name="password" type="password" name="pincode" required>
                                            <span class="input-group-text">
                                                <i class="icon-edit-2"></i>
                                            </span>
                                        </div>
                                        <div class="field-placeholder">Password</div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>

                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <select class="form-control" name="adminusertype" required>
                                            <option value="">Select Admin Type</option>
                                            <option value="4">WEB Sub Admin</option>
                                        </select>
                                        <div class="field-placeholder">Usertype <span class="text-danger">*</span></div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-4 col-4">

                                    <!-- Field wrapper start -->
                                    <div class="field-wrapper">
                                        <div class="checkbox-container">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="communication[]" type="checkbox" id="chcekEmail" value="email">
                                                <label class="form-check-label" for="chcekEmail">Email</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="communication[]" type="checkbox" id="checkSms" value="SMS">
                                                <label class="form-check-label" for="checkSms">SMS</label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="communication[]" type="checkbox" id="checkPhone" value="Phone">
                                                <label class="form-check-label" for="checkPhone">Phone</label>
                                            </div>
                                            <div class="field-placeholder">Communication</div>
                                        </div>
                                    </div>
                                    <!-- Field wrapper end -->

                                </div>
                                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                    <button type="submit" class="btn btn-primary" >Submit</button>
                                </div>
                            </div>
                            <!-- Row end -->

                        </div>
                    </div>
                    <!-- Card end -->
                </form>
                </div>
            </div>
            <!-- Row end -->

        </div>
        <!-- Content wrapper end -->

@include('paneladmin.footer')
