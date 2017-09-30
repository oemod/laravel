<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests\UserRequest;
use App\User;
use Hash;
use Auth;

class UserController extends Controller
{
	public function getAdd()
	{	
		return view('admin.user.add');
	}

	public function postAdd(UserRequest $request)
	{

		$user = new User();
		$user->username = $request->txtUser;
		$user->password = Hash::make($request->txtPass);
		$user->email = $request->txtEmail;
		$user->level = $request->rdoLevel;
		$user->remember_token = $request->_token;
		$user->save();
		return redirect()->route('admin.user.list')->with(['flash_level'=>'success','flash_message'=>'Success !! Complate Add User']);
	}

	public function getList()
	{
		$user = User::select('id','username','level')->orderBy('id','DESC')->get()->toArray();
		return view('admin.user.list',compact('user'));
	}

	public function getDelete($id)
	{
		$user_current_login = Auth::user()->id;
		$user = User::find($id);
		if (($id == 3) || ($user_current_login != 3 && $user["level"] == 1 )) {
			return redirect()->route('admin.user.list')->with(['flash_level'=>'danger','flash_message'=>'Không được xóa user']);
		} else {
			$user->delete($id);
			return redirect()->route('admin.user.list')->with(['flash_level'=>'danger','flash_message'=>'Xóa thành công']);
		}
	}

	public function getEdit($id)
	{
		$data = User::find($id);
		if ((Auth::user()->id != 3) && ($id == 3 || ($data["level"] == 1 &&(Auth::user()->id != $id)))) {
			return redirect()->route('admin.user.list')->with(['flash_level'=>'danger','flash_message'=>'Bạn không có quyền sửa']);
		}
		return view('admin.user.edit',compact('data','id'));

	}
	
	public function postEdit($id,Request $request)
	{	
		$user = User::find($id);
		if ($request->input('txtPass')) {
			$this->validate($request,
				[
					'txtRePass' => 'same:txtRePass'
				],
				[
					'txtRePass.same' => '2 password không giống nhau'
				]
			);
			$pass = $request->input('txtPass');
			$user->password = Hash::make($pass);
		}
		$user->level = $request->rdoLevel;
		$user->email = $request->txtEmail;
		$user->remember_token = $request->input('_token');
		$user->save();
		return redirect()->route('admin.user.list')->with(['flash_level'=>'danger','flash_message'=>'Cập nhập user thành công']);
	}	
}