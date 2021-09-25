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
        $department = $request->department;
        $category = $request->category;
        $subcategory = $request->subcategory;
        $brand = $request->brand;
        $item = $request->item;
        $type = $request->type;
        
        // if input field is 1

        //for department
        if($department !== null && $category === null && $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department])->get();
            $data = [
                'productsList' =>$productList,
                'Title' =>'BOF',
                'Dept' =>'ICT CELL',
                'Department' =>$department,
                'TotalProduct' =>count($productList),
            ];
            $pdf = PDF::loadView('admin.reports.pdf.dept',$data);
            return $pdf->download('productList.pdf');
        }
        //for category
        else if($category !== null &&  $department === null   &&  $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['category'=>$category])->get();
            $totalProduct = count($productList);
            if($totalProduct !== 0){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.cat',$data);
                return $pdf->download('productList.pdf');

            }
            else{
                flash('No Data Has found for '. $category . " Category")->error();
                return back();
            }
            
        }
        //for subcategory
        else if($subcategory !== null &&   $department === null   &&  $category === null && $brand === null && $item === null &&  $type === null){
            $productList = Product::where(['subcategory'=>$subcategory])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                
                $pdf = PDF::loadView('admin.reports.pdf.subcat',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory. " Subcategory")->error();
                return back();
            }

        }
        // for brand
        else if($brand !== null &&   $department === null   &&  $category === null && $subcategory === null && $item === null &&  $type === null){
            $productList = Product::where(['brand'=>$brand])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];

                $pdf = PDF::loadView('admin.reports.pdf.brand',$data);
                return $pdf->download('productList.pdf'); 
               
            }
            else{
                flash('No Data Has found for '. $brand. " brand")->error();
                return back();
            }
            
        }
        //for item
        else if($item !== null &&   $department === null   &&  $category === null && $subcategory === null && $brand === null &&  $type === null){
            $productList = Product::where(['item'=>$item])->get();
            $totalProduct = count($productList); 
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];

                $pdf = PDF::loadView('admin.reports.pdf.item',$data);
                return $pdf->download('productList.pdf'); 
            }
            else{
                flash('No Data Has found for '. $item. "Item")->error();
                return back();
            }
            
        }
        // for type
        else if($type !== null &&   $department === null   &&  $category === null && $subcategory === null && $brand === null &&  $item === null){
            $productList = Product::where(['type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.type',$data);
                return $pdf->download('productList.pdf');
               
            }
            else{
                flash('No Data Has found for '. $type. " Type")->error();
                return back();
            }
        }

        //for input field 2

        //for department & category
        else if($department !== null && $category !== null && $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'category'=>$category])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCat',$data);
                return $pdf->download('productList.pdf');
               
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $category." Category")->error();
                return back();
            }

          
        }
         //for department & Subcategory
        else if($department !== null && $category === null && $subcategory !== null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'SubCategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptSubCat',$data);
                return $pdf->download('productList.pdf');
               
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $subcategory." Subcategory ")->error();
                return back();
            }
          
        }
         //for department & brand
        else if($department !== null && $category === null && $subcategory === null && $brand !== null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'brand'=>$brand])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptBrand',$data);
                return $pdf->download('productList.pdf');
               
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $brand." Brand")->error();
                return back();
            }
           
        }
         //for department & Subcategory
        else if($department !== null && $category === null && $subcategory === null && $brand === null && $item !== null && $type === null){
            $productList = Product::where(['department'=>$department ,'item'=>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptItem',$data);
                return $pdf->download('productList.pdf');
               
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $item." Item")->error();
                return back();
            }
            
        }
         //for department & Type
        else if($department !== null && $category === null && $subcategory === null && $brand === null && $item === null && $type !== null){
            $productList = Product::where(['department'=>$department ,'type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $type." Type")->error();
                return back();
            }
           
        }

        
        //  category & subcategory 
        else if($department === null && $category !== null && $subcategory !== null && $brand === null && $item === null && $type === null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubcat',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category &". $subcategory." Subcategory ")->error();
                return back();
            }
            
        }

        //category & Brand
        else if($department === null && $category !== null && $subcategory === null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['category'=>$category ,'brand'=>$brand])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category &". $brand." Brand ")->error();
                return back();
            }
           
        }
        //category & item
        else if($department === null && $category !== null && $subcategory === null && $brand === null && $item !== null && $type === null ){
            $productList = Product::where(['category'=>$category ,'item'=>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category &". $item." Brand ")->error();
                return back();
            }

            
        }
        // category & type
        else if($department === null && $category !== null && $subcategory === null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['category'=>$category ,'type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category & ". $type." Brand ")->error();
                return back();
            }
            
        }
        //subcategory & Brand 
        else if($department === null && $category === null && $subcategory !== null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['subcategory'=>$subcategory ,'brand'=>$brand])->get();
            // return $productList;
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.subCatBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." SubCategory & ". $brand." Brand ")->error();
                return back();
            }
            
        }
        //subcategory  & item 
        else if($department === null && $category === null && $subcategory !== null && $brand === null && $item !== null && $type === null ){
            $productList = Product::where(['subcategory'=>$subcategory ,'item'=>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.subCatItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." SubCategory & ". $item." Item ")->error();
                return back();
            }
            
        }
         //subcategory  &  Type
         else if($department === null && $category === null && $subcategory !== null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['subcategory'=>$subcategory ,'type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.subCatType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." SubCategory & ". $type." Type ")->error();
                return back();
            }
            
        }
        //brand & item
        else if($department === null && $category === null && $subcategory === null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['brand'=>$brand ,'item'=>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.brandItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $brand ." Brand & ". $item." Item ")->error();
                return back();
            }
            
        }
        // brand & Type
        else if($department === null && $category === null && $subcategory === null && $brand !== null && $item ===  null && $type !== null ){
            $productList = Product::where(['brand'=>$brand ,'type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Brand' =>$brand,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.brandType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $brand ." Brand & ". $type." Type ")->error();
                return back();
            }
            
        }
        //item & Type 
        else if($department === null && $category === null && $subcategory === null && $brand === null && $item !==  null && $type !== null ){
            $productList = Product::where(['item'=>$item ,'type'=>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.itemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $item ." Item & ". $type." Type ")->error();
                return back();
            }
            
        }



        

        




        
    }



   
    
}
