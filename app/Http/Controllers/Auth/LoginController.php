<?php



namespace App\Http\Controllers\Auth;


use Illuminate\Support\Carbon;
use App\Http\Controllers\Controller;

use Illuminate\Foundation\Auth\AuthenticatesUsers;

use Auth;



class LoginController extends Controller

{

    /*

    |--------------------------------------------------------------------------

    | Login Controller

    |--------------------------------------------------------------------------

    |

    | This controller handles authenticating users for the application and

    | redirecting them to your home screen. The controller uses a trait

    | to conveniently provide its functionality to your applications.

    |

    */



    use AuthenticatesUsers;



    /**

     * Where to redirect users after login.

     *

     * @var string

     */





protected function authenticated($request, $user)

    {
        if($user->usertype==0) {
            $user->update([
                'last_login_at' => Carbon::now()->toDateTimeString(),
                'last_login_ip' => $request->getClientIp()
                 ]);
            return redirect('/admin-home');
        }
        if($user->usertype==1) {
            $user->update([
                'last_login_at' => Carbon::now()->toDateTimeString(),
                'last_login_ip' => $request->getClientIp()
                 ]);
            return redirect('home');
        }
        if($user->usertype==2) {
            $user->update([
                'last_login_at' => Carbon::now()->toDateTimeString(),
                'last_login_ip' => $request->getClientIp()
                 ]);
            return redirect('fulfil-network/fulfillment-center/dashboard');
        }
        if($user->usertype==3) {
            $user->update([
                'last_login_at' => Carbon::now()->toDateTimeString(),
                'last_login_ip' => $request->getClientIp()
                 ]);
            return redirect('farmer-network/dashboard');
        }
         if($user->usertype==4) {
            $user->update([
                'last_login_at' => Carbon::now()->toDateTimeString(),
                'last_login_ip' => $request->getClientIp()
                 ]);
            return redirect('distribution-center/dashboard');
        }



         if($user->usertype==5) {

            return redirect('/hr-department');

        }







        //return redirect()->intended('/path_for_normal_user');

    }

    /**

     * Create a new controller instance.

     *

     * @return void

     */

    public function __construct()

    {

        $this->middleware('guest')->except('logout');

    }

}

