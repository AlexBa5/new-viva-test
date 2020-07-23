<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::post('register', 'api\AuthController@register');
Route::post('login', 'api\AuthController@login');

Route::apiResource('post', 'api\UsersController');
Route::apiResource('user', 'api\UsersController');