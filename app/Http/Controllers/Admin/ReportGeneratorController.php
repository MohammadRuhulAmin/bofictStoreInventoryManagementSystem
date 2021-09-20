<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;
use App\Exports\ProductExportByCategory;
use Excel;
use App\Exports\ProductExport;

class ReportGeneratorController extends Controller
{
    public function index(){
        
        $categories = Category::orderby('created_at','DESC')->get();
       return view('admin.reports.index',compact('categories'));
    }
    public function exportReportByCategory(Request $request){
        session()->put(['categoryName'=>$request->SearchByCategory]);
        return Excel::download(new ProductExportByCategory($request->name),'productListByCategory.xlsx');
    }
}
