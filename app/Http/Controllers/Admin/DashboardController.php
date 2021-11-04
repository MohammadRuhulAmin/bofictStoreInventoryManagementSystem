<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Admin\Product;
use App\Models\Admin\Department;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;
use Illuminate\Http\Request;
use App\Models\Admin\Item;
use App\Models\Technician\Complaint;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Type;
use App\Models\Admin\Productissued;

class DashboardController extends Controller
{
    public function index(){
        
         


        $total_department = Department::count();
        $total_category = Category::count();
        $total_product = Product::count();
        $total_brand = Brand::count();
        $total_complaints = Complaint::count();
        $today_complaints = Complaint::where(['date'=>date('Y-m-d')])->count();
        $products = Product::orderby('created_at','DESC')->get(); 
        // for select options 
        $departmentList = Department::orderby('created_at','DESC')->get();
        $categoryList = Category::orderby('created_at','DESC')->get();
        $subcategoryList =Subcategory::orderby('created_at','DESC')->get();
        $typeList = Type::orderby('created_at','DESC')->get();
        $itemList = Item::orderby('created_at','DESC')->get();
        $brandList = Brand::orderby('created_at','DESC')->get();
        $productsList = Product::orderby('created_at','DESC')->get();
        $usersIdList = Productissued::orderby('created_at','DESC')->get();
        //----------------------------------------------------------------
        return view('dashboard')->with(
           [
                'total_department'=>$total_department,
                'total_brand' =>$total_brand,
                'total_product' =>$total_product,
                'total_category' =>$total_category,
                'products' =>$products,
                'total_complaints' =>$total_complaints,
                'today_complaints' =>$today_complaints,
                'departmentList' =>$departmentList,
                'categoryList' =>$categoryList,
                'subcategoryList' =>$subcategoryList,
                'typeList' =>$typeList, 
                'itemList' =>$itemList ,
                'brandList' => $brandList,
                'productsList' =>$productsList,
                'usersIdList' =>$usersIdList,
                
           ]
           );
    }
}
