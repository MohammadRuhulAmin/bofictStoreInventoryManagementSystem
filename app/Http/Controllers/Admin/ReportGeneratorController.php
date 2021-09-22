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
use PDF; 
// use Excel;
use Maatwebsite\Excel\Excel;
use App\Exports\ProductExport;
class ReportGeneratorController extends Controller
{
   

    public function ReportIndex(){
        return view('admin.reports.reportCategory');
    }
    public function index(){
        $categories = Category::orderby('created_at','DESC')->get();
        $subcategories = Subcategory::orderby('created_at','DESC')->get();
        $types = Type::orderby('created_at','DESC')->get();
        $departments =  Department::orderby('created_at','DESC')->get();
        return view('admin.reports.department.index',compact('categories','subcategories','types','departments'));
    }

    public function exportReportByCategory(Request $request){
        $this->validate($request,[
            'SearchByCategory_1'=>'required',
        ]);
        session()->put(['categoryName'=>$request->SearchByCategory_1]);
        return $this->excel->download(new ProductExportByCategory,'productList.xlsx');
        
    }
    
    public function exportReportByCategoryToPDF(Request $request){
        $this->validate($request,[
            'SearchByCategory_1'=>'required',
        ]);
        $categoryName = $request->SearchByCategory_1;
        $productsList = Product::where('category',$categoryName)->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
           
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'category' =>$categoryName ,
            
        ];
         
        $pdf = PDF::loadView('admin.reports.pdf.productList_cat',$data);
        return $pdf->download('productList.pdf');
    }

    public function exportReportByCategorySubCategory(Request $request){
        $this->validate($request,[
            'SearchByCategory_2'=>'required',
            'SearchBySubCategory_2'=>'required',
        ]);

        session()->put(['categoryName'=>$request->SearchByCategory_2]);
        session()->put(['subCategoryName'=>$request->SearchBySubCategory_2]);
        //return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
        return $this->excel->download(new ProductExportByCategorySubCategory(),'productList.xlsx');
    }
    public function exportReportByCategorySubCategoryToPDF(Request $request){
        $this->validate($request,[
            'SearchByCategory_2'=>'required',
            'SearchBySubCategory_2'=>'required',
        ]);

        $categoryName = $request->SearchByCategory_2;
        $subCategoryName = $request->SearchBySubCategory_2;
        $productsList = Product::where(['category'=>$categoryName , 'subcategory' =>$subCategoryName ])->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'category' =>$categoryName ,
            'subcategory' =>$subCategoryName,
        ];
         
        $pdf = PDF::loadView('admin.reports.pdf.productList_catSubcat',$data);
        return $pdf->download('productList.pdf');
    }

    public function expRepByCatSubCatTypeToPDF(Request $request){
        $this->validate($request,[
            'SearchByCategory_3'=>'required',
            'SearchBySubCategory_3'=>'required',
             'Type_3' =>'required',
        ]);

        $categoryName = $request->SearchByCategory_3;
        $subCategoryName = $request->SearchBySubCategory_3;
        $type = $request->Type_3;

        $productsList = Product::where(['category'=>$categoryName , 'subcategory' =>$subCategoryName ,'type' =>$type])->get();
        $data = [
            'title' =>'BOF',
            'Dept' => 'ICT Cell',
            'TotalProduct' =>count($productsList),
            'productsList' =>$productsList,
            'category' =>$categoryName ,
            'subcategory' =>$subCategoryName,
            'type' => $type,
        ];
        
        $pdf = PDF::loadView('admin.reports.pdf.productList_catScatType',$data);
        return $pdf->download('productList.pdf');
    } 

    
}
