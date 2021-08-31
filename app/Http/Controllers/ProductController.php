<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Subcategory;
use App\Models\Type;
use App\Models\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Str;


class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::orderby('created_at','DESC')->get();
        return view('products.index',compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::orderby('created_at','DESC')->get();
        $subcategories = Subcategory::orderby('created_at','DESC')->get();
        $types = Type::orderby('created_at','DESC')->get();
        $brands = Brand::orderby('created_at','DESC')->get();
        $items = Item::orderby('created_at','DESC')->get();
        
        return view('products.create')
        ->with(['categories'=>$categories,'subcategories'=>$subcategories,'types'=>$types,'brands'=>$brands,'items'=>$items]);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         
          //validation 
          $this->validate($request,[
            'name'=>'required|min:2|max:50|',
            
            
        ]);
        $product = new Product();
        
        $product->name = $request->name;
        $product->category = $request->category;
        $product->subcategory= $request->subcategory;
        $product->item = $request->item;
        $product->type = $request->type;
        $product->brand = $request->brand;
        $product->department = $request->department;
        $product->description = $request->description;

        //=================
        if($request->hasFile('image')){
            
            $image = $request->file('image');
            $fileName = time().'.'.$image->getClientOriginalExtension();
            $request->image->move('storage/',$fileName);
            $product->image = $fileName;

            
        }


        //==================
       
        // saving images 
        
       
        // Save Product  
        $product->save();
        flash('Product is Created Successfully!')->success();
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $categories = Category::orderby('created_at','DESC')->get();
        $subcategories = Subcategory::orderby('created_at','DESC')->get();
        $types = Type::orderby('created_at','DESC')->get();
        $brands = Brand::orderby('created_at','DESC')->get();
        $items = Item::orderby('created_at','DESC')->get();
        
        $product = Product::findOrFail($id);
        return view('products.edit',compact('product','categories','subcategories','types','items','brands'));
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
           //validation 
           $this->validate($request,[
            'name'=>'required|min:2|max:50|',
            
            
        ]);
        $product =  Product::findOrFail($id);
        $product->name = $request->name;
        $product->category = $request->category;
        $product->subcategory= $request->subcategory;
        $product->item = $request->item;
        $product->type = $request->type;
        $product->brand = $request->brand;
        $product->department = $request->department;
        $product->description = $request->description;

        //=================
        if($request->hasFile('image')){
            
            $image = $request->file('image');
            $fileName = time().'.'.$image->getClientOriginalExtension();
            $request->image->move('storage/',$fileName);
            $product->image = $fileName;

            
        }


        //==================
       
        // saving images 
        
       
        // Save Product  
        $product->save();
        flash('Product is Created Successfully!')->success();
        return redirect()->route('products.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        $product = Product::findOrFail($id);
        $product->delete();
        flash('Product is Deleted  Successfully!')->success();
        return redirect()->route('products.index');
    }
}
