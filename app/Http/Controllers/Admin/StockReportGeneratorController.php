<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Stock; 
use App\Models\Admin\Category;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Brand;
use App\Models\Admin\Item;
use App\Models\Admin\Type;
use PDF; 
// use Excel;
use Maatwebsite\Excel\Excel;

class StockReportGeneratorController extends Controller
{
    public function index(){
        $categoryList = Category::orderby('created_at','DESC')->get();
        $subcategoryList = Subcategory::orderby('created_at','DESC')->get();
        $brandList = Brand::orderby('created_at','DESC')->get();
        $itemList = Item::orderby('created_at','DESC')->get();
        $typeList = Type::orderby('created_at','DESC')->get();
        return view('admin.stockReport.index',compact('categoryList','subcategoryList','brandList','itemList','typeList'));
    }
    public function StockReportGeneratorAllStuff(Request $request){
        $department = $request->department;
        $category = $request->category;
        $subcategory = $request->subcategory;
        $brand = $request->brand;
        $item = $request->item;
        $type = $request->type;

         // stock for input 
        //for only category stock report 
        if($category !== null  && $subcategory === null && $brand === null && $item === null && $type === null){
            $stockReport = Stock::where(['category'=>$category])->get();
            $stockReportLastRow = Stock::where(['category'=>$category])->latest()->first();
            $data = [

                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Category' =>$category,
                'CurrentStock' =>$stockReportLastRow->stockBalance ?? 0 , 
                
            ];
            $pdf = PDF::loadView('admin.stockReport.pdf.cat',$data);
            return $pdf->download('stockReport.pdf');
            
            
        }
        else{
            flash('Condition is not added yet , please let us know ')->error();
           return back();
        }
       
    }
}
