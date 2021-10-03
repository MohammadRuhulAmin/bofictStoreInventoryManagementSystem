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
        // for only subcategory stock report 
        else if($category === null  && $subcategory !==  null && $brand === null && $item === null && $type === null){
            $stockReport = Stock::where(['subcategory'=>$subcategory])->get();
            $stockReportLastRow = Stock::where(['subcategory'=>$subcategory])->latest()->first();
            $data = [
                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Subcategory' =>$subcategory,
                'CurrentStock' =>$stockReportLastRow->stockBalance ?? 0 ,
                
            ];
            $pdf = PDF::loadView('admin.stockReport.pdf.subCat',$data);
            return $pdf->download('stockReport.pdf');
        }

        //for only brand stock report 
        else if($category === null  && $subcategory ===  null && $brand !== null && $item === null && $type === null){
            $stockReport = Stock::where(['brand'=>$brand])->get();
            $stockReportLastRow = Stock::where(['brand'=>$brand])->latest()->first();
            $data = [
                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Brand' =>$brand,
                'CurrentStock' =>$stockReportLastRow->stockBalance ?? 0 ,
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.brand',$data);
            return $pdf->download('stockReport.pdf');
        }
        //for only item stock report
        else if($category === null  && $subcategory ===  null && $brand === null && $item !== null && $type === null){
            $stockReport = Stock::where(['item'=>$item])->get();
            $stockReportLastRow = Stock::where(['item'=>$item])->latest()->first();
            $data = [
                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Item' =>$item,
                'CurrentStock' =>$stockReportLastRow->stockBalance ?? 0 ,
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.item',$data);
            return $pdf->download('stockReport.pdf');
        }
        
        //for only type stock report
        else if($category === null  && $subcategory ===  null && $brand === null && $item === null && $type !== null){
            $stockReport = Stock::where(['type'=>$type])->get();
            $stockReportLastRow = Stock::where(['type'=>$type])->latest()->first();
            $data = [
                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Type' =>$type,
                'CurrentStock' => $stockReportLastRow->stockBalance ?? 0 ,
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.type',$data);
            return $pdf->download('stockReport.pdf');
        }

         //for input type 2 
         //for category & subcategory
         else if($category !== null  && $subcategory !==  null && $brand === null && $item === null && $type === null){
            $stockReport = Stock::where(['category' =>$category , 'subcategory' =>$subcategory])->get();
            $stockReportLastRow = Stock::where(['category' =>$category , 'subcategory' =>$subcategory])->latest()->first();
            $data = [
                'Title' =>'BOF',  
                'Dept' =>'ICT CELL', 
                'StockReports' => $stockReport, 
                'Category' => $category,
                'Subcategory' =>$subcategory,
                'CurrentStock' => $stockReportLastRow->stockBalance ?? 0 ,
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.catSubcat',$data);
            return $pdf->download('stockReport.pdf');
        }
        //for category & brand 
        else if($category !== null  && $subcategory ===  null && $brand !== null && $item === null && $type === null){
            $stockReport = Stock::where(['category' =>$category , 'subcategory' =>$subcategory])->get();
            $stockReportLastRow = Stock::where(['category' =>$category , 'brand' =>$brand])->latest()->first();
            $data = [
                'Title' =>'BOF',  
                'Dept' =>'ICT CELL', 
                'StockReports' => $stockReport, 
                'Category' => $category,
                'Brand' =>$brand,
                'CurrentStock' => $stockReportLastRow->stockBalance ?? 0 ,
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.catBrand',$data);
            return $pdf->download('stockReport.pdf');
        }
         //for category & item 
         else if($category !== null  && $subcategory ===  null && $brand === null && $item !== null && $type === null){
            $stockReport = Stock::where(['category' =>$category , 'item' =>$item])->get();
            $stockReportLastRow = Stock::where(['category' =>$category , 'item' =>$item])->latest()->first();
            $data = [
                'Title' =>'BOF',  
                'Dept' =>'ICT CELL', 
                'StockReports' => $stockReport, 
                'Category' => $category,
                'Item' =>$item,
                'CurrentStock' => $stockReportLastRow->stockBalance ?? 0 , 
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.catItem',$data);
            return $pdf->download('stockReport.pdf');
        }
        // for category type 
        else if($category !== null  && $subcategory ===  null && $brand === null && $item === null && $type !== null){
            $stockReport = Stock::where(['category' =>$category , 'type' =>$type])->get();
            $stockReportLastRow = Stock::where(['category' =>$category , 'type' =>$type])->latest()->first();
            $data = [
                'Title' =>'BOF',  
                'Dept' =>'ICT CELL',
                'StockReports' => $stockReport,
                'Category' => $category,
                'Type' =>$type,
                'CurrentStock' =>$stockReportLastRow->stockBalance ?? 0 , 
            ];

            $pdf = PDF::loadView('admin.stockReport.pdf.catType',$data);
            return $pdf->download('stockReport.pdf');
        }




        else{ 
            flash('Condition is not added yet , please let us know ')->error();
           return back();   
        }
       
    }
}
