<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\Backend\DistrictController;
use App\Http\Controllers\Backend\PostController;
use App\Http\Controllers\Backend\SubDistrictController;
use App\Http\Controllers\Backend\SettingController;
use App\Http\Controllers\Backend\GalleryController;
use App\Http\Controllers\Frontend\ExtraController;
use App\Http\Controllers\Backend\UserController;
use App\Http\Controllers\Backend\RolePermissionController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('main.home');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('admin.index');
})->name('dashboard');

Route::get('/admin/logout', [AdminController::class, 'logout'])->name('admin.logout');

// Admin Category
Route::get('/categories', [CategoryController::class, 'index'])->name('categories');
Route::get('/add/category', [CategoryController::class, 'create'])->name('add.category');
Route::post('/store/category', [CategoryController::class, 'store'])->name('store.category');
Route::get('/edit/category/{id}', [CategoryController::class, 'edit'])->name('edit.category');
Route::put('/update/category/{id}', [CategoryController::class, 'update'])->name('update.category');
Route::delete('/delete/category/{id}', [CategoryController::class, 'destroy'])->name('destroy.category');

// Admin SubCategory
Route::get('/subcategories', [SubCategoryController::class, 'index'])->name('subcategories');
Route::get('/add/subcategory', [SubCategoryController::class, 'create'])->name('add.subcategory');
Route::post('/store/subcategory', [SubCategoryController::class, 'store'])->name('store.subcategory');
Route::get('/edit/subcategory/{id}', [SubCategoryController::class, 'edit'])->name('edit.subcategory');
Route::put('/update/subcategory/{id}', [SubCategoryController::class, 'update'])->name('update.subcategory');
Route::delete('/delete/subcategory/{id}', [SubCategoryController::class, 'destroy'])->name('destroy.subcategory');

// Admin District
Route::get('/district', [DistrictController::class, 'index'])->name('district');
Route::get('/add/district', [DistrictController::class, 'create'])->name('add.district');
Route::post('/store/district', [DistrictController::class, 'store'])->name('store.district');
Route::get('/edit/district/{id}', [DistrictController::class, 'edit'])->name('edit.district');
Route::put('/update/district/{id}', [DistrictController::class, 'update'])->name('update.district');
Route::delete('/delete/district/{id}', [DistrictController::class, 'destroy'])->name('destroy.district');

// Admin SubDistrict
Route::get('/subdistrict', [SubDistrictController::class, 'index'])->name('subdistrict');
Route::get('/add/subdistrict', [SubDistrictController::class, 'create'])->name('add.subdistrict');
Route::post('/store/subdistrict', [SubDistrictController::class, 'store'])->name('store.subdistrict');
Route::get('/edit/subdistrict/{id}', [SubDistrictController::class, 'edit'])->name('edit.subdistrict');
Route::put('/update/subdistrict/{id}', [SubDistrictController::class, 'update'])->name('update.subdistrict');
Route::delete('/delete/subdistrict/{id}', [SubDistrictController::class, 'destroy'])->name('destroy.subdistrict');

// Admin Post
Route::get('/post', [PostController::class, 'index'])->name('post');
Route::get('/add/post', [PostController::class, 'create'])->name('add.post');
Route::post('/store/post', [PostController::class, 'store'])->name('store.post');
Route::get('/edit/post/{id}', [PostController::class, 'edit'])->name('edit.post');
Route::put('/update/post/{id}', [PostController::class, 'update'])->name('update.post');
Route::delete('/delete/post/{id}', [PostController::class, 'destroy'])->name('destroy.post');

// Socials Setting
Route::get('/social/setting', [SettingController::class, 'socialSetting'])->name('social');
//Seos Setting
Route::get('/seo/setting', [SettingController::class, 'seoSetting'])->name('seo.setting');
Route::PUT('/seo/update/{id}', [SettingController::class, 'seoUpdate'])->name('update.seo');

//Photo Gallery
Route::get('/photo', [GalleryController::class, 'index'])->name('photo');
Route::get('/add/photo', [GalleryController::class, 'create'])->name('add.photo');
Route::post('/store/photo', [GalleryController::class, 'store'])->name('store.photo');
Route::get('/edit/photo/{id}', [GalleryController::class, 'edit'])->name('edit.photo');
Route::put('/update/photo/{id}', [GalleryController::class, 'update'])->name('update.photo');
Route::delete('/delete/photo/{id}', [GalleryController::class, 'destroy'])->name('destroy.photo');

//User
Route::get('/user', [UserController::class, 'index'])->name('user');
Route::get('/add/user', [UserController::class, 'create'])->name('add.user');
Route::post('/store/user', [UserController::class, 'store'])->name('store.user');
Route::get('/edit/user/{id}', [UserController::class, 'edit'])->name('edit.user');
Route::put('/update/user/{id}', [UserController::class, 'update'])->name('update.user');
Route::delete('/delete/user/{id}', [UserController::class, 'destroy'])->name('destroy.user');

//Role
Route::get('/role', [RolePermissionController::class, 'index'])->name('role');
Route::get('/add/role', [RolePermissionController::class, 'create'])->name('add.role');
Route::post('/store/role', [RolePermissionController::class, 'store'])->name('store.role');
Route::get('/edit/role/{id}', [RolePermissionController::class, 'edit'])->name('edit.role');
Route::put('/update/role/{id}', [RolePermissionController::class, 'update'])->name('update.role');
Route::delete('/delete/role/{id}', [RolePermissionController::class, 'destroy'])->name('destroy.role');

// Json Data for Category and District (AJAX)
Route::get('/get/subcategory/{category_id}', [PostController::class, 'getSubCateogry']);
Route::get('/get/subdistrict/{district_id}', [PostController::class, 'getSubDistrict']);
Route::post('/checkEmail', [AdminController::class, 'checkEmail'])->name('register.checkemail');


// FRONT END
// Multi language Route
Route::get('/lang/vn', [ExtraController::class, 'Vietnamese'])->name('lang.vn');
Route::get('/lang/eng', [ExtraController::class, 'English'])->name('lang.eng');

//Single Post
Route::get('/view/post/{id}', [ExtraController::class, 'singlePost'])->name('single.post');

// Post Category
Route::get('/cate/post/{id}/{category_en}', [ExtraController::class, 'catePost'])->name('cate.post');
Route::get('/subcate/post/{id}/{category_en}', [ExtraController::class, 'subcatePost'])->name('subcate.post');

//Search District In home page
Route::get('/get/subdistrict/frontend/{id}', [ExtraController::class, 'getSubDistrict']);
Route::get('/search/districts', [ExtraController::class, 'SearchDistrict'])->name('searchby.districts');
Route::get('/test', function () {
    return view("test.test");
});
Route::post('/test', [AdminController::class, 'testImage'])->name('register.testImage');
