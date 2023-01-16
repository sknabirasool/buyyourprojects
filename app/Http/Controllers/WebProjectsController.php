<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class WebProjectsController extends Controller
{
    public function websitedesign()
    {
        return view('webprojects.website-design-projects');
    }
    public function websiteprojectdetails()
    {
        return view('webprojects.website-design-projects-details');
    }

}
