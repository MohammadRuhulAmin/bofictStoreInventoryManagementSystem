<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Department;
use App\Models\Category;
use App\Models\Brand;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
       $total_department = Department::count();
       $total_category = Category::count();
     
       $total_product = Product::count();
        $total_brand = Brand::count();

       $products = Product::orderby('created_at','DESC')->get();
       

       return view('dashboard')->with(
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
