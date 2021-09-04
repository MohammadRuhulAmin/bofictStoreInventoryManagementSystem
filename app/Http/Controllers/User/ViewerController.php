<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Product;
use App\Models\Admin\Department;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;

class ViewerController extends Controller
{
    public function index(){
        $products = Product::orderby('created_at','DESC')->get();
        return view('user.products.index',compact('products'));
    }

    public function details($id){
        $product = Product::findOrFail($id);
        return view('user.products.show',compact('product'));
    }
    public function dashboard(){
        $total_department = Department::count();
       $total_category = Category::count();
     
       $total_product = Product::count();
        $total_brand = Brand::count();

       $products = Product::orderby('created_at','DESC')->get();
       

       return view('user.dashboard')->with(
           [
               'total_department'=>$total_department,
                'total_brand' =>$total_brand,
               'total_product' =>$total_product,
                'total_category' =>$total_category,
               'products' =>$products
           
           ]
           );
    }
}
