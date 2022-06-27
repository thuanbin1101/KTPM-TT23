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
        return response()->view('backend.roles_permissions.create', ['permissions' => $permissions]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $role = new Role();
        $role->name = $request->get('role_name');
        $role->syncPermissions($request->get('permission_name'));
        $role->save();
        $notification = array(
            'message' => 'Thêm vai trò thành công',
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
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response
     */
    public function edit($id)
    {
        $role = Role::find($id);
        $permissions = Permission::all();
        $permissionsOfRole = $role->permissions;
        return view('backend.roles_permissions.edit', [
            'role' => $role,
            'permissions' => $permissions,
            'permissionsOfRole' => $permissionsOfRole
        ]);
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
        $role = Role::find($id);
        $role->name = $request->get('name');
        $role->syncPermissions($request->get('permission_name'));
        $role->save();
        $notification = array(
            'message' => 'Cập nhật vai trò thành công',
            'alert-type' => 'success',
        );
        return redirect()->route('role')->with($notification);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Role::find($id)->delete();
        $notification = array(
            'message' => 'Xoá vai trò thành công',
            'alert-type' => 'success',
        );
        return redirect()->route('role')->with($notification);
    }
}
