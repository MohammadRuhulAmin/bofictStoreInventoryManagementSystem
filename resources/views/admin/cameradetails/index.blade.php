@extends('layouts.master')
@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">  Camera Information  </h1>
          <br>
          <a href="{{route('cameradetails.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Camera Information  </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"> Camera Information </li>
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
        <h3 class="card-title">Camera Information List  </h3>
      </div>
      <br>
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th> #SL</th>
                <th> ICT No</th>
                <th> Parent Location </th>
                <th> Location Details</th>
                <th> Camera Type</th>
                <th> Default IP Address </th>
                <th> Used IP Address </th>
                <th>Remarks</th>
                <th> Action </th>
            </tr>
        </thead>
        <tbody>
            @if($cameraDetailsList)
                @foreach ($cameraDetailsList as $key=> $cameraDetails)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$cameraDetails->ictNo ??''}}</td>
                        <td>{{$cameraDetails->cameraParentLoccation ??''}}</td>
                        <td>{{$cameraDetails->specificLocationOfCamera ??''}}</td>
                        <td>{{$cameraDetails->cameraType ??''}}</td>
                        <td>{{$cameraDetails->defaultIpAddress ??''}}</td>
                        <td>{{$cameraDetails->usedIpAddress ??''}}</td>
                        <td>{{$cameraDetails->remarks ??''}}</td>
                        <td>
                            <a  href="{{route('cameradetails.edit',$cameraDetails->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit  
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="cameraDetail-delete-{{$cameraDetails->id}}">
                              <i class="fa fa-trash"></i>  Delete 
                            </a>
                            <form id="cameraDetail-delete-{{$cameraDetails->id}}" action="{{route('cameradetails.destroy',$cameraDetails->id)}}" method="post">
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
