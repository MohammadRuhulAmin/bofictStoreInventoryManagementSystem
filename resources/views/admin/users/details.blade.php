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
 
  <!-- Main content -->
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">User Details Information   </h3>
      </div>
      <br>
      <table class="table table-striped">
        <tr>
            <td>Role </td>
            <td class="text-success">{{$userInformation->role}}</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>{{$userInformation->name}}</td>
        </tr>
        <tr>
            <td>Email </td>
            <td>{{$userInformation->email }}</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
        </tr>   
      </table>
      
      <hr>
    
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
  <div class="m-2">
    <div class="card card-primary card-outline">
       <div class="card-header">
        <h5 class="card-title"> Product Repairements  History  </h5>
       </div>
        <div class="card-body text-center">
            @foreach ($complaintsOfProduct as $cop)
            <h3 align="center">Date{{$cop->date}}</h3>
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
                    <td>{{$cop->complaintSolutionDescription}}</td>
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
            <br>
            <br>
            @endforeach
           
        </div>
    </div>
</div>
@endsection
