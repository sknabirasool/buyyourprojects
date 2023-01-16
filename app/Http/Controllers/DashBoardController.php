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
use Illuminate\Support\Facades\Redis;

class DashBoardController extends Controller
{
    //subadmin login
    public function superadmincreatesubadmin()
    {
        return view('paneladmin.superadmin-create-subadmin');
    }

    public function SubadminLoginData(Request $request)
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

    public function adminloginusers()
    {
        $contentdetails=DB::table('users')->whereIn('usertype', [3])->get();
        return view('paneladmin.admin-login-users',compact('contentdetails'));
    }

    public function LMSadmins()
    {
        $contentdetails=DB::table('users')->where('usertype',2)->get();
        return view('paneladmin.Lms-login-users',compact('contentdetails'));
    }

    public function LMSsubAdmins($id)
    {
        $contentdetails=DB::table('users')->where('lmsadmin_id',$id)->get();
        return view('paneladmin.Lms-subadmin-users',compact('contentdetails'));

    }

    public function adminwebsiteSubadminlist($id)
    {
        $contentdetails=DB::table('users')->where('webadmin_id',$id)->get();
        return view('paneladmin.website-subadmin-list',compact('contentdetails'));
    }

      public function updatemyprofile(Request  $request)
    {
        //dd($request->all());

        try{
            $id=$request->id;
        $name=$request->name;
        $email=$request->email;
        $address=$request->address;
        $phone=$request->phone;

        DB::begintransaction();
        $contentdetails=DB::table('users')->where('id',$id)->update(array(

        'name'=>$name,
        'email'=>$email,
        'branch_address'=>$address,
        'mobile_number'=>$phone,
        'user_profile'=>$imagenames
         ));

        DB::commit();
        Session::flash("alert-success",'Successfully Profile Updated');
        return redirect()->to('/my-profile');

        }
        catch(\Exception $e)
        {
        DB::rollback();
        \Log::info($e);
        Session::flash("alert-danger",'Failed to Updated');
        return redirect()->to('/');
        }

    }


    public function signUp()
    {
        return view('backend.sing-up');
    }

    public function CreateAccount(Request $request)
    {
       //dd($request->all());
       $request->validate([
        'name'=>'required',
        'email'=> 'required|unique:users',
        'password' => 'required|confirmed|min:6'
    ]);

    $lastOrder =DB::table('users')->where('usertype', 2)->orderBy('identity_number','desc')->first();
    if ( !$lastOrder)
    $number = 0;
    else
    $number = substr($lastOrder->identity_number, 3);
    $orderid='BP' . sprintf('%03d', intval($number) + 1);

    $username=$request->name;
    $email=$request->email;
    $password=Hash::make($request->password);

    $data=User::create([
        'name'=>$username,
        'email'=>$email,
        'password'=>$password,
        'identity_number'=>$orderid,
        'usertype'=>2
    ]);
    Mail::to($email)->send(new AdminWelcome($data));
    return  redirect('/login');
    }



    public function login()
    {
        return view("auth.login");
    }

    public function loginAdmin(Request $request)
    {
        $user=$request->email;
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {

            $request->session()->flash('alert-success', 'Welcome to Dashboard, '.$user);
            return redirect("/admin-home");
        }


        $request->session()->flash('alert-danger', 'your username and password does not match!');
        return redirect('/login');

    }

    public function adminHome()
    {
        return view('admin.admin-dash-home');
    }

    public function signout(){
        Session::flush();
        Auth::logout();

        return Redirect('/login');
    }


    public function ChangePassword()
    {
        return view('admin.admin-password-change');
    }

    public function profile()
    {
        $user=Auth::id();

        $contentdetails=DB::table('users')->where('id',$user)->get();
        return view('backend.profile',compact('contentdetails'));
    }

    public function profilesettings()
    {
        $user=Auth::id();
        $contentdetails=DB::table('users')->where('id',$user)->get();
        return view('backend.admin-settings',compact('contentdetails'));

    }

    public function ChangePasswordData(Request $request)
    {
        // dd($request->all());
        $this->validate($request,[
            'password'=>'required|min:6',
            'new_password'=>'required|min:6',
        ]);

       $id=Auth::id();
       $new=Hash::make($request->new_password);
        if(Hash::check($request->password, Auth::user()->password))
        {
            $contentdetails=DB::table('users')->where('id',$id)->update(array(
                'password'=>$new
            ));
            Session::flash("alert-success",'Profile Password Changed Successfully');
            return redirect()->to('/admin-change-password');
        }
        else{
            Session::flash("alert-danger",'Failed to Change profile password');
            return redirect()->to('/admin-change-password');
        }

    }


    public function myTestAddToLog()
    {
        \LogActivity::addToLog('My Testing Add To Log.');
        dd('log insert successfully.');
    }


    public function logActivity()
    {
        $logs = \LogActivity::logActivityLists();
        return view('logActivity',compact('logs'));
    }
}
