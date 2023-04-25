<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post('/auth/register', [\App\Http\Controllers\Api\AuthController::class, 'createUser']);
Route::post('/auth/login', [\App\Http\Controllers\Api\AuthController::class, 'loginUser']);
Route::group(['middleware' => 'auth:sanctum'], function(){
    Route::apiResource('categories', \App\Http\Controllers\Api\CategoryController::class);
    Route::apiResource('titles', \App\Http\Controllers\Api\TitleController::class);
    Route::apiResource('chairs', \App\Http\Controllers\Api\ChairController::class);
    Route::apiResource('invitations', \App\Http\Controllers\Api\InvitationController::class);
});
