<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DataTables;
use DB;
use App\Models\Admin\Product;

class QuiceAccessController extends Controller
{
    public function allProductsList(Request $request){
        $products = DB::table('products')->orderBy('department')->get();
        return Datatables::of($products)->make(true);
    }
    public function allProductsListIndex(){
        return view('allProductsList');
    }
}
