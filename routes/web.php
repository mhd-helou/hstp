<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('sendmail', [\App\Http\Controllers\MailController::class, 'sendEmail']);

Route::post('booleanText',function (\Illuminate\Http\Request $request) {
    if ($request = 1)
        return 'true';
    else return 'false';
});