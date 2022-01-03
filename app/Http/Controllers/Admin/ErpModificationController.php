<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Erpmodification;

class ErpModificationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $erpProblems = Erpmodification::orderBy('created_at','desc')->get();
        return view('admin.erpmodifications.index',compact('erpProblems'));
    }
 

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.erpmodifications.create');
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
        'problemFindingDate' =>'required',
        'form_link' =>'required',
        'problemDescription' =>'required',
        'status' =>'required',
        'problem_detected_by' =>'required',
        'problemSolutionDate' =>'required',
        'module' =>'required'
       ]);
       $erpProblem = new Erpmodification();
       $erpProblem->problem_id = $request->problem_id;
       $erpProblem->problemFindingDate = $request->problemFindingDate;
       $erpProblem->form_link = $request->form_link;
       $erpProblem->problemDescription = $request->problemDescription;
       $erpProblem->status = $request->status;
       $erpProblem->problem_detected_by = $request->problem_detected_by;
       $erpProblem->problemSolutionDate = $request->problemSolutionDate;
       $erpProblem->remarks = $request->remarks;
       $erpProblem->suggation = $request->suggation;
       $erpProblem->module = $request->module;
        //=================
        if($request->hasFile('image')){
            $image = $request->file('image');
            $fileName = time().'.'.$image->getClientOriginalExtension();
            $request->image->move('storage/',$fileName);
            $erpProblem->image = $fileName; 
        }
        //==================
        $erpProblem->save();
        flash('New Problem is Inserted Successfully')->success();
        return redirect()->route('erpmodification.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function show($id)
    {
        $erpProblem = Erpmodification::find($id);
        return view('admin.erpmodifications.details',compact('erpProblem'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $erpProblem = Erpmodification::find($id);
        return view('admin.erpmodifications.edit',compact('erpProblem'));
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
            'problemFindingDate' =>'required',
            'form_link' =>'required',
            'problemDescription' =>'required',
            'status' =>'required',
            'problem_detected_by' =>'required',
            'problemSolutionDate' =>'required',
            'module' =>'required'
           ]);
           $erpProblem =  Erpmodification::findOrFail($id);
           $erpProblem->problem_id = $request->problem_id;
           $erpProblem->problemFindingDate = $request->problemFindingDate;
           $erpProblem->form_link = $request->form_link;
           $erpProblem->problemDescription = $request->problemDescription;
           $erpProblem->status = $request->status;
           $erpProblem->problem_detected_by = $request->problem_detected_by;
           $erpProblem->problemSolutionDate = $request->problemSolutionDate;
           $erpProblem->remarks = $request->remarks;
           $erpProblem->suggation = $request->suggation;
           $erpProblem->module = $request->module;
            //=================
            if($request->hasFile('image')){
                $image = $request->file('image');
                $fileName = time().'.'.$image->getClientOriginalExtension();
                $request->image->move('storage/',$fileName);
                $erpProblem->image = $fileName; 
            }
            //==================
            $erpProblem->save();
            flash('Problem is Updated Successfully')->success();
            return redirect()->route('erpmodification.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $erpProblem = Erpmodification::findOrFail($id);
        $erpProblem->delete();
        flash('Problem  is Deleted  Successfully!')->success();
        return redirect()->route('erpmodification.index');
    }
}
