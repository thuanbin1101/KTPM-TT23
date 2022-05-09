<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;

class ExtraController extends Controller
{
    public function Vietnamese()
    {
        Session::get('lang');
        Session()->forget('lang');
        Session()->put('lang', 'vn');
        return redirect()->back();
    }
    public function English()
    {
        Session::get('lang');
        Session()->forget('lang');
        Session()->put('lang', 'eng');
        return redirect()->back();
    }
    public function singlePost($id)
    {
        $post = DB::table('posts')
            ->join('categories', 'posts.category_id', 'categories.id')
            ->join('subcategories', 'posts.subcategory_id', 'subcategories.id')
            ->join('users', 'posts.user_id', 'users.id')
            ->select('posts.*', 'categories.category_en', 'categories.category_vn', 'subcategories.subcategory_en', 'subcategories.subcategory_vn', 'users.name')
            ->where('posts.id', $id)
            ->first();
        return view('main.single_post', compact('post'));
    }
    public function catePost($id, $category_en)
    {
        $catePosts = DB::table('posts')->where('category_id', $id)->orderBy('id', 'DESC')->paginate(5);
        return view('main.allpost', compact('catePosts'));
    }
    public function subcatePost($id, $subcategory_en)
    {
        $subcatePosts = DB::table('posts')->where('subcategory_id', $id)->orderBy('id', 'DESC')->paginate(5);
        return view('main.allpost', compact('subcatePosts'));
    }
    public function getSubDistrict($district_id)
    {
        $sub = DB::table('subdistricts')->where('district_id', $district_id)->get();
        return response()->json($sub);
    }
    public function SearchDistrict(Request $request)
    {
        $district_id = $request->district_id;
        $subdistrict_id = $request->subdistrict_id;
        $catePosts = DB::table('posts')->where('district_id', $district_id)->where('subdistrict_id', $subdistrict_id)->orderBy('id', 'DESC')->paginate(5);
        return view('main.allpost', compact('catePosts'));
    }
}
