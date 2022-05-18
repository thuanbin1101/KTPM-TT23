<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
//    public function __construct()
//    {
//        $this->middleware('permission:add category', ['only' => ['create']]);
//        $this->middleware('permission:publish category', ['only' => ['index']]);
//        $this->middleware('permission:edit category', ['only' => ['edit']]);
//    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $categories = DB::table('categories')->orderBy('id', 'DESC')->whereNull('deleted_at')->paginate(3);
        if ($search = \request()->search) {
            $categories = DB::table('categories')->orderBy('id', 'DESC')->where('category_en', 'LIKE', '%' . $search . '%')->paginate(3);
        }
        return view('backend.category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.category.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'category_en' => 'required|unique:categories|max:255',
            'category_vn' => 'required|unique:categories|max:255',
        ], [
            'category_en.required' => 'Danh mục tiếng anh chưa điền',
            'category_vn.required' => 'Danh mục tiếng việt chưa điền',
            'category_en.unique' => 'Danh mục này đã tồn tại',
            'category_vn.unique' => 'Danh mục này đã tồn tại',
        ]);
        $data = array();
        $data['category_en'] = $request->category_en;
        $data['category_vn'] = $request->category_vn;
        DB::table('categories')->insert($data);
        $notification = array(
            'message' => 'Category Inserted Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
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
        $category = DB::table('categories')->where('id', $id)->first();
        return view('backend.category.edit', compact('category'));
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
            'category_en' => 'required|unique:categories|max:255',
            'category_vn' => 'required|unique:categories|max:255',
        ], [
            'category_en.required' => 'Danh mục tiếng anh chưa điền',
            'category_vn.required' => 'Danh mục tiếng việt chưa điền',
            'category_en.unique' => 'Danh mục này đã tồn tại',
            'category_vn.unique' => 'Danh mục này đã tồn tại',
        ]);
        $data = array();
        $data['category_en'] = $request->category_en;
        $data['category_vn'] = $request->category_vn;
        DB::table('categories')->where('id', $id)->update($data);
        $notification = array(
            'message' => 'Category Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('categories')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        // DB::table('categories')->where('id', $id)->delete();
        Category::find($id)->delete();
        $notification = array(
            'message' => 'Category Deleted Successfully',
            'alert-type' => 'success',
        );
        // return redirect()->route('categories')->with($notification);
        return response()->json([
            'code' => 200,
            'message' => "Deleted Success"
        ], 200);
    }
}
