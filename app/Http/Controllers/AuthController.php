<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use Throwable;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('JWT', ['except' => ['login', 'register']]);
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $validateData = $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ],[
            'email.email' => 'Email chưa đúng định dạng, vui lòng kiểm tra lại',
            'email.required' => 'Bạn chưa nhập email',
            'password.required' => 'Bạn chưa nhập mật khẩu'
        ]);


        $credentials = request(['email', 'password']);
        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Sai email hoặc mật khẩu'], 401);
        }
//        $user = JWTAuth::user();

        return $this->respondWithToken($token);
    }

    public function register(Request $request)
    {
        try {
            $validator = validator()->make($request->all(), [
                'name' => 'min:2|string|required',
                'email' => 'email|required',
                'password' => 'string|min:1|required|confirmed',

            ], [
                'email.required' => 'Bạn chưa nhập email',
                'name.min' => 'Cần phải ít nhất 2 ký tự',
                'name.required' => 'Bạn chưa nhập tên',
                'password.required' => 'Bạn chưa nhập mật khẩu'
            ]);
            if ($validator->fails()) {
                return response()->json(['status' => false, 'errors' => $validator->errors()], 400);
            }
            $user = User::create([
                'name' => $request->get('name'),
                'email' => $request->get('email'),
                'password' => bcrypt($request->get('password'))
            ]);
            return response()->json(['message' => 'Registration successful', 'user' => $user],201);
        } catch (Throwable $e) {
            if ($e->getCode() === '23000') {
                return response()->json(['error' => 'Đã có email này trong dữ liệu, vui lòng sử dụng email khác'], 400);
            }
        }
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json(['message' => 'Successfully logged out']);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
//            'user'=>$user,
            'user_name' => auth()->user()->name,
            'user_email' => auth()->user()->email,
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }

    public function payload()
    {
        return auth()->payload();
    }
}
