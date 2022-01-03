@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">ERP Modification </h1>
          <br>
          <a href="{{route('erpmodification.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Problem </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">ERP Modification List  </li>
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
        <h3 class="card-title">Modification / Problems List  </h3>
      </div>
      <br>
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Problem Link</th>
                <th>Problem Finding Date </th>
                <th>Problem Solution Date </th>
                <th>Problem Detected By </th>
                <th>Problem Status</th>
                <th>Action </th>
            </tr>
        </thead>
        <tbody>
            @if($erpProblems)
                @foreach ($erpProblems as $key=> $erp)
                    <tr>
                        <td>{{++$key}}</td>
                        <td><a href="{{$erp->form_link}}">{{$erp->form_link}}</a></td>
                        <td>{{$erp->problemFindingDate}}</td>
                        <td>{{$erp->problemSolutionDate}}</td>
                        <td>{{$erp->problem_detected_by}}</td>
                        <td>{{$erp->status}}</td>
                        <td>
                          <a  href="{{route('erpmodification.show',$erp->id)}}" class="btn btn-sm btn-success">
                            <i class="fa fa-info"></i>
                          </a>
                            <a  href="{{route('erpmodification.edit',$erp->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="erp-delete-{{$erp->id}}">
                              <i class="fa fa-trash"></i> 
                            </a>
                         
                            <form id="brand-delete-{{$erp->id}}" action="{{route('erpmodification.destroy',$erp->id)}}" method="post">
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
