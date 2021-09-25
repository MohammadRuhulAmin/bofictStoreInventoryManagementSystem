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
        // for Three input field 
        //Department & Category & Subcategory 
        else if($department !== null && $category !== null && $subcategory !== null && $brand === null && $item ===  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'subcategory' =>$subcategory])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatSubcat',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $category." category ". $subcategory." Subcategory ")->error();
                return back();
            }
            
        }
        // for department , category , brand 
        else if($department !== null && $category !== null && $subcategory === null && $brand !== null && $item ===  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'brand' =>$brand])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $category." category ". $brand." Brand ")->error();
                return back();
            }
            
        }
        //for department , category , Type 
        else if($department !== null && $category !== null && $subcategory === null && $brand === null && $item ===  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'type' =>$type])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $category." category ". $type." Type ")->error();
                return back();
            }
            
        }
        //for department , category , item 
        else if($department !== null && $category !== null && $subcategory === null && $brand === null && $item !==  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'item' =>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $category." category ". $item." Item ")->error();
                return back();
            }
            
        } 
        //for department , Subcategory , Brand 
        else if($department !== null && $category === null && $subcategory !== null && $brand !== null && $item ===  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory,'brand' =>$brand])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptSubCatBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $subcategory." Subcategory ". $brand." Brand ")->error();
                return back();
            }
            
        }
        //for department , Subcategory , Item  
        else if($department !== null && $category === null && $subcategory !== null && $brand === null && $item !==  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory,'item' =>$item])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptSubCatItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $subcategory." Subcategory ". $item." Item ")->error();
                return back();
            }
        }
         //for department , Subcategory , Type 
         else if($department !== null && $category === null && $subcategory !== null && $brand === null && $item ===  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory,'type' =>$type])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptSubCatType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $subcategory." Subcategory ". $type." Type ")->error();
                return back();
            }
        }
         //for department , Brand , Item 
         else if($department !== null && $category === null && $subcategory === null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory,'type' =>$type])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptBrandItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $brand." Brand ". $item." Item ")->error();
                return back();
            }
        }

         //for department , Brand , Type
         else if($department !== null && $category === null && $subcategory === null && $brand !== null && $item ===  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'brand'=>$brand,'type' =>$type])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptBrandType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $brand." Brand ". $type." Type ")->error();
                return back();
            }
        }
        // for department ,  item & type
        else if($department !==  null && $category === null && $subcategory === null && $brand === null && $item !==  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'item'=>$item,'type' =>$type])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptItemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $item." Item ". $type." Type ")->error();
                return back();
            }
        }
        // category , subcategory , Brand 
        else if($department ===  null && $category !== null && $subcategory !== null && $brand !== null && $item ===  null && $type === null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory,'brand' =>$brand])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubcatBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category & ". $subcategory." Subcategory ". $brand." Brand ")->error();
                return back();
            }
        }
        // category , subcategory , Item 
        else if($department ===  null && $category !== null && $subcategory !== null && $brand === null && $item !==  null && $type === null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory,'item' =>$item])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,


                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubcatItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category & ". $subcategory." Subcategory ". $item." Item  ")->error();
                return back();
            }
        }


        //category ,  subcategory , Type 
        else if($department ===  null && $category !== null && $subcategory !== null && $brand === null && $item ===  null && $type !== null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory,'type' =>$type])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubcatType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $category ." Category & ". $subcategory." Subcategory ". $type." Type  ")->error();
                return back();
            }
        }
        // subcategory , brand , item  
        else if($department ===  null && $category === null && $subcategory !== null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['subcategory'=>$subcategory ,'brand'=>$brand,'item' =>$item])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Brand' =>$brand,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.subCatBrandItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." subcategory & ". $brand." Brand ". $item." Item  ")->error();
                return back();
            }
        }
        //input field 4
        // Department , category , subcategory , Brand 
        else if($department !==  null && $category !== null && $subcategory !== null && $brand !== null && $item ===  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'subcategory' =>$subcategory,'brand' =>$brand ])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatSubCatBrand',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." department & ". $category." Category ". $subcategory." Subcategory  ".$brand." brand")->error();
                return back();
            }
        }
        // department category subcategory item
        else if($department !==  null && $category !== null && $subcategory !== null && $brand === null && $item !==  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'subcategory' =>$subcategory,'item' =>$item ])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatSubCatItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." department & ". $category." Category ". $subcategory." Subcategory  ".$item." item")->error();
                return back();
            }
        }
        // department category subcategory type 
        else if($department !==  null && $category !== null && $subcategory !== null && $brand === null && $item ===  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'subcategory' =>$subcategory,'type' =>$type ])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Department' =>$department,
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatSubCatType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." department & ". $category." Category ". $subcategory." Subcategory  ".$type." Type")->error();
                return back();
            }
        }

        //category subcategory brand item 
        else if($department ===  null && $category !== null && $subcategory !== null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['subcategory'=>$subcategory ,'category'=>$category,'brand' =>$brand,'item' =>$item ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.CatSubCatBrandItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $category." Category ". $brand." Brand  ".$item." Item")->error();
                return back();
            }
        }
        //category subcategory brand type 
        else if($department ===  null && $category !== null && $subcategory !== null && $brand !== null && $item ===  null && $type !== null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory,'brand' =>$brand,'type' =>$type ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.CatSubCatBrandType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $category." Category ". $brand." Brand  ".$type." Type")->error();
                return back();
            }
        }
        //category subcategory item type 

        else if($department ===  null && $category !== null && $subcategory !== null && $brand === null && $item !==  null && $type !== null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory,'item' =>$item,'type' =>$type ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Category' =>$category,
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.CatSubCatItemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $category." Category ". $item." Item  ".$type." Type")->error();
                return back();
            }
        }
        //Subcategory Brand Item Type  
        else if($department ===  null && $category === null && $subcategory !== null && $brand !== null && $item !==  null && $type !== null ){
            $productList = Product::where(['brand'=>$brand ,'subcategory'=>$subcategory,'item' =>$item,'type' =>$type ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.SubCatBrandItemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $brand." Brand ". $item." Item  ".$type." Type")->error();
                return back();
            }
        } 
          //Department  Subcategory Brand Item Type  
          else if($department !==  null && $category !== null && $subcategory !== null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['brand'=>$brand ,'subcategory'=>$subcategory,'item' =>$item,'category' =>$category,'department' =>$department ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'Category' =>$category,
                    'Department' =>$department,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptcatSubCatBrandItem',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $brand." Brand ". $item." Item  ".$department." Department ".$category ."Category " )->error();
                return back();
            }
        }
        // category subcategory brand item type
        else if($department ===  null && $category !== null && $subcategory !== null && $brand !== null && $item !==  null && $type !== null ){
            $productList = Product::where(['brand'=>$brand ,'subcategory'=>$subcategory,'item' =>$item,'category' =>$category,'type' =>$type ])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Title' =>'BOF',
                    'Dept' =>'ICT CELL',
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubCatBrandItemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $brand." Brand ". $item." Item  ".$type." Type ".$category ."Category " )->error();
                return back();
            }
        }









        



        

        




        
    }



   
    
}
