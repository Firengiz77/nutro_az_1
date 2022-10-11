<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Front\MainController;

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

Route::post('nova2/login', [\App\Http\Controllers\NovaNewAuthController::class, 'authLogin'])->name('nova.new.auth');
Route::post('/sendmail',[MainController::class,'sendmail'])->name('sendmail');

Route::get('/',[MainController::class,'index'])->name('index');
Route::get('/contact',[MainController::class,'contact'])->name('contact');
Route::get('/products/{slug1}/{slug2}',[MainController::class,'single'])->name('single');
Route::get('/products',[MainController::class,'products'])->name('products');
Route::get('/about',[MainController::class,'about'])->name('about');

Route::get('/category/{slug}',[MainController::class,'category'])->name('category');

Route::get('/process-and-quality',[MainController::class,'keyfiyyet'])->name('quality');

// Route::get('/linkstorage', function () {
//     Artisan::call('storage:link');
// });

// Route::get('/', function () {
//     return view('welcome');
// });
