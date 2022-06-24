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

    public function home()
    {
        $firstSectionBig = DB::table('posts')
            ->where('first_section_thumbnail', 1)
            ->orderBy('id', 'DESC')
            ->first();
        $firstSection = DB::table('posts')
            ->where('first_section', 1)
            ->orderBy('id', 'DESC')
            ->limit(8)
            ->get();


        $firstCategory = DB::table('categories')->first();
        $firstCategoryBig = DB::table('posts')
            ->where('category_id', $firstCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $firstCategorySmall = DB::table('posts')
            ->where('category_id', $firstCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $secondCategory = DB::table('categories')
            ->skip(1)
            ->first();
        $secondCategoryBig = DB::table('posts')
            ->where('category_id', $secondCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $secondCategorySmall = DB::table('posts')
            ->where('category_id', $secondCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $thirdCategory = DB::table('categories')
            ->skip(2)
            ->first();
        $thirdCategoryBig = DB::table('posts')
            ->where('category_id', $thirdCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $thirdCategorySmall = DB::table('posts')
            ->where('category_id', $thirdCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $fourCategory = DB::table('categories')
            ->skip(3)
            ->first();
        $fourCategoryBig = DB::table('posts')
            ->where('category_id', $fourCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $fourCategorySmall = DB::table('posts')
            ->where('category_id', $fourCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $fiveCategory = DB::table('categories')
            ->skip(4)
            ->first();
        $fiveCategoryBig = DB::table('posts')
            ->where('category_id', $fiveCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $fiveCategorySmall = DB::table('posts')
            ->where('category_id', $fiveCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $sixCategory = DB::table('categories')
            ->skip(5)
            ->first();
        $sixCategoryBig = DB::table('posts')
            ->where('category_id', $sixCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $sixCategorySmall = DB::table('posts')
            ->where('category_id', $sixCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $sevenCategory = DB::table('categories')
            ->skip(6)
            ->first();
        $sevenCategoryBig = DB::table('posts')
            ->where('category_id', $sevenCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $sevenCategorySmall = DB::table('posts')
            ->where('category_id', $sevenCategory->id)
            ->where('bigthumbnail', null)
            ->get();

        $eightCategory = DB::table('categories')
            ->skip(7)
            ->first();
        $eightCategoryBig = DB::table('posts')
            ->where('category_id', $eightCategory->id)
            ->where('bigthumbnail', 1)
            ->first();
        $eightCategorySmall = DB::table('posts')
            ->where('category_id', $eightCategory->id)
            ->where('bigthumbnail', null)
            ->get();


        $photoBig = DB::table('photos')
            ->where('type', 1)
            ->first();
        $photoSmall = DB::table('photos')
            ->where('type', 0)
            ->get();
        $liveTv = DB::table('livetvs')->first();
        $latests = DB::table('posts')->orderBy('id', 'DESC')->limit(5)->get();
        $populars = DB::table('posts')->orderBy('id', 'DESC')->inRandomOrder()->limit(5)->get();
        $highests = DB::table('posts')->orderBy('id', 'ASC')->inRandomOrder()->limit(5)->get();

        $districts = DB::table('districts')->get();

        $bigvideo = DB::table('videos')->where('type', '1')->orderBy('id', 'DESC')->first();
        $smallvideos = DB::table('videos')->where('type', '0')->orderby('id','DESC')->limit(4)->get();

        //---------------
//        $categorySection = DB::table('categories')->limit(4)->orderBy('id', 'DESC')->pluck('id')->toArray();
//        $firstCategoryBigSection = DB::table('posts')
//            ->whereIn('category_id', $categorySection)
//            ->where('bigthumbnail', 1)
//            ->get();
//
//        $firstCategorySmallSection = DB::table('posts')
//            ->whereIn('category_id', $categorySection)
//            ->where('bigthumbnail', null)
//            ->get();
        //----------------

        return view('main.home', [
            'firstSectionBig' => $firstSectionBig,
            'firstSection' => $firstSection,
            'firstCategory' => $firstCategory,
            'firstCategoryBig' => $firstCategoryBig,
            'firstCategorySmall' => $firstCategorySmall,
            'secondCategoryBig' => $secondCategoryBig,
            'secondCategory' => $secondCategory,
            'secondCategorySmall' => $secondCategorySmall,
            'thirdCategory' => $thirdCategory,
            'thirdCategoryBig' => $thirdCategoryBig,
            'thirdCategorySmall' => $thirdCategorySmall,
            'fourCategory' => $fourCategory,
            'fourCategoryBig' => $fourCategoryBig,
            'fourCategorySmall' => $fourCategorySmall,
            'fiveCategory' => $fiveCategory,
            'fiveCategoryBig' => $fiveCategoryBig,
            'fiveCategorySmall' => $fiveCategorySmall,
            'sixCategory' => $sixCategory,
            'sixCategoryBig' => $sixCategoryBig,
            'sixCategorySmall' => $sixCategorySmall,
            'sevenCategory' => $sevenCategory,
            'sevenCategoryBig' => $sevenCategoryBig,
            'sevenCategorySmall' => $sevenCategorySmall,
            'eightCategory' => $eightCategory,
            'eightCategoryBig' => $eightCategoryBig,
            'eightCategorySmall' => $eightCategorySmall,
            'photoBig' => $photoBig,
            'photoSmall' => $photoSmall,
            'liveTv' => $liveTv,
            'latests' => $latests,
            'populars' => $populars,
            'highests' => $highests,
            'districts' => $districts,
            'bigvideo' => $bigvideo,
            'smallvideos' => $smallvideos
        ]);

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
        $relatePost = DB::table('posts')
            ->where('id', '!=', $post->id)
            ->where('category_id', $post->category_id)
            ->orderBy('id', 'DESC')
            ->limit(6)
            ->get();
        $latests = DB::table('posts')->orderBy('id', 'DESC')->limit(5)->get();
        $populars = DB::table('posts')->orderBy('id', 'DESC')->inRandomOrder()->limit(5)->get();
        $highests = DB::table('posts')->orderBy('id', 'ASC')->inRandomOrder()->limit(5)->get();

        return view('main.single_post', [
            'relatePost' => $relatePost,
            'post' => $post,
            'latests' => $latests,
            'populars' => $populars,
            'highests' => $highests,
        ]);
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
