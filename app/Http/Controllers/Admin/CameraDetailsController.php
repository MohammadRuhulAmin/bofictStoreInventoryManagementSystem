<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Cameradetail;
use App\Models\Admin\Cameralocation;
use App\Imports\CameraDetailsImport;
use Excel;
class CameraDetailsController extends Controller
{
    /*
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       
        $cameraDetailsList = CameraDetail::orderBy('created_at','DESC')->get();
        return view('admin.cameradetails.index',compact('cameraDetailsList'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $cameraLocationsList = Cameralocation::orderby('created_at','DESC')->get(); 
        return view('admin.cameradetails.create',compact('cameraLocationsList'));
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
            'ictNo'=>'required',
            'cameraParentLoccation'=>'required',
            'specificLocationOfCamera'=>'required',
            'cameraType'=>'required',
            'defaultIpAddress'=>'required',
            'usedIpAddress'=>'required'
        ]);
        $cameraDetail = new Cameradetail();
        $cameraDetail->ictNo = $request->ictNo;
        $cameraDetail->cameraParentLoccation  = $request->cameraParentLoccation;
        $cameraDetail->specificLocationOfCamera = $request->specificLocationOfCamera;
        $cameraDetail->cameraType = $request->cameraType;
        $cameraDetail->defaultIpAddress = $request->defaultIpAddress;
        $cameraDetail->usedIpAddress = $request->usedIpAddress;
        $cameraDetail->remarks = $request->remarks;
        $cameraDetail->save();
        flash('Camera Details is Added Successfully')->success();
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
        $cameraLocationsList = Cameralocation::orderby('created_at','DESC')->get();
        $cameraDetail = Cameradetail::findOrFail($id);
        return view('admin.cameradetails.edit',compact('cameraDetail','cameraLocationsList'));
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
        $cameraDetail = Cameradetail::findOrFail($id);
        $cameraDetail->ictNo = $request->ictNo;
        $cameraDetail->cameraParentLoccation = $request->cameraParentLoccation;
        $cameraDetail->specificLocationOfCamera = $request->specificLocationOfCamera;
        $cameraDetail->cameraType = $request->cameraType;
        $cameraDetail->defaultIpAddress = $request->defaultIpAddress;
        $cameraDetail->usedIpAddress = $request->usedIpAddress;
        $cameraDetail->remarks = $request->remarks;
        $cameraDetail->save();
        flash("Camera Information is Updated Successfully !")->success();
        return redirect()->route('cameradetails.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $cameraDetail = Cameradetail::findOrFail($id);
        $cameraDetail->delete();
        flash('Camera Information is Deleted Successfully')->success();
        return back();
    }
    public function importCameraDetailsFile(Request $request){
        $this->validate($request,[
            'cameraDetailsFile' =>'required'
        ]);
        Excel::import(new CameraDetailsImport,$request->cameraDetailsFile);
        flash('Camera Details of File for Excel is imported  Successfully')->success();
        return redirect()->route('cameradetails.index');
    }
   
}
