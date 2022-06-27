<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function index()
    {
        $categories = DB::table('categories')->get();
        $subcategories = DB::table('subcategories')->get();
        $posts = DB::table('posts')->get();
        $districts = DB::table('districts')->get();
        return view('admin.index', [
            'categories' => $categories,
            'subcategories' => $subcategories,
            'posts' => $posts,
            'districts' => $districts,
        ]);
    }

//    public function sidebar()
//    {
//        $userId = $_COOKIE['userId'];
//        $user = User::find($userId);
//        $user->getPermissionsViaRoles();
//        return view('admin.admin_master', [
//            'user' => $user
//        ]);
//    }

}
