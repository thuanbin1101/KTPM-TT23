<?php

namespace App\Http\Controllers\Backend;

use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RolePermissionController extends Controller
{
    private $role;
    private $permission;

    public function __construct(Role $role, Permission $permission)
    {
        $this->role = $role;
        $this->permission = $permission;

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $roles = $this->role->paginate(10);
//        $permissionsOfRoles = $this->role->getAllPermissions();
//        dd($permissionsOfRoles);
        return response()->view('backend.roles_permissions.index', compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $permissions = $this->permission->all();
        return response()->view('backend.roles_permissions.create',['permissions'=>$permissions]);
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
     * @return \Illuminate\Http\Response
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
