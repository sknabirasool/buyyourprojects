<?php

namespace App\Http\Controllers;
use App\Mail\AdminWelcome;
use App\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;
use  Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;

class LmsAdminController extends Controller
{
    //
    public function addLMSsubadmin()
    {
        return view('LmsAdmin.add-lms-subadmin');
    }

    public function addLMSsubadmindata(Request $request)
    {
        $this->validate($request,[

            'mobile_number'=>'required|min:10',
            'email'=>'required|email|string|unique:users',
            'password'=>'required|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$/',
         ]);

      // dd($request->all());
        $authid=Auth::user()->id;

        $name =$request->name;
        $email =$request->email;
        $mobile_number = $request->mobile_number;
        $address=$request->address;
        $state=$request->state;
        $city=$request->city;
        $pincode=$request->pincode;
        $password=Hash::make($request->password);
        $adminusertype=$request->adminusertype;

        $communication=implode(',', $request->communication);

        $data=User::create([
            'name'=>$name,
            'email'=>$email,
            'mobile_number'=>$mobile_number,
            'address'=>$address,
            'password'=>$password,
            'state'=>$state,
            'city'=>$city,
            'pincode'=>$pincode,
            'communication'=>$communication,
            'usertype'=>$adminusertype,
            'lmsadmin_id'=>$authid
        ]);
        // Mail::to($email)->send(new AdminWelcome($data));
        return  redirect('/admin-home');

    }
}
