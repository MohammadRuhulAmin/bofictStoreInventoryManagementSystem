<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;


use App\Models\Admin\Category;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Product;
use App\Models\Admin\Type;
use App\Models\Admin\Department;
use App\Models\Admin\Item;
use App\Models\Admin\Brand;
use App\Models\Admin\Productissued;

class InformationGeneratorController extends Controller
{
    public function informationForSpecificProduct(Request $request){
        $this->validate($request,[
            'productName'=>'required',
        ]);
        
        $productInfo = Product::where(['name' =>$request->productName])->first();
        $product = Product::findOrFail($productInfo->id);
        $productUserList = $product->productissueds;
        $complaintsOfProduct = Product::findOrFail($productInfo->id)->complaints;
        // $pdf = PDF::loadView('admin.reports.pdf.catSubCatBrandItemType',$data);
        // return $pdf->download('productList.pdf');

        $data = [
            'Title' =>'BOF',
            'Dept' =>'ICT CELL',
            'productUserList' =>$productUserList,
            'product' =>$product,
            'complaintsOfProduct' =>$complaintsOfProduct,
            
        ];
        
        return view('admin.information.specificProduct',$data);
        

    }
    
    public function informationForSpecificUser(Request $request){
        //return $request;
        $userInfo = Productissued::where(['bofid' => $request->BofUserID])->first();
        $productUserInfo = Productissued::where(['id'=>$userInfo->id ])->first();
        $productInfo = $productUserInfo->products;
        $totalProductUsed =  $productUserInfo->products->count();
        $data = [
            'Title' =>'BOF',
            'Dept' =>'ICT CELL',
            'productUserInfo' =>$productUserInfo,
            'productInfo' =>$productInfo,
            'totalProductUsed' =>$totalProductUsed,

            
        ];
        return view('admin.information.specificUser',$data);
    } 
    // Information for All Stuff 
    public function informationGenerateReportAllStuff(Request $request){
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
                'Department' =>$department,
                'TotalProduct' =>count($productList),
            ];
            return view('admin.information.categoryInformation.dept',$data);
        }
        //for category
        else if($category !== null &&  $department === null   &&  $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['category'=>$category])->get();
            $totalProduct = count($productList);
            if($totalProduct !== 0){
                $data = [
                    'productsList' =>$productList,
                    'Category' =>$category,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.cat',$data);
                

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
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                
                return view('admin.information.categoryInformation.subCat',$data);
              
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
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.brand',$data);

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
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];

                return view('admin.information.categoryInformation.item',$data);
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
                    
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.type',$data);
               
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
                    'Department' =>$department,
                    'Category' =>$category,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.deptCat',$data);
               
               
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
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.deptSubCat',$data);
               
               
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
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.deptBrand',$data);
            }
            else{
                flash('No Data Has found for '. $department ."Department &". $brand." Brand")->error();
                return back();
            }
           
        }
         //for department & item
        else if($department !== null && $category === null && $subcategory === null && $brand === null && $item !== null && $type === null){
            $productList = Product::where(['department'=>$department ,'item'=>$item])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Department' =>$department,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.deptItem',$data);
                
               
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
                    'Department' =>$department,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.deptType',$data);
               
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
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.catSubcat',$data);
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
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.catBrand',$data);
                
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
                    'Category' =>$category,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.catItem',$data);
            }
            else{
                flash('No Data Has found for '. $category ." Category &". $item." Item ")->error();
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
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.catType',$data);
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
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.subCatBrand',$data);
               
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
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.subCatItem',$data);
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
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.subCatType',$data);
               
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
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.brandItem',$data);
                
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
                    'Brand' =>$brand,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.brandType',$data);
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
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.itemType',$data);
                
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
                  
                    'Department' =>$department,
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptCatSubcat',$data);
               
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
                    'Department' =>$department,
                    'Category' =>$category,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptCatBrand',$data);
                
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
                   
                    'Department' =>$department,
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptCatType',$data);
                
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
                    'Department' =>$department,
                    'Category' =>$category,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptCatItem',$data);
                
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
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptSubCatBrand',$data);
                
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
                  
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptSubCatItem',$data);
                
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
                
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptSubCatType',$data);
               
            }
            else{
                flash('No Data Has found for '. $department ." Department & ". $subcategory." Subcategory ". $type." Type ")->error();
                return back();
            }
        }
         //for department , Brand , Item 
         else if($department !== null && $category === null && $subcategory === null && $brand !== null && $item !==  null && $type === null ){
            $productList = Product::where(['department'=>$department ,'brand'=>$brand,'item' =>$item])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptBrandItem',$data);
               
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
                   
                    'Department' =>$department,
                    'Brand' =>$brand,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptBrandType',$data);
               
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
                 
                    'Department' =>$department,
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.deptItemType',$data);
               
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
                  
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'TotalProduct' =>$totalProduct,

                ];
                return view('admin.information.categoryInformation.catSubcatBrand',$data);
                
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
                
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                ];
                return view('admin.information.categoryInformation.catSubcatItem',$data);
                
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
               
                    'Category' =>$category,
                    'Subcategory' =>$subcategory,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                return view('admin.information.categoryInformation.catSubcatType',$data);
               
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
                    'Brand' =>$brand,
                    'Subcategory' =>$subcategory,
                    'Item' =>$item,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                return view('admin.information.categoryInformation.subCatBrandItem',$data);
                
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
        //department category item type 
        else if($department !==  null && $category !== null && $subcategory === null && $brand === null && $item !==  null && $type !== null ){
            $productList = Product::where(['department'=>$department ,'category'=>$category,'item' =>$item,'type' =>$type ])->get();
           
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                   
                    'Department' =>$department,
                    'Category' =>$category,
                    'Item' =>$item,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                    
                ];
                $pdf = PDF::loadView('admin.reports.pdf.deptCatItemType',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $department ." department & ". $category." Category ". $item." Item  ".$type." Type")->error();
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
        //for input field 6
        //category subcategory brand item type department 
        else if($department !==  null && $category !== null && $subcategory !== null && $brand !== null && $item !==  null && $type !== null ){
            $productList = Product::where(['brand'=>$brand ,'subcategory'=>$subcategory,'item' =>$item,'category' =>$category,'type' =>$type ,'department' =>$department])->get();
            $totalProduct = count($productList);
            if($totalProduct !==0 ){
                $data = [
                    'productsList' =>$productList,
                   
                    'Department' =>$department,
                    'Subcategory' =>$subcategory,
                    'Brand' =>$brand,
                    'Item' =>$item,
                    'Category' =>$category,
                    'Type' =>$type,
                    'TotalProduct' =>$totalProduct,
                ];
                $pdf = PDF::loadView('admin.reports.pdf.catSubCatBrandItemTypeDept',$data);
                return $pdf->download('productList.pdf');
            }
            else{
                flash('No Data Has found for '. $subcategory ." Subcategory & ". $brand." Brand ". $item." Item  ".$type." Type ".$category ."Category ".$department ." Department" )->error();
                return back();
            }
        }
        else{
            flash("No Data is Match for this pattern ! we will work on it!" )->error();
            return back();
        }
    } 

}
