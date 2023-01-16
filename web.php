<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


//website Urls
Route::get('/', function () {
    return view('welcome');
});

//logactivity urls for activity
Route::get('add-to-log', 'DashBoardController@myTestAddToLog');
Route::get('logActivity', 'DashBoardController@logActivity');


//website user login
Route::get('/user-signUp','UserLoginController@userSignUP');
Route::post('/create-user-account','UserLoginController@UserSignUpData');
Route::get('/userLogin','UserLoginController@userLogin');
Route::post('/web-user-login','UserLoginController@UserLoginData');
Route::get('/user-dashboard','UserLoginController@UserDashboard');
Route::get('UserLogout','UserLoginController@UserLogout');
Route::post('/user-profile-update','UserLoginController@UserProfileUpdate');

Route::get('/about','WebsiteController@about');
Route::get('/blog','WebsiteController@blog');
Route::get('/blog-details','WebsiteController@blogdetails');
Route::get('/contact','WebsiteController@contact');

//buy projects url
Route::get('/website-design-projects','WebProjectsController@websitedesign');
Route::get('/website-design-project-details','WebProjectsController@websiteprojectdetails');


//javafullstack url
Route::get('javafullstack/java','JavafullstackController@javaprogramming');





//Admin Dashboard Urls
Route::get('/admin-home', function () {
    $user=Auth::id();
    $contentdetails=DB::table('users')->where('id',$user)->get();
    return view('backend.admin-home',compact('contentdetails'));
});
Route::get('/sign-up','DashBoardController@signUp');
Route::post('/create-account','DashBoardController@CreateAccount');
Route::get('/login','DashBoardController@login');
Route::post('/login-admin-panel','DashBoardController@loginAdmin');
Route::get('/admin-dashboard-home','DashBoardController@adminHome');
Route::get('/logout', 'DashBoardController@signout');
Route::get('/admin-change-password', 'DashBoardController@ChangePassword');
Route::post('/admin-change-password-data', 'DashBoardController@ChangePasswordData');
Route::get('admin-profile','DashBoardController@profile');
Route::get('admin-settings','DashBoardController@profilesettings');

Route::get('admin-login-users','DashBoardController@adminloginusers');

//super admin create sub admin ex:website admin,lms admin creation urls
Route::get('/superadmin-create-sub-admin','DashBoardController@superadmincreatesubadmin');
Route::post('/subadmin-login-data','DashBoardController@SubadminLoginData');
Route::get('admin-website-Sub-admin-list/{id}','DashBoardController@adminwebsiteSubadminlist');
Route::get('admin-LMS-login-users','DashBoardController@LMSadmins');
Route::get('admin-LMS-Subadmin-list/{id}','DashBoardController@LMSsubAdmins');





//web sub admin create
Route::get('/add-website-subadmin','WebsiteAdminController@WebsitesubAdmin');
Route::post('/add-website-subadmin-login-data','WebsiteAdminController@WebsitesubAdmindata');
Route::get('website-subadmin-list','WebsiteAdminController@websiteAdminList');





//LMS ADMIN LIST backend url
Route::get('/add-LMS-subadmin','LmsAdminController@addLMSsubadmin');
Route::post('/add-lms-subadmin-login-data','LmsAdminController@addLMSsubadmindata');



