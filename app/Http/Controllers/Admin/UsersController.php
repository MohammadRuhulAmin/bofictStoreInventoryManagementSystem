<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Admin\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use App\Models\Technician\Complaint;
use Illuminate\Support\Facades\Session;
class UsersController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $users = User::orderby('created_at','DESC')->get();
        return view('admin.users.index',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.users.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
        $totalUser = User::count() + 1; // for getting the next id.. 
        $this->validate($request,[
            'name'=>'required|min:2|max:100',
            'designation'=>'required',
            'password'=>'required|min:3|max:50'
        ]);
        $user = new User();
        $user->name = $request->name;
        $user->designation = $request->designation;
        $user->email = $user->name."_".$user->designation."_".$totalUser."@bof.org";
        $user->password = Hash::make($request->password);
        $checkEmail = User::where(['email' =>$user->email])->count();
        if($checkEmail == 0){
            $user->save();
            flash('User created Successfully!')->success();
            return redirect()->route('users.index');
        }
        else{
            flash('User Has already Created By This Mail !')->error();
            return redirect()->route('users.index');
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
        $user = User::findOrFail($id);
        return view('admin.users.edit',compact('user'));
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
            'name'=>'required|min:2|max:100',
            'email'=>'required|email|unique:users,email,'.$id,
            'password' =>'nullable|min:8|max:50|confirmed',
           
        ]);
        $user =  User::findOrFail($id);
        $user->name = $request->name;
        $user->email = $request->email;
        if($request->has('password')){
            $user->password = Hash::make($request->password);
        }
      
        $user->save();
        flash('User Updated Successfully!')->success();
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        $user->delete();
        flash('User Deleted Successfully  !')->success();
        return back();
        
    }
    public function logout(){
        Auth::logout();
        return redirect('/login');
    }

    public function toTechnician($id){
        $user = User::findOrFail($id);
        $user->role = "technician";
        $user->save();
        flash('User Permission Has changed to Technician  Successfully  !')->success();
        return back();
    }
    public function toUser($id){
        $user = User::findOrFail($id);
        $user->role = "user";
        $user->save();
        flash('User Permission Has changed to Regular User  Successfully  !')->success();
        return back();
    }
    public function toAdmin($id){
        $user = User::findOrFail($id);
        $user->role = "admin";
        $user->save();
        flash('User Permission Has changed to Admin  Successfully  !')->success();
        return back();
    }
    public function detailsOfUser($id){
       
        $userInformation = User::findOrFail($id);
        session()->put(['detailsOfUserName'=>$userInformation->name]);
        $complaintsOfProduct = Complaint::where(['complaintSolverTechnicianName'=>$userInformation->name])->get();
        return view('admin.users.details',compact('userInformation','complaintsOfProduct'));
        
    }

}
