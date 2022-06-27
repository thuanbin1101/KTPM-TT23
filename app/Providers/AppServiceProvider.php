<?php

namespace App\Providers;

use App\Models\User;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        if (isset($_COOKIE['userId'])) {
            $userId = $_COOKIE['userId'];
            $user = User::find($userId);
            $user->getPermissionsViaRoles();
            View::share('userRole', $user);
        }
        Paginator::useBootstrap();
    }
}
