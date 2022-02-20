<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Notesheet;
use App\Models\Admin\Booknotesheet;
use App\Models\Admin\Notesheetdetails;
class NotesheetController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notesheets = Notesheet::get();
        return view('admin.NodeSheet.index',compact('notesheets'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $books = Booknotesheet::all();
        return view('admin.NodeSheet.create',compact('books'));
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
            'booknotesheet_id' => 'required',
            // 'titleDescription'=>'required',
            'notesheetDate'=>'required',
            'notesheet_no' =>'required',
            'reasonForTheNoteSheet' =>'required',
            'amount'=>'required'
         ]);
         $book  = BooknoteSheet::where(['id'=>$request->booknotesheet_id])->first();
         $bookName = $book->bookName;
         $notesheet = new Notesheet();
         $notesheet->booknotesheet_id = $request->booknotesheet_id;
         $notesheet->bookName = $bookName;
        //  $notesheet->titleDescription = $request->titleDescription;
         $notesheet->notesheetDate = $request->notesheetDate;
         $notesheet->notesheet_no = $request->notesheet_no;
         $notesheet->reasonForTheNoteSheet = $request->reasonForTheNoteSheet;
         $notesheet->amount = $request->amount;
         $notesheet->save();
         flash('Notesheet is saved Successfully!')->success();
         return redirect()->route('notesheets.index');
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
        $notesheet = Notesheet::findOrFail($id);
        $bookId = $notesheet->booknotesheet_id;
        $books = Booknotesheet::all();
        return view('admin.NodeSheet.edit',compact('notesheet','books','bookId'));
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
            'booknotesheet_id' => 'required',
            // 'titleDescription'=>'required',
            'notesheetDate'=>'required',
            'notesheet_no' =>'required',
            'reasonForTheNoteSheet' =>'required',
        
            'amount'=>'required'
         ]);
         $book  = BooknoteSheet::where(['id'=>$request->booknotesheet_id])->first();

         $bookName = $book->bookName;
         $notesheet = Notesheet::findOrFail($id);
         $notesheet->booknotesheet_id = $request->booknotesheet_id;
         $notesheet->bookName = $bookName;
        //  $notesheet->titleDescription = $request->titleDescription;
         $notesheet->notesheetDate = $request->notesheetDate;
         $notesheet->notesheet_no = $request->notesheet_no;
         $notesheet->reasonForTheNoteSheet = $request->reasonForTheNoteSheet;
         $notesheet->amount = $request->amount;
         $notesheet->save();
         flash('Notesheet is updated Successfully!')->success();
         return redirect()->route('notesheets.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $notesheet = Notesheet::findOrFail($id);
        $notesheet->delete();
        flash('Notesheet is Deleted  Successfully!')->success();
        return redirect()->route('notesheets.index');
        
    }
}
