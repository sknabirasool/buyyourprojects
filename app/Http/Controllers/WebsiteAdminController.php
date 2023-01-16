<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use DB;
use App\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Auth;
class WebsiteAdminController extends Controller
{
    //
    public function WebsitesubAdmin()
    {
        return view('WebAdmin.add-Website-subAdmin');
    }

    public function WebsitesubAdmindata(Request $request)
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
            'webadmin_id'=>$authid
        ]);
        // Mail::to($email)->send(new AdminWelcome($data));
        return  redirect('/admin-home');
    }

    public function websiteAdminList()
    {
        $authid=Auth::id();
        $contentdetails=DB::table('users')->where('webadmin_id',$authid)->get();
        return view('WebAdmin.website-subadmin-list',compact('contentdetails'));
    }
}
