<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function __construct()
    {
        $this->middleware('auth:api');
    }

    public function index()
    {
        //
        $categories = Category::all();
        return response([
            'code' => 200,
            'data' => $categories
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request)
    {
        //
        Category::insert([
            'category_en' => $request->category_en,
            'category_vn' => $request->category_vn,
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
     * @param int $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\JsonResponse|\Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $category = Category::find($id);
        if ($category) {
            return response()->json([
                'code' => 200,
                'data' => $category
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
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request, Category $category)
    {
        //
        $category->update($request->all());
        return response()->json([
            'code' => 200,
            'data' => $category,
            'message' => 'Updated category successfully'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy($id)
    {
        //
        $category = Category::find($id);
        if ($category) {
            $category->delete();
            return response()->json([
                'code' => 200,
                'message' => 'Delete category successfully'
            ], 200);
        }

        return response()->json([
            'code' => 404,
            'message' => 'Delete Failed'
        ], 404);

    }
}
