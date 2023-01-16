<?php

namespace App\Http\Middleware;
use Illuminate\Session\Store;
use Illuminate\Http\Request;

use Closure;

class AutoLogout
{

    protected $session;
    protected $timeout = 12;

    public function __construct(Store $session)
    {
        $this->session = $session;
    }
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $is_logged_in = $request->path() != 'UserLogout';

        if(!session('last_active')) {
            $this->session->put('last_active', time());
        } elseif(time() - $this->session->get('last_active') > $this->timeout) {

            $this->session->forget('last_active');

            $cookie = cookie('intend', $is_logged_in ? url()->current() : 'dashboard');

            auth()->logout();
        }

        $is_logged_in ? $this->session->put('last_active', time()) : $this->session->forget('last_active');

        return $next($request);
    }

}
