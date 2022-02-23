<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Booknotesheet;
use App\Models\Admin\Notesheet;
use App\Models\Admin\Notesheetdetail;

class BalanceSheetController extends Controller
{
    public function balanceSheetIndex(){
        $books = Booknotesheet::orderBy('created_at','desc')->get();
        $notesheets_no = Notesheet::orderBy('created_at','desc')->get();
        return view('admin.BalanceSheet.index',compact('books','notesheets_no'));
    }
    public function balanceSheetSearch(Request $request){
        $bookId = $request->booknotesheet_no;
        $notesheetId = $request->notesheet_no;
        $notesheetInfo = Notesheet::where(['id'=>$notesheetId])->first();
        $bookInfo = Booknotesheet::where(['id'=>$bookId])->first();
        $ledger = Notesheetdetail::where(['book_id'=>$bookId,'notesheet_id'=>$notesheetId])->get();
        return view('admin.BalanceSheet.balanceSheetLadger',compact('ledger','notesheetInfo','bookInfo'));
    }
    public function notesheetAuthorization(Request $request){
        return $request;
    }
}
