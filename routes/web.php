<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\FronController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\SlidesController;
use App\Http\Controllers\Admin\WorkersHighlightController;
use App\Http\Controllers\Admin\NewsController;
use App\Http\Controllers\Admin\PayBoxController;
use App\Http\Controllers\Admin\AnswersController;
use App\Http\Controllers\Admin\CampaignsController;
use App\Http\Controllers\Admin\CommissionController;
use App\Http\Controllers\Admin\QualitysController;



//rotas publicas
Route::get('/', [FronController::class, 'showHome'])->name('front.home');
Route::get('/caixa', [FronController::class, 'showPayBox'])->name('front.paybox');
Route::get('/campanhas', [FronController::class, 'showCampaigns'])->name('front.campaigns');
Route::get('/new/{id}', [FronController::class, 'shownew'])->name('front.shownew');

//rotas de login
Route::group(['prefix' => 'admin', 'as' => 'admin.'], function () {
    Route::get('/', [AuthController::class, 'showLoginForm'])->name('login');
    Route::post('login', [AuthController::class, 'login'])->name('login.do');


    /**rotas protegidas por necessidade de login**/
//    Route::group(['middleware' => ['auth']], function () {

        Route::get('/inicio', [AuthController::class, 'home'])->name('home');
        Route::get('/slides', [AuthController::class, 'showUploadForm'])->name('formupload');
        Route::get('/comite/pautas', [AuthController::class, 'showComiteList'])->name('comite.listarpautas');


        Route::resource('users', UserController::class);
        Route::resource('permissions', PermissionController::class);
        Route::resource('roles', RoleController::class);
        Route::resource('posts', PostController::class);
        Route::resource('slides', SlidesController::class);
        Route::resource('workers', WorkersHighlightController::class);
        Route::resource('qualitys', QualitysController::class);
        Route::resource('news', NewsController::class);
        Route::resource('paybox', PayBoxController::class);
        Route::resource('answers', AnswersController::class);
            Route::resource('campaigns', CampaignsController::class);
            Route::resource('commission', CommissionController::class);

//    });


    /**Rotas logout**/
    Route::get('/logout', [AuthController::class, 'logout'])->name('logout');
});
