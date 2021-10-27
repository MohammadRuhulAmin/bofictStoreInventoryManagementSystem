<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Cameralocation;

class CameraLocationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cameraLocations = Cameralocation::orderby('created_at','DESC')->get();
        return view('admin.cameralocations.index',compact('cameraLocations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.cameralocations.create');
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
            'locationName'=>'required|unique:cameralocations',
            'locationDetails' =>'required'
        ]);

        $cameraLocation = new Cameralocation();
        $cameraLocation->locationName = $request->locationName;
        $cameraLocation->locationDetails = $request->locationDetails;
        $cameraLocation->totalCamera = $request->totalCamera;
        $cameraLocation->save();
        flash('Camera Location is  Added Successfully!')->success();
        return redirect()->route('cameralocations.create');
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show($id)
    {
        
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cameralocation = Cameralocation::findOrFail($id);
        return view('admin.cameralocations.edit',compact('cameralocation'));
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
        $cameraLocation = Cameralocation::findOrFail($id);
        $cameraLocation->locationName = $request->locationName;
        $cameraLocation->locationDetails = $request->locationDetails;
        $cameraLocation->totalCamera = $request->totalCamera;
        $cameraLocation->save();
        flash('Camera Location is  Updated Successfully!')->success(); 
        return redirect()->route('cameralocations.index');   
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cameraLocation = Cameralocation::findOrFail($id);
        $cameraLocation->delete();
        return back();
    }
}
