<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\LoginRequest;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use App\User;
use Hash;
use Auth;


class LoginController extends Controller
{
	public function getLogin()
	{
		return view('admin.login');
	}

	public function postLogin(LoginRequest $request)
	{
		$login = array(
			'username' => $request->user,
			'password' => $request->password,
			'level' => 1
		);
		if(Auth::attempt($login)){
			return redirect()->route('admin.user.list');
		} else {
			return redirect()->back();
		}
	}

}	