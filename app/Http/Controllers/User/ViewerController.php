<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Product;
use App\Models\Admin\Department;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Item;
use App\Models\Admin\Type;

class ViewerController extends Controller
{
    public function index(){
        $products = Product::orderby('created_at','DESC')->get();
        return view('user.products.index',compact('products'));
    }

    public function details($id){
        $product = Product::findOrFail($id);
        return view('user.products.show',compact('product'));
    }
    public function dashboard(){
        $total_department = Department::count();
        $total_category = Category::count();
        $total_product = Product::count();
        $total_brand = Brand::count();
        
        $departmentList = Department::orderby('created_at','DESC')->get();
        $categoryList = Category::orderby('created_at','DESC')->get();
        $subcategoryList =Subcategory::orderby('created_at','DESC')->get();
        $typeList = Type::orderby('created_at','DESC')->get();
        $itemList = Item::orderby('created_at','DESC')->get();
        $brandList = Brand::orderby('created_at','DESC')->get();   
       return view('user.dashboard')->with(
           [
               'total_department'=>$total_department,
                'total_brand' =>$total_brand,
               'total_product' =>$total_product,
                'total_category' =>$total_category,
                'categoryList' =>$categoryList,
                'subcategoryList' =>$subcategoryList,
                'typeList' =>$typeList,
                'itemList' =>$itemList,
                'brandList' =>$brandList,
                'departmentList' =>$departmentList,
    
           ]
           );
    }
    public function searchProduct(Request $request){
     
        $department = $request->department;
        $category = $request->category;
        $subcategory = $request->subcategory;
        $brand = $request->brand;
        $item = $request->item;
        $type = $request->type;
        
        // if input field is 1 
        if($department !== null && $category === null && $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($category !== null &&  $department === null   &&  $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['category'=>$category])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($subcategory !== null &&   $department === null   &&  $category === null && $brand === null && $item === null &&  $type === null){
            $productList = Product::where(['subcategory'=>$subcategory])->get();
            return view('user.products.searchProductResult',compact('productList'));

        }
        else if($brand !== null &&   $department === null   &&  $category === null && $subcategory === null && $item === null &&  $type === null){
            $productList = Product::where(['brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
            
        } 
        else if($item !== null &&   $department === null   &&  $category === null && $subcategory === null && $brand === null &&  $type === null){
            $productList = Product::where(['item'=>$item])->get();
            return view('user.products.searchProductResult',compact('productList'));
            
        }
        else if($type !== null &&   $department === null   &&  $category === null && $subcategory === null && $brand === null &&  $item === null){
            $productList = Product::where(['type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        // if input field is 2 
        else if($department !== null && $category !== null && $subcategory === null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'category'=>$category])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category === null && $subcategory !== null && $brand === null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'subcategory'=>$subcategory])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }

        else if($department !== null && $category === null && $subcategory === null && $brand !== null && $item === null && $type === null){
            $productList = Product::where(['department'=>$department ,'brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }

        else if($department !== null && $category === null && $subcategory === null && $brand === null && $item !== null && $type === null){
            $productList = Product::where(['department'=>$department ,'item'=>$item])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category === null && $subcategory === null && $brand === null && $item === null && $type !== null){
            $productList = Product::where(['department'=>$department ,'type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }

        else if($department === null && $category !== null && $subcategory !== null && $brand === null && $item === null && $type === null ){
            $productList = Product::where(['category'=>$category ,'subcategory'=>$subcategory])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category !== null && $subcategory === null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['category'=>$category ,'brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category !== null && $subcategory === null && $brand === null && $item !== null && $type === null ){
            $productList = Product::where(['category'=>$category ,'item'=>$item])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category !== null && $subcategory === null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['category'=>$category ,'type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        // if input field is 3
        else if($department !== null && $category !== null && $subcategory !== null && $brand === null && $item === null && $type === null ){
            $productList = Product::where(['department' =>$department,'category'=>$category ,'subcategory'=>$subcategory ])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category !== null && $subcategory === null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['department' =>$department,'category'=>$category ,'subcategory'=>$subcategory,'brand'=>$brand ])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category !== null && $subcategory === null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['department' =>$department,'category'=>$category , 'type'=>$type ])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category !== null && $subcategory !== null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['subcategory' =>$subcategory,'category'=>$category , 'brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category !== null && $subcategory !== null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['subcategory' =>$subcategory,'category'=>$category , 'type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department === null && $category === null && $subcategory !== null && $brand !== null && $item === null && $type !== null ){
            $productList = Product::where(['type' =>$type,'category'=>$category , 'brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        // if input is 4
        else if($department !== null && $category !== null && $subcategory !== null && $brand !== null && $item === null && $type === null ){
            $productList = Product::where(['department' =>$department , 'subcategory' =>$subcategory,'category'=>$category , 'brand'=>$brand])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category !== null && $subcategory !== null && $brand === null && $item === null && $type !== null ){
            $productList = Product::where(['department' =>$department,'subcategory' =>$subcategory,'category'=>$category , 'type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else if($department !== null && $category !== null && $subcategory === null && $brand !== null && $item === null && $type !== null ){
            $productList = Product::where(['department' =>$department,'brand' =>$brand,'category'=>$category , 'type'=>$type])->get();
            return view('user.products.searchProductResult',compact('productList'));
        }
        else{
            flash('No Such product in Database ')->error();
            return back();
        }
    }

    
    public function searchProductName(Request $request){ 
        $this->validate($request,[
            'productName' =>'required',
        ]);
        
       $product = Product::where(['name'=>$request->productName])->first();
       if($product !==null) return view('user.products.show',compact('product'));
       else {
        flash('No Such product in Database ')->error();
        return back();
       }
    }
}
