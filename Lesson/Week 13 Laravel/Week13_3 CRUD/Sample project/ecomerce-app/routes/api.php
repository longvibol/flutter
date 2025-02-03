<?php

use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::get('products',[ProductController::class, 'index']); // get 
Route::post('products',[ProductController::class, 'store']); // post : to create : store is the function name in ProductController
Route::put('product/{id}',[ProductController::class, 'update']); // put : to update
Route::delete('product/{id}',[ProductController::class, 'destroy']); // delete : to delete
