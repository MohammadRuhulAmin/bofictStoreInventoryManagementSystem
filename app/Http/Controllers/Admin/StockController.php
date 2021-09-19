<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Stock;
use App\Models\Admin\Accessory;
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
        $accessories = Accessory::orderBy('created_at','DESC')->get();
        return view('admin.stocks.create',compact('accessories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // return $request; 
 
        $this->validate($request,[
            'accessoryName'=>'required',
            'date'=>'required',
            // 'issuedTo' =>'required',
            // 'branch' =>'required',
        ]);
        $stock = new Stock();
        $stock->accessoryName = $request->accessoryName;
        $stock->accessoryFirstProperty = $request->accessoryFirstProperty;
        $stock->accessorySecondProperty = $request->accessorySecondProperty;
        $stock->accessoryThirdProperty = $request->accessoryThirdProperty;
        $stock->date = $request->date;
        $stock->inclusion = $request->inclusion;
        $stock->exclusion = $request->exclusion;
        $stock->maintanance = $request->maintanance;
        $stock->issueNo = $request->issueNo;
        $stock->issuedTo = $request->issuedTo;
        $stock->branch = $request->branch;
        $stock->remarks = $request->remarks;
         // total inclusion summation 
         if(empty($request->accessoryFirstProperty)  && empty($request->accessorySecondProperty)  && empty($request->accessoryThirdProperty)){
             $stockItemInclusionDB = Stock::where(['accessoryName'=>$request->accessoryName])->get();
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
         if(!empty($request->accessoryFirstProperty)  && empty($request->accessorySecondProperty)  && empty($request->accessoryThirdProperty)){
            $stockItemInclusionDB = Stock::where(['accessoryName'=>$request->accessoryName ,'accessoryFirstProperty'=>$request->accessoryFirstProperty])->get();
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
        if(!empty($request->accessoryFirstProperty)  && !empty($request->accessorySecondProperty)  && empty($request->accessoryThirdProperty)){
            $stockItemInclusionDB = Stock::where(['accessoryName'=>$request->accessoryName ,
            'accessoryFirstProperty'=>$request->accessoryFirstProperty ,
            'accessorySecondProperty' =>$request->accessorySecondProperty
            ])->get();
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
        if(!empty($request->accessoryFirstProperty)  && !empty($request->accessorySecondProperty)  && !empty($request->accessoryThirdProperty)){
            $stockItemInclusionDB = Stock::where(['accessoryName'=>$request->accessoryName ,
            'accessoryFirstProperty'=>$request->accessoryFirstProperty ,
            'accessorySecondProperty' =>$request->accessorySecondProperty,
            'accessoryThirdProperty' =>$request->accessoryThirdProperty,
            ])->get();
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
        $accessories = Accessory::orderBy('created_at','DESC')->get();
        $stock = Stock::findOrFail($id);
        return view('admin.stocks.edit',compact('stock','accessories'));
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
       
      
 
     $this->validate($request,[
        'accessoryName'=>'required',
        'date'=>'required',
        // 'issuedTo' =>'required',
        // 'branch' =>'required',
        ]);
        $stock =  Stock::findOrFail($id);
        $stock->accessoryName = $request->accessoryName;
        $stock->accessoryFirstProperty = $request->accessoryFirstProperty;
        $stock->accessorySecondProperty = $request->accessorySecondProperty;
        $stock->accessoryThirdProperty = $request->accessoryThirdProperty;
        $stock->date = $request->date;
        $stock->inclusion = $request->inclusion;
        $stock->exclusion = $request->exclusion;
        $stock->maintanance = $request->maintanance;
        $stock->issueNo = $request->issueNo;
        $stock->issuedTo = $request->issuedTo;
        $stock->branch = $request->branch;
        $stock->remarks = $request->remarks;
        $stock->save();
        flash('Product item is  Recorded in Stock!')->success();
        return redirect()->route('stocks.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id 
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $stock = Stock::findOrFail($id);
        $stock->delete();
        flash('Product Item is Deleted From the Stock!')->success();
        return redirect()->route('stocks.index');
    }
}
