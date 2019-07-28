<?php

namespace App\Http\Controllers;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Product;

class ProductController extends Controller
{

public function __construct(){
$this->middleware(['auth','verified']);
}

public function index(){
	$products = Product::orderBy('id','asc')->paginate(4);
   return view('backend.product', compact('products'));
  }

public function productinsert(Request $request){

   Product::insert([
     'product_name' => $request->product_name,
     'product_description' => $request->product_description,
     'product_price' => $request->product_price,
     'product_quantity' => $request->product_quantity,
     'alert_quantity' => $request->alert_quantity,
     'created_at' => Carbon::now()

   ]);	
   return back()->with('status','Product Insert Successfully!');
  }

public function productedit($id){
  
   $product = Product::find($id);
  
   return view('backend.product-edit',compact('product'));

   
}
public function productupdate(Request $request){
  
  Product::find($request->product_id)->update([
     'product_name' => $request->product_name,
     'product_description' => $request->product_description,
     'product_price' => $request->product_price,
     'product_quantity' => $request->product_quantity,
     'alert_quantity' => $request->alert_quantity,
     'updated_at' => Carbon::now()

   ]);  
  return redirect('/product');

  }
public function productdelete($id){

    Product::find($id)->delete();

    return back()->with('delete','Product Deleted Successfully!');


 } 

}
