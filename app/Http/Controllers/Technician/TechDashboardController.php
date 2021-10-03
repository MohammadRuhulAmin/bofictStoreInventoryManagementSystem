<?php

namespace App\Http\Controllers\Technician;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Technician\Complaint;
use Illuminate\Support\Carbon;
class TechDashboardController extends Controller
{
    public function dashboard(){
        $todayDate = date("Y-m-d");

        
        $complaints = Complaint::where('created_at','=',)->get();
        $complaints = Complaint::whereDate('created_at', '=',  Carbon::today()->toDateString())->get();
       
        return view('technician.dashboard',compact('complaints'));
    }
}
