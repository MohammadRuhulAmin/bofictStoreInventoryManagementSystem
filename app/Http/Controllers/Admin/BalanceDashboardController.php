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
        return view('admin.balanceDashboard.index',compact('books'));
    }
    public function notesheetsList($id){
       $notesheetList = Notesheet::where(['booknotesheet_id'=>$id])->get();
       return view('admin.balanceDashboard.notesheetIndex',compact('notesheetList'));
    }
    public function notesheetDetails($id){
        $notesheetDetails = Notesheetdetail::where(['notesheet_id'=>$id])->get();
        return view('admin.balanceDashboard.notesheetDetail',compact('notesheetDetails'));
    }
}
