<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Category;
use App\Models\Admin\Subcategory;
use App\Exports\ProductExportByCategory;
use App\Exports\ProductExportByCategorySubCategory;
use App\Models\Admin\Product;
use PDF; 
// use Excel;
use Maatwebsite\Excel\Excel;
use App\Exports\ProductExport;

class ReportGeneratorController extends Controller
{
    // for using constroctor 
    private $excel;
    public function __construct(Excel $excel){
        $this->excel = $excel;
    }

    //
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
        return $this->excel->download(new ProductExportByCategory,'productList.xlsx');
        //return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
    }
    
    public function exportReportByCategoryToPDF(Request $request){
        $this->validate($request,[
            'SearchByCategory_1'=>'required',
        ]);
        $categoryName = $request->SearchByCategory_1;
        $productsList = Product::where('category',$categoryName)->get();
        $data = [
            'title' =>'Bangladesh Ordnance Factories',
            'OIC' => 'OIC : Major Khondakar Mohammad Rakibul Hasan',
            'IC' => 'IC : SAE Nurul Bari',
            'productsList' =>$productsList,
        ]; 
         
        $pdf = PDF::loadView('admin.reports.pdf.productList',$data);
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

        session()->put(['categoryName'=>$request->SearchByCategory_2]);
        session()->put(['subCategoryName'=>$request->SearchBySubCategory_2]);
        //return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
        return $this->excel->download(new ProductExportByCategorySubCategory,'productList.pdf',Excel::DOMPDF);
    }


}
