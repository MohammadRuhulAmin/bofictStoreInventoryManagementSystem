<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\User;
use App\Models\ProductStock;
use App\Models\ReturnProduct;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
       $total_products = Product::count();
       $total_users = User::count();
       $total_stocks_in = ProductStock::where('status',ProductStock::STOCK_IN)->count();
       $total_return_products = ReturnProduct::count();
       $recent_products = Product::latest()->limit(10)->get();
       return view('dashboard')->with(
           [
               'total_products'=>$total_products,
               'total_users'=>$total_users,
               'total_stocks_in'=>$total_stocks_in,
               'total_return_products' =>$total_return_products,
               'recent_products' =>$recent_products
           
           ]
           );
     
    }
}
