<?php

namespace App\Http\Controllers\Technician;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Technician\Complaint;

class ComplaintsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $complaints = Complaint::orderby('created_at','DESC')->get();
        return view('technician.complaint.index',compact('complaints'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('technician.complaint.create');
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
            'date'=>'required',
            'time'=>'required',
            'complaintName' =>'required',
            'complaintDesignation' =>'required',
            'complaintDescription' =>'required',
            'complaintReceiverName' =>'required',
            'complaintSolverTechnicianName' =>'required',
            'complaintSolutionDate' =>'required',
            'complaintSolutionDescription' =>'required',

        ]);
        $complaint = new Complaint();
      
        $complaint->date = $request->date;
        $complaint->time = $request->time;
        $complaint->complaintName = $request->complaintName;
        $complaint->complaintDesignation = $request->complaintDesignation;
        $complaint->complaintDescription = $request->complaintDescription;
        $complaint->complaintReceiverName = $request->complaintReceiverName;
        $complaint->complaintSolverTechnicianName = $request->complaintSolverTechnicianName;
        $complaint->complaintSolutionDate = $request->complaintSolutionDate;
        $complaint->complaintSolverTechnicianName = $request->complaintSolverTechnicianName;
        $complaint->complaintSolutionDate = $request->complaintSolutionDate;
        $complaint->complaintSolutionDescription = $request->complaintSolutionDescription;
        $complaint->ic = $request->ic;
        $complaint->oic = $request->oic;
        $complaint->save();
        flash('Complaint Created Successfully!')->success();
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
        $complaint = Complaint::findOrFail($id);
        return view('technician.complaint.edit',compact('complaint'));
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
            'date'=>'required',
            'time'=>'required',
            'complaintName' =>'required',
            'complaintDesignation' =>'required',
            'complaintDescription' =>'required',
            'complaintReceiverName' =>'required',
            'complaintSolverTechnicianName' =>'required',
            'complaintSolutionDate' =>'required',
            'complaintSolutionDescription' =>'required',

        ]);
        $complaint = Complaint::findOrFail($id);

        $complaint->date = $request->date;
        $complaint->time = $request->time;
        $complaint->complaintName = $request->complaintName;
        $complaint->complaintDesignation = $request->complaintDesignation;
        $complaint->complaintDescription = $request->complaintDescription;
        $complaint->complaintReceiverName = $request->complaintReceiverName;
        $complaint->complaintSolverTechnicianName = $request->complaintSolverTechnicianName;
        $complaint->complaintSolutionDate = $request->complaintSolutionDate;
        $complaint->complaintSolverTechnicianName = $request->complaintSolverTechnicianName;
        $complaint->complaintSolutionDate = $request->complaintSolutionDate;
        $complaint->complaintSolutionDescription = $request->complaintSolutionDescription;
        $complaint->ic = $request->ic;
        $complaint->oic = $request->oic;
        $complaint->save();
        flash('Complaint Updated Successfully!')->success();
        return redirect()->route('complaints.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $complaint = Complaint::findOrFail($id);
        $complaint->delete();
        flash('Complaint  is Deleted  Successfully!')->success();
        return redirect()->route('complaints.index');
    }

    public function listByDate(Request $request){
        $specificDate = $request->listByDate;
        $complaints = Complaint::where(['date'=>$request->listByDate])->get();
        return view('technician.complaint.listByDate',compact('complaints','specificDate'));
    }

}
