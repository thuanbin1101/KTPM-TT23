<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Intervention\Image\ImageManagerStatic as Image;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = DB::table('posts')
            ->join('categories', 'posts.category_id', 'categories.id')
            ->join('subcategories', 'posts.subcategory_id', 'subcategories.id')
            ->join('districts', 'posts.district_id', 'districts.id')
            ->join('subdistricts', 'posts.subdistrict_id', 'subdistricts.id')
            ->select(
                'posts.*',
                'categories.category_en',
                'subcategories.subcategory_en',
                'districts.district_en',
                'subdistricts.subdistrict_en'
            )
            ->orderBy('id', 'DESC')
            ->paginate(5);

        return view('backend.post.index', compact('posts'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function create()
    {
        $categories = DB::table('categories')->get();
        $districts = DB::table('districts')->get();
        return view('backend.post.create',[
            'categories' => $categories,
            'districts' => $districts
        ]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        date_default_timezone_set('Asia/Ho_Chi_Minh');
        $validated = $request->validate([
            'title_en' => 'required|unique:posts|max:255',
            'title_vn' => 'required|unique:posts|max:255',
        ], [
            'title_en.required' => 'Tiêu đề tiếng anh chưa điền',
            'title_vn.required' => 'Tiêu đề tiếng việt chưa điền',
            'title_en.unique' => 'Tiêu đề này đã tồn tại',
            'title_vn.unique' => 'Tiêu đề này đã tồn tại',
        ]);
        $data = array();
        $data['category_id'] = $request->category_id;
        $data['district_id'] = $request->district_id;
        $data['subdistrict_id'] = $request->subdistrict_id;
        $data['subcategory_id'] = $request->subcategory_id;
        $data['user_id'] = $_COOKIE['userId'] ;
        $data['title_en'] = $request->title_en;
        $data['title_vn'] = $request->title_vn;
        $data['tags_en'] = $request->tags_en;
        $data['tags_vn'] = $request->tags_vn;
        $data['details_en'] = $request->details_en;
        $data['details_vn'] = $request->details_vn;
        $data['headline'] = $request->headline;
        $data['first_section'] = $request->first_section;
        $data['first_section_thumbnail'] = $request->first_section_thumbnail;
        $data['bigthumbnail'] = $request->bigthumbnail;
        $data['post_date'] = date('d-m-Y H:i:s');
        $data['post_month'] = date('F');
        $image = $request->image;
        if ($image) {
            $image_one = uniqid() . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(500, 300)->save("image/postimg/$image_one");
            $data['image'] = "image/postimg/$image_one";
            DB::table('posts')->insert($data);
            $notification = array(
                'message' => 'Post Inserted Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('add.post')->with($notification);
        } else {
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories = DB::table('categories')->get();
        $districts = DB::table('districts')->get();
        $post = DB::table('posts')->where('id', $id)->first();
        return view('backend.post.edit', compact('categories', 'districts', 'post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validated = $request->validate([
            'title_en' => 'required|max:255',
            'title_vn' => 'required|max:255',
        ], [
            'title_en.required' => 'Tiêu đề tiếng anh chưa điền',
            'title_vn.required' => 'Tiêu đề tiếng việt chưa điền',
        ]);
        $data = array();
        $data['category_id'] = $request->category_id;
        $data['district_id'] = $request->district_id;
        $data['subdistrict_id'] = $request->subdistrict_id;
        $data['subcategory_id'] = $request->subcategory_id;
        $data['user_id'] = $_COOKIE['userId'];
        $data['title_en'] = $request->title_en;
        $data['title_vn'] = $request->title_vn;
        $data['tags_en'] = $request->tags_en;
        $data['tags_vn'] = $request->tags_vn;
        $data['details_en'] = $request->details_en;
        $data['details_vn'] = $request->details_vn;
        $data['headline'] = $request->headline;
        $data['first_section'] = $request->first_section;
        $data['first_section_thumbnail'] = $request->first_section_thumbnail;
        $data['bigthumbnail'] = $request->bigthumbnail;
        $data['post_date'] = date('d-m-Y');
        $data['post_month'] = date('F');
        $image = $request->image;
        $oldImage = $request->oldimage;
        if ($image) {
            $image_one = uniqid() . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(500, 300)->save("image/postimg/$image_one");
            $data['image'] = "image/postimg/$image_one";
            unlink($oldImage);
            DB::table('posts')->where('id', $id)->update($data);
            $notification = array(
                'message' => 'Post Updated Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('add.post')->with($notification);
        } else {
            $data['image'] = $oldImage;
            DB::table('posts')->where('id', $id)->update($data);
            $notification = array(
                'message' => 'Post Updated Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('post')->with($notification);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = DB::table('posts')->where('id', $id)->first();
        if ($post->image != '') {
            unlink($post->image);
        }
        DB::table('posts')->where('id', $id)->delete();
        $notification = array(
            'message' => 'Post Delete Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('post')->with($notification);
    }
    public function getSubCateogry($category_id)
    {
        $sub = DB::table('subcategories')->where('category_id', $category_id)->get();
        return response()->json($sub);
    }
    public function getSubDistrict($district_id)
    {
        $sub = DB::table('subdistricts')->where('district_id', $district_id)->get();
        return response()->json($sub);
    }
}
