<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;
use App\Models\Admin\Subcategory;
use App\Exports\ProductExportByCategory;
use App\Exports\ProductExportByCategorySubCategory;
use App\Models\Admin\Product;
use App\Models\Admin\Type;
use App\Models\Admin\Department;
use App\Models\Admin\Item;
use App\Models\Admin\Brand;
use PDF; 
// use Excel;
use Maatwebsite\Excel\Excel;
use App\Exports\ProductExport;
class ReportGeneratorController extends Controller
{
    public function index(){

        $departmentList = Department::orderby('created_at','DESC')->get();
        $categoryList = Category::orderby('created_at','DESC')->get();
        $subcategoryList =Subcategory::orderby('created_at','DESC')->get();
        $typeList = Type::orderby('created_at','DESC')->get();
        $itemList = Item::orderby('created_at','DESC')->get();
        $brandList = Brand::orderby('created_at','DESC')->get();   
       return view('admin.reports.index')->with(
           [

                'categoryList' =>$categoryList,
                'subcategoryList' =>$subcategoryList,
                'typeList' =>$typeList,
                'itemList' =>$itemList,
                'brandList' =>$brandList,
                'departmentList' =>$departmentList,
                
           ]
           );
    }

    public function generateReportAllStuff(Request $request){
        return $request->all();
    }



   
    
}
