@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Issue</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"> Edit An Existing  User for Issue </li>
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
        <h3 class="card-title">Edit Issue information  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('productIssuesUsers.update',$productIssueUser->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Name of Product User  </label>
            <input type="text" class="form-control" id="" name="name" placeholder="Name of Product User" value="{{$productIssueUser->name}}">
            @if($errors->has('name'))
                <span class="text-danger"> Product User Name must be provided </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Designation  </label>
            <input type="text" class="form-control" id="" name="designation" placeholder="Designation" value="{{$productIssueUser->designation}}">
            @if($errors->has('designation'))
                <span class="text-danger">Designation of the product user must be provided </span>
            @endif
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
