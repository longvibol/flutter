<?php

namespace App\Http\Controllers;
use App\Models\Product;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    // get all products
    public function index()
    {
        $products = Product::all();
        return response()->json($products);
    }

    // store a new product
    public function store(Request $request)
    {
        $fields = $request->all();
        Product::create($fields);
        return response()->json(['message' => 'Product created successfully']);
    }
    // update a product

    public function update(Request $request, $id){
        $product = Product::find($id);
        if(!$product){
            return response()->json(['message'=> 'Product not found'], 404);
        }
        $fields = $request->all(); // if it have product id then we get all the fields
        $product->update($fields);
        return response()->json(['message' => 'Product updated successfully']);
    }

    // Delete 
    public function destroy($id){
        $product = Product::find($id);
        if(!$product){
            return response()->json(['message'=> 'Product not found'], 404);
        }
        $product->delete();
        return response()->json(['message' => 'Product deleted successfully']);
    }    
}
