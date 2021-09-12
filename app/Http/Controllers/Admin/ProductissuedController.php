<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Productissued;

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
        $productIssueUser = new Productissued();
        $productIssueUser->name = $request->name;
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
    public function edit(Productissued $productissued)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Productissued $productissued)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Productissued  $productissued
     * @return \Illuminate\Http\Response
     */
    public function destroy(Productissued $productissued)
    {
        //
    }
}
