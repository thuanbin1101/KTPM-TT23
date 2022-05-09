<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SubDistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $subdistricts =
            DB::table('subdistricts')
                ->join('districts', 'subdistricts.district_id', '=', 'districts.id')
                ->select('subdistricts.*', 'districts.district_en')
                ->orderBy('id', 'DESC')
                ->paginate(3);
        if ($search = \request()->search) {
            $subdistricts = DB::table('subdistricts')->orderBy('id', 'DESC')->where('subdistrict_en', 'LIKE', '%' . $search . '%')->paginate(3);
        }
        return view('backend.subdistrict.index', compact('subdistricts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $districts = DB::table('districts')->get();
        return view('backend.subdistrict.create', compact('districts'));
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
            'subdistrict_en' => 'required|unique:subdistricts|max:255',
            'subdistrict_vn' => 'required|unique:subdistricts|max:255',
            'district_id' => 'required',
        ], [
            'subdistrict_en.required' => 'Danh mục tiếng anh chưa điền',
            'subdistrict_vn.required' => 'Danh mục tiếng việt chưa điền',
            'district_id.required' => 'Chưa điền nè',
            'subdistrict_en.unique' => 'Danh mục này đã tồn tại',
            'subdistrict_vn.unique' => 'Danh mục này đã tồn tại',
        ]);
        $data = array();
        $data['subdistrict_en'] = $request->subdistrict_en;
        $data['subdistrict_vn'] = $request->subdistrict_vn;
        $data['district_id'] = $request->district_id;
        DB::table('subdistricts')->insert($data);
        $notification = array(
            'message' => 'SubDistrict Inserted Successfully',
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
        $districts = DB::table('districts')->get();
        $subdistrict = DB::table('subdistricts')->where('id', $id)->first();
        return view('backend.subdistrict.edit', compact('subdistrict','districts'));
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
            'subdistrict_en' => 'required|max:255',
            'subdistrict_vn' => 'required|max:255',
        ], [
            'subdistrict_en.required' => 'Danh mục tiếng anh chưa điền',
            'subdistrict_vn.required' => 'Danh mục tiếng việt chưa điền',
        ]);
        $data = array();
        $data['subdistrict_en'] = $request->subdistrict_en;
        $data['subdistrict_vn'] = $request->subdistrict_vn;
        $data['district_id'] = $request->district_id;
        DB::table('subdistricts')->where('id',$id)->update($data);
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
        DB::table('subdistricts')->where('id', $id)->delete();
        $notification = array(
            'message' => 'SubCategory Deleted Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('subdistrict')->with($notification);
    }
}
