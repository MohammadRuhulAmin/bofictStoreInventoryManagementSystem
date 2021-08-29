<?php

use App\Http\Controllers\CategoriesController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BrandsController;
use App\Http\Controllers\TypeController;
use App\Http\Controllers\SubcategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ItemController;
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
    return view('welcome');
});

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

//test
Route::get('/user/logout',[UsersController::class,'logout'])->name('users.logout');



Route::middleware(['auth:sanctum'])->group(function(){


    // Dashboard 

    Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');


    // User Insertion 
    Route::resource('users', UsersController::class);
       

    //Category
    Route::resource('categories', CategoriesController::class);
    
      //Brand
      Route::resource('brands', BrandsController::class);
    
    //Sub category 
    Route::resource('subcategories',SubcategoryController::class);

    // Type 
    Route::resource('types',TypeController::class);

    //Product
    Route::resource('products',ProductController::class);
    //Item
    Route::resource('items',ItemController::class);


});



