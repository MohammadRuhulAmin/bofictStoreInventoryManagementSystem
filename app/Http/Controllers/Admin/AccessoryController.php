<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Accessory;
class AccessoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $accesoriesItem = Accessory::orderby('created_at','DESC')->get();
        return view('admin.accessories.index',compact('accesoriesItem'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.accessories.create');
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
            'accessoryName' =>'required|unique:accessories',
        ]);
        $accessory = new Accessory();
        $accessory->create($request->all());
        flash('Accessory item is Added Successfully! ')->success();
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
        $accessoryItem = Accessory::findOrFail($id);
        return view('admin.accessories.edit',compact('accessoryItem'));
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
            'accessoryName' =>'required',
        ]);
        $accessory = Accessory::findOrFail($id);
        $accessory->update($request->all());
        flash('Accessory item is updated Successfully! ')->success();
        return redirect()->route('accessories.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $accessory = Accessory::findOrFail($id);
        $accessory->delete();
        flash('Accessory item is Deleted Successfully! ')->success();
        return redirect()->route('accessories.index');
    }
}
