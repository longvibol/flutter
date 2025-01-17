<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;
use App\Models\Product;

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

// Basice qurey 

Route::get('/students',function(){
    $students = DB::table('students')->get();
    return response()->json($students);
});

// create new student

Route::get('insert-new-student',function(){
    for($i= 0; $i< 1; $i++){
        DB::table('students')->insert([
            'fullname' => 'Vibol',
            'age' => 20 + $i,
            'phone' => '0123456789',
            'bio' => 'I am a student',
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
    return response()->json([
        'message' => 'Insert new student successfully'
    ]);
});


//update student 

Route::get('update-student/{id}',function($id){
    $affected = DB::table('students')
    ->where('id',$id)
    ->update([
        'fullname' => 'Dara',
        'age' => 20,
        'bio' => 'I am a student',
    ]);
    if($affected){
        return response()->json([
            'message' => 'Update student successfully'
        ]);
    }else{
        return response()->json([
            'message' => 'Update student failed'
        ]);
    }
});

// Delete student

Route::get('/delete-student/{id}',function($id){
    $deleted = DB::table('students')->where('id','=',$id)->delete();
    return response()->json([
        'message' => 'Delete student successfully'
    ]);
});


// ORM Section 

Route::get('/products',function(){
    $products = Product::all();
    // return response()->json($products);
   return view('products.index');
});