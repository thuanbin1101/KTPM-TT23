<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubCategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subcategories =
            DB::table('subcategories')
            ->join('categories', 'subcategories.category_id', '=', 'categories.id')
            ->select('subcategories.*', 'categories.category_en')
            ->orderBy('id', 'DESC')
            ->paginate(3);
        if ($search = \request()->search) {
            $subcategories = DB::table('subcategories')->orderBy('id', 'DESC')->where('subcategory_en', 'LIKE', '%' . $search . '%')->paginate(3);
        }
        return view('backend.subcategory.index', compact('subcategories'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = DB::table('categories')->get();
        return view('backend.subcategory.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'subcategory_en' => 'required|unique:subcategories|max:255',
            'subcategory_vn' => 'required|unique:subcategories|max:255',
        ], [
            'subcategory_en.required' => 'Danh mục tiếng anh chưa điền',
            'subcategory_vn.required' => 'Danh mục tiếng việt chưa điền',
            'subcategory_en.unique' => 'Danh mục này đã tồn tại',
            'subcategory_vn.unique' => 'Danh mục này đã tồn tại',
        ]);
        $data = array();
        $data['subcategory_en'] = $request->subcategory_en;
        $data['subcategory_vn'] = $request->subcategory_vn;
        $data['category_id'] = $request->category_id;
        DB::table('subcategories')->insert($data);
        $notification = array(
            'message' => 'SubCategory Inserted Successfully',
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
        $categories = DB::table('categories')->get();
        $subcategory = DB::table('subcategories')->where('id', $id)->first();
        return view('backend.subcategory.edit', compact('subcategory','categories'));
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
        //
        $request->validate([
            'subcategory_en' => 'required|max:255',
            'subcategory_vn' => 'required|max:255',
        ], [
            'subcategory_en.required' => 'Danh mục tiếng anh chưa điền',
            'subcategory_vn.required' => 'Danh mục tiếng việt chưa điền',
        ]);
        $data = array();
        $data['subcategory_en'] = $request->subcategory_en;
        $data['subcategory_vn'] = $request->subcategory_vn;
        $data['category_id'] = $request->category_id;
        DB::table('subcategories')->where('id',$id)->update($data);
        $notification = array(
            'message' => 'SubCategory Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('subcategories')->where('id', $id)->delete();
        $notification = array(
            'message' => 'SubCategory Deleted Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('subcategories')->with($notification);
    }
}
