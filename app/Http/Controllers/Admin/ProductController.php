<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Admin\Product;
use App\Models\Admin\Category;
use App\Models\Admin\Brand;
use App\Models\Admin\Subcategory;
use App\Models\Admin\Type;
use App\Models\Admin\Item;
use Illuminate\Http\Request;
use App\Models\Admin\Department;
use Illuminate\Support\Str;
use App\Imports\ProductImport;
use App\Models\Technician\Complaint;
use Illuminate\Support\Facades\Session;
use App\Exports\ProductExportByCategory;
use Excel;
use App\Exports\ProductExport;
use DataTables;
use DB;
use Illuminate\Support\Carbon;

class ProductController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function allProductsList(Request $request){
       
        return Datatables::of(Product::query())->make(true);
    }

    public function index()
    {   
       // return view('admin.products.index');
       
        $products = DB::table('products')->whereBetween('created_at' ,[Carbon::parse('2021-06-01') ,Carbon::parse('2021-01-01')->endOfYear()])->get();
        return view('admin.products.index',compact('products'));
    }
    /**
     * Show the form for creating a new resource.
     *
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
        $departments = Department::orderby('created_at','DESC')->get();
        return view('admin.products.create')
        ->with(['categories'=>$categories,'subcategories'=>$subcategories,'types'=>$types,'brands'=>$brands,'items'=>$items,'departments'=>$departments]);
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
            'name'=>'required|min:2|max:50|unique:products',
        ]);        
        $productID =  preg_replace('/\s+/', '', $request->name);
        $product = new Product();
        $product->name = $productID;
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
    public function show($id)
    {
        //$productUsersList = Productissued::findOrFail();
        $product = Product::findOrFail($id); 
        $productUserList = $product->productissueds; // the users of $id product ! 
       // $complaintsOfProducts = Complaint::where('product_id',$id);
       //complaints
       $complaintsOfProduct = Product::findOrFail($id)->complaints;
       return view('admin.products.show',compact('product','complaintsOfProduct','productUserList'));
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
        $departments = Department::orderby('created_at','DESC')->get();
        $product = Product::findOrFail($id);
        return view('admin.products.edit',compact('product','categories','subcategories','types','items','brands','departments'));
       
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
            'name'=>'required|min:2|max:50',
            
            
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
        flash('Product is Updated Successfully!')->success();
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
    public function exportIntoExcel(){
        return Excel::download(new ProductExport,'productList.xlsx');

    }
    public function exportIntoCSV(){
        return Excel::download(new ProductExport,'productList.csv');
    }
    public function importCvsFileToDatabase(Request $request){
        //validation 
        $this->validate($request,[
            'cvsFile'=>'required',
        ]);
        Excel::import(new ProductImport,$request->cvsFile);
        flash('Excel File is Imported ,   Successfully!')->success();
        return redirect()->route('products.index');
    }
    public function exportByCategory(Request $request){
        
        session()->put(['categoryName'=>$request->SearchByCategory]);
        return Excel::download(new ProductExportByCategory(),'productListByCategory.xlsx');
    }
    public function repeatedProductList(){
        $productsList = Product::orderby('name')->get();
        $TrackedRepeatedProduct = array();
        $totalProducts = count($productsList);
        for ($i = 0;$i<$totalProducts;$i++){
            $productItemName = $productsList[$i]->name;
            for($j = 0;$j<$totalProducts;$j++){
                if($i != $j){

                    if($productsList[$j]->name === $productItemName){
                        array_push($TrackedRepeatedProduct, $productsList[$j]);
                    }
                }
            }
        }
        return view('admin.products.repeatedProductList')->with(['products' => $TrackedRepeatedProduct]);
    }

}
