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
       $total_products = 0;
       $total_users = User::count();
       $total_stocks_in = 0;
       $total_return_products = 0;
       $recent_products = 0;

       $products = Product::orderby('created_at','DESC')->get();
       

       return view('dashboard')->with(
           [
               'total_products'=>$total_products,
               'total_users'=>$total_users,
               'total_stocks_in'=>$total_stocks_in,
               'total_return_products' =>$total_return_products,
               'recent_products' =>$recent_products,
               'products' =>$products
           
           ]
           );
     
    }
}
