<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $districts = DB::table('districts')->orderBy('id', 'DESC')->paginate(3);
        if ($search = \request()->search) {
            $districts = DB::table('districts')->orderBy('id', 'DESC')->where('district_en', 'LIKE', '%' . $search . '%')->paginate(3);
        }
        return view('backend.district.index', compact('districts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.district.create');
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
            'district_en' => 'required|unique:districts|max:255',
            'district_vn' => 'required|unique:districts|max:255',
        ], [
            'district_en.required' => 'Quận tiếng anh chưa điền',
            'district_vn.required' => 'Quận tiếng việt chưa điền',
            'district_en.unique' => 'Quận này đã tồn tại',
            'district_vn.unique' => 'Quận này đã tồn tại',
        ]);
        $data = array();
        $data['district_en'] = $request->district_en;
        $data['district_vn'] = $request->district_vn;
        DB::table('districts')->insert($data);
        $notification = array(
            'message' => 'District Inserted Successfully',
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
        $district = DB::table('districts')->where('id', $id)->first();
        return view('backend.district.edit', compact('district'));

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
            'district_en' => 'required|unique:districts|max:255',
            'district_vn' => 'required|unique:districts|max:255',
        ], [
            'district_en.required' => 'Quận tiếng anh chưa điền',
            'district_vn.required' => 'Quận tiếng việt chưa điền',
            'district_en.unique' => 'Quận này đã tồn tại',
            'district_vn.unique' => 'Quận này đã tồn tại',
        ]);
        $data = array();
        $data['district_en'] = $request->district_en;
        $data['district_vn'] = $request->district_vn;
        DB::table('districts')->where('id', $id)->update($data);
        $notification = array(
            'message' => 'District Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('district')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        DB::table('districts')->where('id', $id)->delete();
        $notification = array(
            'message' => 'District Deleted Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('district')->with($notification);
    }
}
