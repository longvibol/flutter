<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

// basic route 

Route::get('/home',function(){
return view('home');
});

// route return json 

Route::get('data',function(){
    return response()->json([
'name' => 'dara',
'age'=> '20',

    ]);
});

// route parameter 

Route::get('user/{id}',function($id){
    return $id;
});

// Optional Router 
Route::get('student/{name?}',function(?string $name=null){
    return $name;
});







