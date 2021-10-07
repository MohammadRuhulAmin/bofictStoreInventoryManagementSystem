<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin\Product;
use DataTables;
use DB;
class TestProductController extends Controller
{
    public function allProductsList(Request $request){
        
        //$products = Product::orderby('created_at','DESC')->get();
        $products = DB::table('products')->orderby('created_at','DESC');
        return DataTables::queryBuilder($products)->toJson();
      
    }
    public function view(){
        return view('testproducts');
    }
}
