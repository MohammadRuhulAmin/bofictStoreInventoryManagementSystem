<?php
// for admin controller 
namespace App\Http\Controllers\Admin;
use App\Models\Admin\User;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Product;
use App\Models\Technician\Complaint;
class AdminComplaintsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $complaints = Complaint::orderby('created_at','DESC')->get();
        $fetchDatesList = Complaint::all('date');
        $tempDate = array();
        foreach($fetchDatesList as $key=>$value){
             $tempDate[] = $value->date ;
        }
        //return $tempDate;
        $datesList =  array_unique($tempDate);
        return view('admin.complaint.index',compact('complaints','datesList'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $fetchTechnicians = User::where(['role'=>'technician'])->get();
        $tempTech = array();
        foreach($fetchTechnicians as $key=>$value){
             $tempTech[] = $value->name ;
        }
        
        $technicians =  array_unique($tempTech);
        $products = Product::orderby('created_at','DESC')->get();
        return view('admin.complaint.create',compact('products','technicians'));
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
            'productName'=>'required', // this is product id or product name ! actually
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
        $product = Product::where(['name'=>$request->productName])->first();
        //--------------------------------
       

        //-------------------------------
        $complaint = new Complaint();
        $complaint->productName = $request->productName;
        $complaint->product_id  = $product->id; 
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
        return view('admin.complaint.edit',compact('complaint'));
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
        return redirect()->route('admin_complaints.index');
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
        return redirect()->route('admin_complaints.index');
    }
    public function listByDate(Request $request){
        
        if($request->listByDate !== null){
            $specificDate = $request->listByDate;
           
        }
        else{
            $specificDate = date('Y-m-d');
        }
        $complaints = Complaint::where(['date'=>$specificDate])->get();
        return view('admin.complaint.listByDate',compact('complaints','specificDate'));
    }
    public function technicianSlnListByYear(Request $request){
        $complaintsByYear =  Complaint::where('complaintSolverTechnicianName' , 'Ashraf_tech')->whereYear('created_at','=',$request->year)->get();
     
        return view('admin.users.detailsByYear',compact('complaintsByYear'));
    }
    
    public function technicianSlnListByYearMonth(Request $request){
        
        $complaintsByYearMonth =  Complaint::where('complaintSolverTechnicianName' , 'Ashraf_tech')
          ->whereYear('created_at','=',$request->byYear)
          ->whereMonth('created_at','=' ,$request->byMonth)
          ->get();
          return view('admin.users.detailsByYearMonth',compact('complaintsByYearMonth'));
          
    }
}
