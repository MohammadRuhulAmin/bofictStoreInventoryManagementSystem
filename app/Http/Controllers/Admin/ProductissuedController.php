<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Productissued;
use App\Imports\Productissueuser;
use Excel;
class ProductissuedController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productIssuesUsers = Productissued::orderby('created_at','DESC')->get();
        return view('admin.issues.index',compact('productIssuesUsers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.issues.create');
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
            'name'=>'required|min:2|max:50|unique:productissueds',
            'bofid' =>'required|unique:productissueds',
            'designation'=>'required',
        ]);
        $productIssueUser = new Productissued();
        $productIssueUser->name = $request->name;
        $productIssueUser->bofid = $request->bofid;
        $productIssueUser->designation = $request->designation;
        $productIssueUser->save();
        flash('New Product User ,  Successfully!')->success();
        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function show(Productissued $productissued)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
     
        $productIssueUser = Productissued::findOrFail($id);
        return view('admin.issues.edit',compact('productIssueUser'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        
          //validation 
          $this->validate($request,[
            'name'=>'required|min:2|max:50',
            'bofid' =>'required',
            'designation'=>'required',
        ]);
        $productIssueUser = Productissued::findOrFail($id);
        $productIssueUser->name = $request->name;
        $productIssueUser->bofId = $request->bofid;
        $productIssueUser->designation = $request->designation;
        $productIssueUser->save();
        flash('Existing Product User , updated  Successfully!')->success();
        return redirect()->route('productIssuesUsers.index');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $productIssueUser = Productissued::findOrFail($id);
        $productIssueUser->delete();
        flash('Existing Product User is Deleted !')->success();
        return redirect()->route('productIssuesUsers.index');

    }
    
    // import data from excel  
    public function importProductUsers(Request $request){
      
          //validation 
          $this->validate($request,[
            'cvsFile'=>'required',
        ]);
        Excel::import(new Productissueuser,$request->cvsFile);
      
        flash('Excel File is Imported ,   Successfully!')->success();
       return redirect()->route('productIssuesUsers.index');
    }

    public function assignproductView(){
        return "ok";
        //return view('admin.issues.assignproduct');
    }

}
