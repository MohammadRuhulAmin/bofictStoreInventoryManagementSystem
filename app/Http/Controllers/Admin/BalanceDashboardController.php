<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Booknotesheet;
use App\Models\Admin\Notesheet;
use App\Models\Admin\Notesheetdetail;

class BalanceDashboardController extends Controller
{
    public function index(){
        $books = Booknotesheet::all();
        $testArray = array();
        $combineAllBookInformation = [];
        for($i = 0;$i<count($books);++$i){
            $bid = $books[$i]["id"];
            $totalCredit = 0;
            $totalBalance = 0;
            $allRows = Notesheet::where(['booknotesheet_id'=>$bid])->get();
            for($j = 0;$j<count($allRows);++$j){
                $totalCredit +=$allRows[$j]->amount;
            }
            for($j = 0;$j<count($allRows);++$j){
                $nid = $allRows[$j]['id'];
                $query = Notesheetdetail::where(['notesheet_id'=>$nid ,'book_id'=>$bid])->orderBy('created_at','DESC')->latest()->first();
                $totalBalance+=$query->cashbalance;
            }
            //array_push($testArray,$totalDebit);
            //array_push($totalMoney,$totalAmount);
            $combineAllBookInformation[$i] = [
                'book'=>$books[$i],
                'totalCredit'=>$totalCredit,
                'currentBalance'=>$totalBalance,
            ];
        }
        //return $combineAllBookInformation;
        
        return view('admin.balanceDashboard.index',compact('combineAllBookInformation'));
    }
    public function notesheetsList($id){
       $notesheetList = Notesheet::where(['booknotesheet_id'=>$id])->get();
       $combineAllNoteSheetInformation = [];
       for($i = 0;$i<count($notesheetList);++$i){ 
          $query = Notesheetdetail::where(['notesheet_id'=>$notesheetList[$i]->id])->orderBy('created_at','DESC')->first();
          $cashbalance = $query->cashbalance;
          $combineAllNoteSheetInformation[$i] = [
            'notesheet' => $notesheetList[$i],
            'cashbalance' =>$cashbalance
          ];
       }
       return view('admin.balanceDashboard.notesheetIndex',compact('combineAllNoteSheetInformation'));
    }
    public function notesheetDetails($id){
        $notesheetDetails = Notesheetdetail::where(['notesheet_id'=>$id])->get();
        return view('admin.balanceDashboard.notesheetDetail',compact('notesheetDetails'));
    }
}
