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
  

  <br><br>
  
  <br>
  <br>
  <div class="row m-3">
  @foreach($complaintsByYearMonth as $cop)
  
    <div class="col-lg-4">
      <div class="card text-white bg-dark mb-3" style="max-width: 35rem;">
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
  
  @endforeach
</div>
@endsection

