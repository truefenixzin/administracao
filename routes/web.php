<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\FronController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\RoleController;


//rotas publicas
Route::get('/', [FronController::class, 'showHome'])->name('front.home');

//rotas de login
Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('/', [AuthController::class, 'showLoginForm'])->name('login');
    Route::post('login', [AuthController::class, 'login'])->name('login.do');

    //rotas protegidas por necessidade de login
    Route::group(['middleware' => ['auth']], function () {

        Route::get('/inicio', [AuthController::class, 'home'])->name('home');
        Route::get('/slides', [AuthController::class, 'showUploadForm'])->name('formupload');
        Route::get('/comite/cadastro', [AuthController::class, 'showComiteCadastro'])->name('comite.cadastro');
        Route::get('/comite/pautas', [AuthController::class, 'showComiteList'])->name('comite.listarpautas');



        Route::resource('users', UserController::class);
        Route::resource('permissions', PermissionController::class);
        Route::resource('roles', RoleController::class);




    });


    /**Rotas logout**/
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});
