<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
class AdminController extends Controller
{
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login')->with('success', 'User logout');
    }
    public function checkEmail(Request $request)
    {
        $request->validate(
            [
                'email' => 'required|email'
            ],
            [
                'required' => 'Chưa nhập email'
            ]
        );
        $email = $request->input('email');
        $row = DB::table('users')->where('email', $email)->first();
        if ($row) {
            echo "1";
        } else {
            echo "0";
        }
    }
    public function testImage(Request $request){
        dd(AdminController::class);
    }
}
