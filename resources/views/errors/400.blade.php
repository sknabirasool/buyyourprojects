@include('paneluser.header')
  <!-- Start 404 Error Area -->
  <div class="error-area">
    <div class="d-table">
        <div class="d-table-cell">
            <div class="container">
                <div class="error-content">
                    <div class="notfound-404">
                        <h1>Oops!</h1>
                    </div>
                    <h3>400 - Bad Request</h3>
                    <p>The page you are looking for might have been removed had its name changed or is temporarily unavailable.</p>
                    <a href="{{ url('/') }}" class="btn btn-primary">Go to Homepage</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End 404 Error Area -->
@include('paneluser.footer')
