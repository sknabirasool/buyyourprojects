@include('paneladmin.header')

		<!-- Content wrapper scroll start -->
        <div class="content-wrapper-scroll">

            <!-- Content wrapper start -->
            <div class="content-wrapper">

                <!-- Row start -->
                <div class="row gutters">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

                        <div class="card">
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table id="copy-print-csv" class="table v-middle">
                                        <thead>
                                            <tr>
                                                <th>&nbsp;</th>
                                              <th>Customer</th>
                                              <th>Phone</th>
                                              <th>Email</th>
                                              <th>LMS Admin </th>
                                              <th>Status</th>
                                              <th>Actions</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($contentdetails as $data)
                                            <tr>
                                                <td>
                                                    <img src="{{ asset('admin/img/flags/1x1/in.svg')}}" class="img-flag" alt="Country">
                                                </td>
                                              <td>
                                                  <div class="media-box">
                                                      <img src="{{ asset('admin/img/user5.png')}}" class="media-avatar" alt="Customer">
                                                      <div class="media-box-body">
                                                          <a href="#">{{ $data->name }}</a>
                                                          <p>ID: {{ $data->identity_number }}</p>
                                                      </div>
                                                  </div>
                                              </td>
                                              <td>{{ $data->mobile_number }}</td>
                                              <td>{{ $data->email }}</td>
                                              <td>
                                                <div class="actions">
                                                <a href="{{ url('admin-LMS-Subadmin-list/'.$data->id) }}" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">
                                                    <i class="icon-eye1 text-info"></i>
                                                </a>
                                                </div>
                                              </td>

                                              <td>
                                                  <span class="badge bg-success">Active</span>
                                              </td>
                                              <td>
                                                  <div class="actions">
                                                      <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Edit">
                                                          <i class="icon-edit1 text-info"></i>
                                                      </a>
                                                      <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Block">
                                                          <i class="icon-slash text-info"></i>
                                                      </a>
                                                      <a href="#" data-toggle="tooltip" data-placement="top" title="" data-original-title="Delete">
                                                          <i class="icon-x-circle text-danger"></i>
                                                      </a>
                                                  </div>
                                              </td>
                                            </tr>
                                            @endforeach
                                        </tbody>
                                </table>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
                <!-- Row end -->

            </div>
            <!-- Content wrapper end -->
@include('paneladmin.footer')
