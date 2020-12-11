<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\FronController;



//rotas publicas
Route::get('/', [FronController::class, 'showHome'])->name('front.home');

//rotas de login
Route::group(['prefix' => 'admin', 'as'=>'admin.'],  function(){
    Route::get('/',[AuthController::class, 'showLoginForm'])->name('login');
    Route::post('login',[AuthController::class, 'login'])->name('login.do');

    //rotas protegidas por necessidade de login
    Route::group(['middleware' => ['auth']],function (){
        Route::get('/home',[AuthController::class, 'home'])->name('home');
        Route::get('/comite',[AuthController::class, 'showComiteCadastro'])->name('comite.cadastro');
    });


    /**Rotas logout**/
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});
