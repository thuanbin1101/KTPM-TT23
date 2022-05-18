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

    public function checkEmail(Request $request): bool
    {
        if (DB::table('users')->where('email', $request->input('email'))->first()) {
            return true;
        }
        return false;
    }

    public function testImage(Request $request)
    {
        dd(AdminController::class);
    }
}
