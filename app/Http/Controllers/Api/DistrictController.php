<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Carbon;
use App\Models\District;

use Illuminate\Http\Request;

class DistrictController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $district = District::all();
        return response([
            'code' => 200,
            'data' => $district
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        District::insert([
            'district_en' => $request->district_en,
            'district_vn' => $request->district_vn,
            'created_at' => Carbon::now("Asia/Ho_Chi_Minh"),
            'updated_at' => Carbon::now("Asia/Ho_Chi_Minh"),
        ]);
        return response()->json([
            'code' => 201,
        ], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $district = District::find($id);
        if ($district) {
            return response()->json([
                'code' => 200,
                'data' => $district
            ], 200);
        }
        return response([
            'code' => 404,
            'message' => "Data Not Found",
            'data' => null
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, District $district)
    {
        //
        $district->update($request->all());
        $getDistrictUpdated = District::find($district);
        return response()->json([
            'code' => 200,
            'data' => $getDistrictUpdated,
            'message' => 'Updated district successfully'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $district = District::find($id);
        if ($district) {
            $district->delete();
            return response()->json([
                'code' => 200,
                'message' => 'Delete district successfully'
            ], 200);
        }

        return response()->json([
            'code' => 404,
            'message' => 'Delete Failed'
        ], 404);
    }
}
