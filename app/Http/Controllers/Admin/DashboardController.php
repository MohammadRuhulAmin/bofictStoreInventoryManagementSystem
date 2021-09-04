<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Admin\Product;
use App\Models\Admin\Department;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;
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
