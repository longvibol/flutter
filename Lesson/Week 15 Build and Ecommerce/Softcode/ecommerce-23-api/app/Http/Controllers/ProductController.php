<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Support\Facades\Storage;
class ProductController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'price' => 'required|numeric',
            'category_id' => 'required',
            'image' => 'required|image',
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_path = Storage::disk('public')->put('products', $image);
            $request->image = $image_path;
        }


        $product = Product::create(([
            'name' => $request->name,
            'description' => $request->description,
            'price' => $request->price,
            'category_id' => $request->category_id,
            'image'=> $request->image
        ]));

        $product->image = url('storage/'.$product->image);
        return response()->json([
            'message' => 'Product created successfully',
            'product' => $product
        ]);
    }

    public function update(Request $request, $id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json([
                'message' => 'Product not found',
            ], 404);
        }
        $product->update($request->all());
        return response()->json([
            'message' => 'Product updated successfully',
            'product' => $product
        ]);
    }

    public function destroy($id)
    {
        $product = Product::find($id);
        if (!$product) {
            return response()->json([
                'message' => 'Product not found',
            ], 404);
        }
        $product->delete();
        return response()->json([
            'message' => 'Product deleted successfully',
        ]);
    }

    public function index1()
    {
        $products = Product::all();
        return response()->json([
            'products' => $products
        ]);
    }

    public function index(){
        // $categories = Category::with('products')->get();
        // $categories = Category::with('products')->latest()->get();
        $categories = Category::with('products')->latest()->get(['id', 'name']);
        $groupProducts = $categories->map(function($category){
            return [
                'category_id' => $category->id,
                'category_name' => $category->name,
                'products' => $category->products->map(function($product){
                    $product->image = url('storage/'.$product->image);
                    return $product;
                })
                
            ];
        });
        return response()->json([
            'categories' => $groupProducts
        ]);
    }
}
