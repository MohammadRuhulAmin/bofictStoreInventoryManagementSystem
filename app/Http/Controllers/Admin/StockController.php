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
        //return $request;
        $this->validate($request,[
            'item'=>'required',
            'details' =>'required',
            'date'=>'required',
            'inclusion'=>'required',
            'exclusion'=>'required',
            'storeBalance' =>'required',
            'issuedTo' =>'required',
            'branch' =>'required',

        ]);
        $stock = new Stock();
        $stock->create($request->all());
        flash('Product item is  Recorded in Stock!')->success();
        return back();
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
        $stock = Stock::findOrFail($id);
        return view('admin.stocks.edit',compact('stock'));
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
            'item'=>'required',
            'details' =>'required',
            'date'=>'required',
            'inclusion'=>'required',
            'exclusion'=>'required',
            'storeBalance' =>'required',
            'issuedTo' =>'required',
            'branch' =>'required',

        ]);
        $stock = Stock::findOrFail($id);
        $stock->update($request->all());
        flash('Product item is  Updated  in Stock!')->success();
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
