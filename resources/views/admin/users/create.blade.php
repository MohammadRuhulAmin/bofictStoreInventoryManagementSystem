@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">User</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Create User </li>
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
        <h3 class="card-title">Create a New User </h3>
     
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('users.store')}}" method="post">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">User Name <span class="text-danger">*</span> </label>
            <input type="text" class="form-control" id="" name="name" placeholder="User Name ">
            @if($errors->has('name'))
                <span class="text-danger">User name must be Provided! &  {{$errors->first('name')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">User  Designation <span class="text-danger">*</span>  </label>
            <input type="text"  class="form-control" id="" name="designation"  placeholder="User Designation  ">
            @if($errors->has('email'))
                <span class="text-danger">Email  must be Provided! &  {{$errors->first('designation')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">User Password <span class="text-danger">*</span> </label>
            <input type="password"  class="form-control" id="" name="password" placeholder="Password  ">
            @if($errors->has('password'))
                <span class="text-danger">Password  must be Provided! &  {{$errors->first('password')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">User Email  <span class="text-danger">*</span>  </label>
            {{-- <input type="password"  class="form-control" id="" name="password_confirmation" placeholder="Confirm the Password  "> --}}
            <b>User Email will be automatically Generated ! Go to Index </b>
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
