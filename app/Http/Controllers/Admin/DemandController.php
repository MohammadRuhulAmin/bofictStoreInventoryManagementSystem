<?php
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Admin\Demand;
use App\Models\Admin\Department;
class DemandController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {  
        $demandsList = Demand::orderBy('created_at','DESC')->get();
        return view('admin.demands.index',compact('demandsList'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $departments = Department::orderBy('created_at','DESC')->get();
        return view('admin.demands.create',compact('departments'));
    }
    /*
     * Store a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request.
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'department'=>'required',
            'demandDate' =>'required',
        ]);
        $itemList = $request->itemList;
        $quantityList = $request->quantityList;
        $perpousList = $request->perpousList;
        for($i = 0;$i<count($itemList);$i++){
            $demand = new Demand();
            $demand->department = $request->department;
            $demand->demandPerpousDescription = $request->demandPerpousDescription;
            $demand->demandDate = $request->demandDate;
            $demand->issueDate = $request->issueDate;
            $demand->specification = $request->specification;
            $demand->item = $itemList[$i];
            $demand->demandQuantity = $quantityList[$i];
            $demand->demandPerpousDescription = $perpousList[$i];
            $demand->save();
        }
        flash('New Demand  is Created  Successfully!')->success();
        return redirect()->route('demands.index');
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
        
    }
}
