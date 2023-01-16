<?php

namespace App\Http\Controllers;
use App\Mail\AdminWelcome;
use App\User;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use  Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Hash;
use DB;

class UserLoginController extends Controller
{
    public function userSignUP()
    {
        return view('paneluser.user-signUp');
    }

    public function userLogin()
    {
        return view('paneluser.user-login');
    }

    public function UserLoginData(Request $request)
    {
        $user=$request->email;
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        $credentials = $request->only('email', 'password');
        if (Auth::attempt($credentials)) {

            $request->session()->flash('alert-success', 'Welcome to Dashboard, '.$user);
            return redirect("/user-dashboard");
        }


        $request->session()->flash('alert-danger', 'your username and password does not match!');
        return redirect('/userLogin');
    }

    public function UserLogout(){
        Session::flush();
        Auth::logout();

        return Redirect('/');
    }

    public function UserProfileUpdate(Request $request)
    {
         //dd($request->all());
        try{

        $id=$request->id;
        $name=$request->name;
        $phone=$request->mobile_number;
        $college_name=$request->college_name;
        $branch=$request->branch;
        $stream=$request->stream;
        $yop=$request->yop;

        DB::begintransaction();
        $contentdetails=DB::table('users')->where('id',$id)->update(array(

        'name'=>$name,
        'college_name'=>$college_name,
        'mobile_number'=>$phone,
        'branch'=>$branch,
        'stream'=>$stream,
        'yearofpassing'=>$yop

         ));

        DB::commit();
        Session::flash("alert-success",'Successfully Profile Updated');
        return redirect()->to('/user-dashboard');

        }
        catch(\Exception $e)
        {
        DB::rollback();
        \Log::info($e);
        Session::flash("alert-danger",'Failed to Updated');
        return redirect()->to('/user-dashboard');
        }
    }


    public function UserSignUpData(Request $request)
    {
       //dd($request->all());
       $request->validate([
        'name'=>'required',
        'email'=> 'required|unique:users',
        'password' => 'required|confirmed|min:6'
    ]);
    $username=$request->name;
    $email=$request->email;
    $password=Hash::make($request->password);

    $data=User::create([
        'name'=>$username,
        'email'=>$email,
        'password'=>$password,
        'usertype'=>3
    ]);
    Mail::to($email)->send(new AdminWelcome($data));
    \LogActivity::addToLog('Account Successfully Created.');
    return  redirect('/userLogin');
    }

        public function UserDashboard()
        {
            return view('paneluser.user-dashboard');
        }

}
