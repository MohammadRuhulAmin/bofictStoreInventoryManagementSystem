<?php

namespace App\Http\Controllers\Technician;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Technician\Complaint;
class TechDashboardController extends Controller
{
    public function dashboard(){
        $todayDate = date("Y-m-d");
        $complaints = Complaint::orderby('created_at','DESC')->where(['date'=>$todayDate])->get();
        return view('technician.dashboard',compact('complaints'));
    }
}
