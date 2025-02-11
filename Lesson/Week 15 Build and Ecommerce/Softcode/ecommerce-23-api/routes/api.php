<?php

use App\Http\Controllers\AuthController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::post('login',[AuthController::class,'login']);
Route::post('register',[AuthController::class,'register']);


Route::middleware('auth:sanctum')->group(function(){
    Route::post('logout',[AuthController::class,'logout']);

    // category routes
   Route::get('categories',[CategoryController::class,'index']); // Get all categories
    Route::post('categories',[CategoryController::class,'store']); // Create a new category
    Route::post('categories/{id}',[CategoryController::class,'update']); // Update a category
    Route::delete('categories/{id}',[CategoryController::class,'destroy']); // Delete a category

    // product routes
    Route::post('products',[ProductController::class,'store']); // Create a new product
    Route::post('products/{id}',[ProductController::class,'update']); // Update a product
    Route::delete('products/{id}',[ProductController::class,'destroy']); // Delete a product
   
});

 // product routes
 Route::get('products',[ProductController::class,'index']); // Get all products
