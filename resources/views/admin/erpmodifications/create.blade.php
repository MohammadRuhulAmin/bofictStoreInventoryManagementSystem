@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"> ERP Modification </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active"> <a href="{{route('erpmodification.index')}}"> ERP Index </a></li>
            <li class="breadcrumb-item active">  Create Erp Error </li>
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
        <h3 class="card-title">Create a New ERP Modification  </h3>
      </div>
  
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('erpmodification.store')}}" method="post" enctype="multipart/form-data">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Problem ID  </label>
            <input type="text" class="form-control" id="" name="problem_id" placeholder="Problem_ID">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Problem Link / Form Link   </label>
            <input type="text" class="form-control" id="" name="form_link" placeholder="Form Link / Problem Link ">
            @if($errors->has('form_link'))
                <span class="text-danger"> {{$errors->first('form_link')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Module   </label>
            <select class="form-control" name="module">
                <option>ICT</option>
                <option>Administration</option>
                <option>Security</option>
                <option>Common Dashboard</option>
            </select>
            @if($errors->has('module'))
                <span class="text-danger">{{$errors->first('module')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Problem Description </label>
            <textarea class="form-control" name="problemDescription" rows="5"></textarea>
            @if($errors->has('problemDescription'))
                <span class="text-danger">  {{$errors->first('problemDescription')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Problem Detected Date </label>
            <input type="date" class="form-control" name="problemFindingDate">
            @if($errors->has('problemFindingDate'))
                <span class="text-danger">  {{$errors->first('problemFindingDate')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Problem Solution  Date </label>
            <input type="date" class="form-control" name="problemSolutionDate">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Problem Detected By </label>
            <input type="text" class="form-control" name="problem_detected_by">
            @if($errors->has('problem_detected_by'))
                <span class="text-danger"> {{$errors->first('problem_detected_by')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Problem Status </label>
            <select class="form-control" name="status">
                <option></option>
                <option>Solved</option>
                <option>Submitted To IBCX-Primax</option>
                <option>In Process</option>
                <option>Unsolved</option>
                <option>ERP Operator Has to Varify First </option>
            </select>
            @if($errors->has('status'))
                <span class="text-danger"> {{$errors->first('status')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Upload Image / Screen Shot   </label>
            <input type="file" name="image" class="form-control">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Suggation    </label>
            <input type="text" name="suggation" class="form-control">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Remarks    </label>
            <input type="text" name="remarks" class="form-control">
          </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i> Submit </button>
        </div>
      </form>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
