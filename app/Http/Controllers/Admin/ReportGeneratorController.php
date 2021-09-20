<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;
use App\Models\Admin\Subcategory;
use App\Exports\ProductExportByCategory;
use Excel;
use App\Exports\ProductExport;

class ReportGeneratorController extends Controller
{
    public function index(){
        
        $categories = Category::orderby('created_at','DESC')->get();
        $subcategories = Subcategory::orderby('created_at','DESC')->get();
       return view('admin.reports.index',compact('categories','subcategories'));
    }

    public function exportReportByCategory(Request $request){
        $this->validate($request,[
            'SearchByCategory_1'=>'required',
        ]);
        session()->put(['categoryName'=>$request->SearchByCategory_1]);
        return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
    }
    public function exportReportByCategorySubCategory(Request $request){
        $this->validate($request,[
            'SearchByCategory_2'=>'required',
            'SearchBySubCategory_2'=>'required',
        ]);
        session()->put(['categoryName'=>$request->SearchByCategory_2]);
        session()->put(['subCategoryName'=>$request->SearchBySubCategory_2]);
        return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
    }
}
