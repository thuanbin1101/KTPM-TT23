<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

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

    public function index()
    {
        // $users = $this->user->paginate(10);
        // return view(
        //     'backend.user.index',
        //     ['users' => $users]
        // );
//         $role = Role::find(2);
//         $per = Permission::find(9);
//         $role->givePermissionTo($per);
//         dd(1);
        // auth()->user()->assignRole(['admin','content']);
//         auth()->user()->givePermissionTo('add category');
        $users = $this->user->orderBy('id', 'DESC')->paginate(10);
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
        $permissions = Permission::all();
        $permissionsOfUser = $user->permissions;
//        $user->givePermissionTo(['edit posts','delete posts']);
        return response()->view(
            'backend.user.edit',
            [
                'roles' => $roles,
                'user' => $user,
                'rolesOfUser' => $rolesOfUser,
                'permissions' => $permissions,
                'permissionsOfUser' => $permissionsOfUser
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
        $user->assignRole($request->role_id);
        $user->givePermissionTo(['edit posts','delete posts']);
        $user->save();
        return redirect()->back()->with('success', 'Tạo tài khoản thành công');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
