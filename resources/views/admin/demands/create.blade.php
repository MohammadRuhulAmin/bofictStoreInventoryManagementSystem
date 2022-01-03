@extends('layouts.master')
@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Demands</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('demands.index')}}"> Demand List  </a></li>
            <li class="breadcrumb-item active">Create Demand</li>
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
      <form action="{{route('demands.store')}}" method="post">
        @csrf
        <div class="card-header">
          <h3 class="card-title">Create a New Demand  </h3>
        </div>
        <div class="card-body">
          <div class="form-group">
            <label>Department / Section <span class="text-danger">*</span></label>
            <select class="form-control" id="selectDepartment" name="department">
              <option></option>
              @foreach ($departments as $department)
                <option>{{$department->name ??''}}</option>
              @endforeach
            </select>
            @if($errors->has('department'))
              <span class="text-danger">Demand Date Must Be Provided {{$errors->first('department')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label>Date of Demand :  <span class="text-danger">*</span> </label> 
            <input class="form-control" type="date" name="demandDate">
            @if($errors->has('demandDate'))
              <span class="text-danger">Demand Date Must Be Provided {{$errors->first('demandDate')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label>Date of Issue : </label> 
            <input class="form-control" type="date" name="issueDate">
          </div>
          <div class="form-group">
            <label>Any Specifications :  </label> 
            <input class="form-control" type="text" name="specification">
          </div>
          <div class="form-group">
            <button class="btn btn-success" id="addDynamicItemQuantityInput"> + Add Item & Quantity</button>
          </div>
          <div id="dynamic_fieldInput"></div>
        </div>
        <div class="card-footer">
          <input type="submit" value="Save Demand">
        </div>
      </form>
    </div>
    <!-- /.card --> 
  </div>
  <!-- /.content -->
@endsection

