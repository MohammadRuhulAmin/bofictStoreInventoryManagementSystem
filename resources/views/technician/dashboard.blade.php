@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('technician.dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Dashboard </li>
           
          </ol>
          
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                      <div class="inner">
                        <h3>1000</h3>
                        <p>Total Complaint</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                   
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>500<sup style="font-size: 20px"></sup></h3>
        
                        <p>Total Pending</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                 
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>502</h3>
        
                        <p>Total Problem Solved </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                      </div>
                
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3> 22 </h3>
        
                        <p>Todays Complaints</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                  
                    </div>
                  </div>
            </div>
      
          
    <!-- Main content -->
    <br>
    <a href="{{route('technician_complaints.create')}}" class="btn btn-sm btn-warning m-3"><i class="fa fa-plus"></i>Add  New Complaints</a>
    <div class="col-md-12">
      <!-- general form elements -->
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">Complaint  List  </h3>
        </div>
        <br>
        
        <h3 align="center"> {{date("Y-m-d")}}</h3>
        
        <table class="table table-bordered datatable">
          <thead>
              <tr>
                  <th>#SL</th>
                 <th>C ID </th>
                 <th>P. Name </th>
                  <th>Date</th>
                  <th>Time</th>
                  <th>Cnt Name</th>
                  <th>Cnt Designation</th>
                  <th>Cnt Description</th>
                  <th>Cnt Rcv Name</th>
                  <th>Sln By</th>
                  <th>Sln Date</th>
                  <th>Sln Descript</th>
                  <th>IC</th>
                  <th>OIC</th>
                  <th>Action </th>
              </tr>
          </thead>
          <tbody>
              @if($complaints)
                  @foreach ($complaints as $key=> $complaint)
                      <tr>
                          <td>{{++$key}}</td>
                            <td>{{$complaint->id}}</td>
                            <td>{{$complaint->productName}}</td>
                          <td>{{$complaint->date ??''}}</td>
                          <td>{{$complaint->time ?? ''}}</td>
                          <td>{{$complaint->complaintName ?? ''}}</td>
                          <td>{{$complaint->complaintDesignation ?? ''}}</td>
                          <td>{{$complaint->complaintDescription ?? ''}}</td>
                          <td>{{$complaint->complaintReceiverName ?? ''}}</td>
                          <td>{{$complaint->complaintSolverTechnicianName}}</td>
                          <td>{{$complaint->complaintSolutionDate ?? ''}}</td>
                          <td>{{$complaint->complaintSolutionDescription ?? ''}}</td>
                          <td>{{$complaint->ic ?? ''}}</td>
                          <td>{{$complaint->oic ?? ''}}</td>
                          <td>
                              <a  href="{{route('technician_complaints.edit',$complaint->id)}}" class="btn btn-sm btn-info">
                                  <i class="fa fa-edit"></i>  Edit 
                              </a>
                              {{-- <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="complaint-delete-{{$complaint->id}}">
                                <i class="fa fa-trash"></i>  Delete
                              </a>
  
                              <form id="complaint-delete-{{$complaint->id}}" action="{{route('complaints.destroy',$complaint->id)}}" method="post">
                                  @csrf 
                                  @method('DELETE')
                              </form> --}}
                          </td>
                      </tr>
                  @endforeach
              @endif
          </tbody>
        </table>
      </div>
      <!-- /.card -->
    </div>
    <!-- /.content -->
</div>
</div>
@endsection