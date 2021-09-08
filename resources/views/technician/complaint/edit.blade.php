@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Complaints </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('technician.dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Edit Complaint</li>
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
        <h3 class="card-title">Edit  a New Complaint  </h3>
      </div>
      <!-- /.card-header -->
      
      <!-- form start -->
      <form role="form" action="{{route('technician_complaints.update',$complaint->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
            
          <div class="form-group">
            <label for="exampleInputEmail1"> Date  </label>
            <input type="date" class="form-control" id="" name="date" value="{{$complaint->date}}">
            @if($errors->has('date'))
                <span class="text-danger">Date  must be Provided! &  {{$errors->first('date')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Time   </label>
            <input type="time" class="form-control" id="" name="time" value="{{$complaint->time}}">
            @if($errors->has('time'))
                <span class="text-danger">Time  must be Provided! &  {{$errors->first('name')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Name    </label>
            <input type="text" class="form-control" id="" name="complaintName" value="{{$complaint->complaintName}}">
            @if($errors->has('complaintName'))
                <span class="text-danger">Name of the complaint must be Provided! &  {{$errors->first('complaintName')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Designation     </label>
            <input type="text" class="form-control" id="" name="complaintDesignation" value="{{$complaint->complaintDesignation}}">
            @if($errors->has('complaintDesignation'))
                <span class="text-danger">Complaint Designation must be Provided! &  {{$errors->first('complaintDesignation')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Description     </label>
            <input type="text" class="form-control" id="" name="complaintDescription" value="{{$complaint->complaintDescription}}">
            @if($errors->has('complaintDescription'))
                <span class="text-danger"> Description  must be Provided! &  {{$errors->first('complaintDescription')}}</span>
            @endif
          </div> 
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Receiver Name      </label>
            <input type="text" class="form-control" id="" name="complaintReceiverName" value="{{$complaint->complaintReceiverName}}">
            @if($errors->has('complaintReceiverName'))
                <span class="text-danger">Receiver  must be Provided! &  {{$errors->first('complaintReceiverName')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">  Complaint Solver Technician Name     </label>
            <input type="text" class="form-control" id=""  name="complaintSolverTechnicianName" value="{{$complaint->complaintSolverTechnicianName}}">
            @if($errors->has('complaintSolverTechnicianName'))
                <span class="text-danger">Solver  must be Provided! &  {{$errors->first('complaintSolverTechnicianName')}}</span>
            @endif
          </div>
          
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Solution Date    </label>
            <input type="date" class="form-control" id="" name="complaintSolutionDate" value="{{$complaint->complaintSolutionDate}}">
            @if($errors->has('complaintSolutionDate'))
                <span class="text-danger"> Problem Solution Date   {{$errors->first('complaintSolutionDate')}}</span>
            @endif
          </div>
          
          <div class="form-group">
            <label for="exampleInputEmail1"> Complaint Solution Description    </label>
            <input type="text" class="form-control" id="" name="complaintSolutionDescription" value="{{$complaint->complaintSolutionDescription}}">
            @if($errors->has('complaintSolutionDescription'))
                <span class="text-danger">Solution Description  Name must be Provided! &  {{$errors->first('complaintSolutionDescription')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> IC    </label>
            <input type="checkbox" class="form-control" id="" name="ic" value="{{$complaint->ic}}">
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> OIC    </label>
            <input type="checkbox" class="form-control" id="" name="oic" value="{{$complaint->oic =='on' ? 'checked': ''}}">
           
          </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
    
  
@endsection
