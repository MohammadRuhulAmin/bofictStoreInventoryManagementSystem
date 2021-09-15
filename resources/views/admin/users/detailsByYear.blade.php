@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Users</h1>
          <br>
         
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">User Details  </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header --> 
  <div class="card m-3">
    <div class="card-header">
      <div class="card-title "><p> User Information </p></div>
    </div>
    <div class="card-body">
      <div class="row">
        <div class="col-sm-4">
         {{-- <div class="card">
            <div class="card-body">
             <h5 class="card-title">Special title treatment</h5>
              <table class="table table-sm">
                <tr>
                    <td>Role </td>
                    <td class="text-success"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Email </td>
                    <td></td>
                </tr>
                <tr>
                    <td>Total Problems Solved </td>
                    <td></td>
                </tr>   
              </table>
              
            </div>
         </div> --}}
        </div>
        <div class="col-sm-4">
          <form method="post" action="{{route('admin_complaints.listByYear')}}">
            @csrf 
          <div class="card">  
            <div class="card-body">
             <div class="row">
                <div class="col-12">
                  <div>
                    <h5 class="card-title">Search By Year </h5>
                    <select name="year"  class="form-control">
                      <option>2021</option>
                      <option>2022</option>
                      <option>2023</option>
                      <option>2024</option>
                      <option>2025</option>
                    </select>
                  
                  <button class="btn btn-primary"><i class="fas fa-search"></i> Search </button>
                  </div>
                </div>
               
             </div>
            </div>
          </div>
          </form>
        </div>
        <div class="col-sm-4">
          <form action="{{route('admin_complaints.listByYearMonth')}}" method="post">
            @csrf 
          <div class="card">
            <div class="card-body">
             <div class="row">
                <div class="col-6">
                  <div>
                    <h5 class="card-title">Select Month </h5>
                    <select name="byMonth" class="form-control">
                      <option value="{{"1"}}">January </option>
                      <option value="{{"2"}}">February</option>
                      <option value="{{"3"}}">March</option>
                      <option value="{{"4"}}">April</option>
                      <option value="{{"5"}}">May </option>
                      <option value="{{"6"}}">June</option>
                      <option value="{{"7"}}">July</option>
                      <option value="{{"8"}}">August</option>
                      <option value="{{"9"}}">September</option>
                      <option value="{{"10"}}">October</option>
                      <option value="{{"11"}}">November</option>
                      <option value="{{"12"}}">December</option>
                    </select>
                    
                    <button class="btn btn-primary"> <i class="fas fa-search"></i> Search </button>
                  </div>
                </div>
                <div class="col-6">
                  <div>
                    <h5 class="card-title">Select Year  </h5>
                    <select name="byYear" class="form-control">
                      <option>2020</option>
                      <option>2021</option>
                      <option>2022</option>
                      <option>2023</option>
                    </select>
                 
                  </div>
                </div>
             </div>
            </div>
          </div>
          </form>
        </div>
      </div>
    </div>
    <div class="card-footer">

    </div>
  </div>


  <br><br>
  
  <br>
  <br>
  <div class="card card-primary m-3">
    <div class="card-header">
      <h5 class="card-title">Technician Work List </h5>
    </div>
    <div class="card-body">
      <div class="row m-3">
        @foreach($complaintsByYear as $cop)
        
          <div class="col-lg-3">
            <div class="card mb-3" style="max-width: 35rem;">
              <div class="card-header">Date : {{$cop->date}}</div>
              <div class="card-body">
                <h5 class="card-title"></h5>
                <table class="table table-sm table-striped text-justify">
                  <tr>
                      <td> Complaint Date : </td>
                      <td>{{$cop->date}}</td>
                  </tr>
                  <tr>
                      <td> Complaint Time : </td>
                      <td>{{$cop->time}}</td>
                  </tr>
                  <tr>
                      <td> Person Complaint  </td>
                      <td>{{$cop->complaintName}}</td>
                  </tr>
                  <tr>
                      <td> Person Designation  </td>
                      <td>{{$cop->complaintDesignation}}</td>
                  </tr>
                  <tr>
                      <td> Complaint Description </td>
                      <td class="text-danger text-break">{{$cop->complaintDescription}}</td>
                  </tr>
                  <tr>
                      <td> Receiver of The Complaint  </td>
                      <td >{{$cop->complaintReceiverName}}</td>
                  </tr>
                  <tr>
                      <td>  Technician Name   </td>
                      <td >{{$cop->complaintSolverTechnicianName}}</td>
                  </tr>
                  <tr>
                      <td>  Product Received Date :    </td>
                      <td >{{$cop->complaintSolutionDate}}</td>
                  </tr>
                  <tr>
                      <td> Solution  Description :       </td>
                      <td class="text-info">{{$cop->complaintSolutionDescription}}</td>
                  </tr>
                  <tr>
                      <td> IC       </td>
                      <td>{{$cop->ic}}</td>
                  </tr>
                  <tr>
                      <td> OIC       </td>
                      <td>{{$cop->oic}}</td>
                  </tr>
              </table>
              </div>
            </div>
          </div>
          {{-- <span>
              {{$complaintsByYear->links()}}
          </span> --}}
        @endforeach
      </div>
    </div>
    <div class="card-footer">

    </div>
  </div>
  
@endsection

