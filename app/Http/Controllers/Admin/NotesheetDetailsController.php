<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Notesheetdetail;
use App\Models\Admin\Notesheet;
use App\Models\Admin\Booknotesheet;

class NotesheetDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $notesheetDetails = Notesheetdetail::get();
        return view('admin.notesheetdetails.index',compact('notesheetDetails'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $books = Booknotesheet::all();
        $notesheets = Notesheet::all();
        return view('admin.NotesheetDetails.create',compact("books","notesheets"));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $bookId = $request->booknotesheet_id;
        $notesheetId = $request->notesheet_id;
        $this->validate($request,[
           "notesheet_id"=>'required',
           'PVRV' =>'required',
           'date' =>'required',
           'details'=>'required',
         ]);
         $countRows = Notesheetdetail::where(['notesheet_id'=>$notesheetId,'book_id'=>$bookId])->count();
         if($countRows == 0){
            $cashBalance = $request->credit ;
            if($cashBalance<0){
                flash('debit cannot be negative')->error();
                return redirect()->route('notesheetdetails.create');
            }
            else{
                $notesheetDetail = new Notesheetdetail();
                $notesheetDetail->notesheet_id = $request->notesheet_id;
                $notesheetDetail->PVRV = $request->PVRV;
                $notesheetDetail->date = $request->date;
                $notesheetDetail->details = $request->details;
                $notesheetDetail->credit = $request->credit;
                $notesheetDetail->debit = 0;
                $notesheetDetail->cashbalance = $cashBalance;
                $notesheetDetail->ic = $request->ic;
                $notesheetDetail->oic = $request->oic;
                $notesheetDetail->erp_entry_date = $request->erp_entry_date;
                $notesheetDetail->comments = $request->comments;
                $notesheetDetail->book_id = $request->booknotesheet_id;
                $notesheetDetail->save();
                flash('Notesheet detail is saved  Successfully!')->success();
                return redirect()->route('notesheetdetails.index');
            }
         }
         else{
            $bookId = $request->booknotesheet_id;
            $notesheetId = $request->notesheet_id;
            $prev_row = Notesheetdetail::where(['notesheet_id'=>$notesheetId, 'book_id'=>$bookId])
                        ->orderBy('created_at','desc')->first();
            $prev_cashBalance = $prev_row->cashbalance;
            $cashBalance = $prev_cashBalance - $request->debit;
            if($cashBalance<0){
                flash('Cashbalance cannot be less than 0')->error();
                return redirect()->route('notesheetdetails.create');
            }
            if($prev_row->cashbalance == 0){
                flash('This notesheet has already been closed')->warning();
                return redirect()->route('notesheetdetails.index');
            }
            else{
                $notesheetDetail = new Notesheetdetail();
                $notesheetDetail->notesheet_id = $request->notesheet_id;
                $notesheetDetail->PVRV = $request->PVRV;
                $notesheetDetail->date = $request->date;
                $notesheetDetail->details = $request->details;
                $notesheetDetail->credit = $request->credit;
                $notesheetDetail->debit = $request->debit;
                $notesheetDetail->cashbalance = $cashBalance;
                $notesheetDetail->ic = $request->ic;
                $notesheetDetail->oic = $request->oic;
                $notesheetDetail->erp_entry_date = $request->erp_entry_date;
                $notesheetDetail->book_id = $request->booknotesheet_id;
                $notesheetDetail->comments = $request->comments;
                $notesheetDetail->save();
                flash('Notesheet detail is saved  Successfully!')->success();
                return redirect()->route('notesheetdetails.index');
            }
            
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
