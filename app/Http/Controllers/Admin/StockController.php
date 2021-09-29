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


class StockController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {   
        
        $stocks = Stock::orderby('created_at','DESC')->get();
        return view('admin.stocks.index',compact('stocks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function create()
    {
        $categorys = Category::orderby('created_at','DESC')->get();
        $subcategorys = Subcategory::orderby('created_at','DESC')->get();
        $brands = Brand::orderby('created_at','DESC')->get();
        $items = Item::orderby('created_at','DESC')->get();
        $types = Type::orderby('created_at','DESC')->get();
        return view('admin.stocks.create',compact('categorys','subcategorys','brands','items','types'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'date'=>'required',
        ]);
        $department = $request->department;
        $category = $request->category;
        $subcategory = $request->subcategory;
        $brand = $request->brand;
        $item = $request->item;
        $type = $request->type;
       
        $stock = new Stock();
        $stock->category = $request->category;
        $stock->subcategory = $request->subcategory;
        $stock->brand = $request->brand;
        $stock->item =$request->item;
        $stock->type = $request->type;
        $stock->date = $request->date;
        $stock->inclusion = $request->inclusion;
        $stock->exclusion = $request->exclusion;
        $stock->maintanance = $request->maintanance;
        $stock->issueNo = $request->issueNo;
        $stock->issuedTo = $request->issuedTo;
        $stock->branch = $request->branch;
        $stock->remarks = $request->remarks;

        // stock for input 
        //for only category
        if($category !== null  && $subcategory === null && $brand === null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion);
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
            
        }
        //for only subcategory
        else if($category === null  && $subcategory !== null && $brand === null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for only brand
        else if($category === null  && $subcategory === null && $brand !== null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['brand'=>$brand])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for only item
        else if($category === null  && $subcategory === null && $brand === null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['item'=>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for only type
        else if($category === null  && $subcategory === null && $brand === null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['type'=>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }


        // stock for 2 inputs 

        
        // for category & subcategory 
        else if($category !== null  && $subcategory !== null && $brand === null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock; 
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        
        //for category & brand 
        else if($category !== null  && $subcategory === null && $brand !== null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'brand'=>$brand])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for category & item 
        else if($category !== null  && $subcategory === null && $brand === null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'item'=>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for category & type 
        else if($category !== null  && $subcategory === null && $brand === null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'item'=>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }

        //for subcategory brand
        else if($category === null  && $subcategory !== null && $brand !== null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory,'brand'=>$brand])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for subcategory item 
        else if($category === null  && $subcategory !== null && $brand === null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory,'item'=>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for subcategory type
        else if($category === null  && $subcategory !== null && $brand === null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory,'type'=>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for brand item 
        else if($category === null  && $subcategory === null && $brand !== null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['brand'=>$brand,'item'=>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for brand type 
        else if($category === null  && $subcategory === null && $brand !== null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['brand'=>$brand,'type'=>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for item type
        else if($category === null  && $subcategory === null && $brand === null && $item !== null && $type !== null){
            $stockItemInclusionDB = Stock::where(['item'=>$item,'type'=>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }


        //stock for 3 inputs
        //for category & subcategory & brand 
        else if($category !== null  && $subcategory !== null && $brand !== null && $item === null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'brand' =>$brand])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }

        //for category , subcategory ,item 
        else if($category !== null  && $subcategory !== null && $brand === null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'item' =>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for category ,subcategory ,type 
        else if($category !== null  && $subcategory !== null && $brand === null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for subcategory ,brand , item 
        else if($category === null  && $subcategory !== null && $brand !== null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory,'brand'=>$brand , 'item' =>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for subcategory , item ,type
        else if($category === null  && $subcategory !== null && $brand === null && $item !== null && $type !== null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory,'item'=>$item , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }



        //for brand , item , type 
        else if($category === null  && $subcategory === null && $brand !== null && $item !== null && $type !== null){
            $stockItemInclusionDB = Stock::where(['brand'=>$brand,'item'=>$item , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //stock for 4 inputs 
        //for category , subcategory , brand , item 
        else if($category !== null  && $subcategory !== null && $brand !== null && $item !== null && $type === null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'brand' =>$brand , 'item' =>$item])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for category , subcategory , brand , type 
        else if($category !== null  && $subcategory !== null && $brand !== null && $item === null && $type !== null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'brand' =>$brand , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for subcategory , brand , item , type 
        else if($category === null  && $subcategory !== null && $brand !== null && $item !== null && $type !== null){
            $stockItemInclusionDB = Stock::where(['subcategory'=>$subcategory , 'brand' =>$brand , 'item' =>$item , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        //for 5 input field 
        // for category ,  subcategory , brand , item , type 
        else if($category !== null  && $subcategory !== null && $brand !== null && $item !== null && $type !== null){
            $stockItemInclusionDB = Stock::where(['category'=>$category,'subcategory'=>$subcategory , 'brand' =>$brand , 'item' =>$item , 'type' =>$type])->get();
            $totalInclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalInclusion += $stockItemInclusionDB[$i]->inclusion;
            }
            $totalExclusion = 0;
            for($i = 0;$i<count($stockItemInclusionDB);$i++){
                $totalExclusion += $stockItemInclusionDB[$i]->exclusion;
            }
            
            $totalStock = ($totalInclusion+  $stock->inclusion ) - ($totalExclusion + $stock->exclusion); 
            $stock->stockBalance = $totalStock;
            $stock->save();
           flash('Product item is  Recorded in Stock!')->success();
           return back();
        }
        else {
            flash('We are working on it , Please let us know ! ')->error();
            return back();
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
