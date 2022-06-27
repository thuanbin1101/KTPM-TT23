<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Facades\JWTAuth;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $user;
    private $role;

    public function __construct(User $user, Role $role)
    {
        $this->user = $user;
        $this->role = $role;
    }

    public function index(Request $request)
    {
//        $user->assignRole('Admin');
//        $user->syncPermissions('delete category');
        // $users = $this->user->paginate(10);
        // return view(
        //     'backend.user.index',
        //     ['users' => $users]
        // );
//        Role::create(['name'=>'Tester']);
        /*     $role = Role::find(1);
             $per = Permission::find(12);
             $role->givePermissionTo($per);*/
        // auth()->user()->assignRole(['admin','content']);
//         auth()->user()->givePermissionTo('add category');
        $users = $this->user->orderBy('id', 'DESC')->paginate(10);
        if ($search = $request->get('search')) {
            $users = $this->user->query()->where('name', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(10);
        }
        return view(
            'backend.user.index',
            ['users' => $users]
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $roles = $this->role->all();
        return response()->view('backend.user.create',
            ['roles' => $roles]
        );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\RedirectResponse
     */
    public function store(Request $request)
    {
        $user = $this->user->create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        $user->assignRole($request->role_id);
        return redirect()->back()->with('success', 'Tạo tài khoản thành công');
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
        $user = User::find($id);
        $roles = $this->role->all();
        $rolesOfUser = $user->roles;
//        $user->givePermissionTo(['edit posts','delete posts']);

        return response()->view(
            'backend.user.edit',
            [
                'roles' => $roles,
                'user' => $user,
                'rolesOfUser' => $rolesOfUser,
            ]
        );
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
        $user = User::find($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if ($request->password) {
            $user->password = Hash::make($request->password);
        }
//        dd($request->get('permission_name'));
        $user->syncRoles($request->role_id);
//        $user->givePermissionTo($request->get('permission_name'));
        $user->syncPermissions($request->get('permission_name'));

        $user->save();
        $notification = array(
            'message' => 'Cập nhật tài khoản thành công',
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
        User::find($id)->delete();
        $notification = array(
            'message' => 'Xoá tài khoản thành công',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }
}
