@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Complaints</h1>
          <br>
          <a href="{{route('complaints.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Complaints</a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('technician.dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Complaint List </li>
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
        <h3 class="card-title">Complaint  List  </h3>
      </div>
      <br>
      
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
               <th>C ID </th>
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
                            <a  href="{{route('complaints.edit',$complaint->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="complaint-delete-{{$complaint->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>

                            <form id="complaint-delete-{{$complaint->id}}" action="{{route('complaints.destroy',$complaint->id)}}" method="post">
                                @csrf 
                                @method('DELETE')
                            </form>
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
@endsection
