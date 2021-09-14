@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Issues </h1>
          <br>
         
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Product Issue  User List  </li>
            <li class="breadcrumb-item active">Issue Details   </li>
            <li class="breadcrumb-item active">Product Repairment History   </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header --> 
  <div class="row m-3">
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title"> Summary   </h5>
          <table class="table table-sm">
            <tr>
                <td>Product Status </td>
                <td class="text-success"> <span class="badge badge-success"> Active </span> </td>
            </tr>
            <tr>
                <td> Total Repairments   </td>
                <td>{{$complaintsCount}}</td>
            </tr>
            <tr>
                <td>   </td>
                <td><span class="badge badge-success"></span></td>
            </tr>
            <tr>
                <td>  </td>
                <td><span class="badge badge-info"></span></td>
            </tr>   
          </table>
        </div>
      </div>
    </div>
  </div>

  <div class="card m-3">
    <div class="card-header">
      <div class="card-title">Product Repariement History List </div>
    </div>
    <div class="card-body">
      <div class="row m-3">
        @foreach($complaintsOfProduct as $cop)
        
          <div class="col-lg-4">
            <div class="card  mb-3" style="max-width: 35rem;">
              <div class="card-header">Date : {{$cop->date}}</div>
              <div class="card-body">
                <h5 class="card-title"></h5>
                <table  class="table table-sm table-striped text-justify" >
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
        
        @endforeach
      </div>
    </div>
   </div>

  
@endsection

