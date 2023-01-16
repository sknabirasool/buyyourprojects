<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function about()
    {
        return view('web.about');
    }
    public function blog()
    {
        return view('web.blog');
    }
    public function blogdetails()
    {
        return view('web.blogdetails');
    }
    public function contact()
    {
        return view('web.contact');
    }

}
