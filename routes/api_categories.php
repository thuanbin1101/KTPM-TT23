<?php

use App\Http\Controllers\Api\CategoryController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::prefix('/Category')->group(function () {

    Route::get('/index',[CategoryController::class, 'index']);
    Route::get('/store',[CategoryController::class, 'store']);

});