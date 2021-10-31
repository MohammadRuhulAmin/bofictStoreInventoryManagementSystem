@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Camera Location </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('cameralocations.index')}}"> CameraLocation List    </a></li>
            <li class="breadcrumb-item active">Create Camera Location </li>
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
        <h3 class="card-title">Create a New Camera Location  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('cameralocations.store')}}" method="post">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Location Name  </label>
            <input type="text" class="form-control" id="" name="locationName" placeholder="Location Name ">
            @if($errors->has('locationName'))
                <span class="text-danger">{{$errors->first('locationName')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Location Details</label>
            <input type="text" class="form-control" id="" name="locationDetails" placeholder="Location Details ">
            {{-- @if($errors->has('locationDetails'))
                <span class="text-danger"> {{$errors->first('locationDetails')}}</span>
            @endif --}}
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Total Camera </label>
            <input type="number" class="form-control" id="" name="totalCamera" placeholder="Total Camera ">
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
