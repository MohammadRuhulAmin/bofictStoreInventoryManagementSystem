@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Report Generator  </h1>
          <br>
        
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Report Generator   </li>
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
      <h3 class="card-title">Generate Report  of Department </h3>
      </div>
      <div class="row">
        <div class="col-md-4">
          <div class="card card-primary m-3">
            <form  method="post">
              @csrf 
              <div class="card-header">
                <h6 class="card-text">Generate Report of Product By Department </h6>
              </div>
              <div class="card-body">
                <div class="form-group">
                  <label> Select Depertment </label>
                <select name="SearchByDepartment_1" class="form-control">
                  <option></option>
                  @foreach ($departments as $department )
                      <option>{{$department->name}}</option>
                  @endforeach
                </select>
                @if($errors->has('SearchByDepartment_1'))
                  <span class="text-danger">Department Name must be Provided!   {{$errors->first('SearchByDepartment_1')}} </span>
                @endif
                </div>
              </div>
              <div class="card-footer">
             
                <button class="btn btn-success" type="submit" formaction="{{route('report.GenByDepartmentToPDF')}}" ><i class="fas fa-file-pdf"></i>Download PDF</button> 
              </div>
            </form>
          </div> 
        </div>
        <div class="col-md-4">
          <div class="card card-primary m-3">
            <form  method="post">
              @csrf 
              <div class="card-header">
                <h6 class="card-text">Generate Report of Product By Department & Category  </h6>
              </div>
              <div class="card-body">
                <div class="form-group">
                  <label> Select Depertment </label>
                <select name="SearchByDepartment_2" class="form-control">
                  <option></option>
                  @foreach ($departments as $department )
                      <option>{{$department->name}}</option>
                  @endforeach
                </select>
                @if($errors->has('SearchByDepartment_2'))
                  <span class="text-danger">Department Name must be Provided!   {{$errors->first('SearchByDepartment_2')}} </span>
                @endif
                </div>
                <div class="form-group">
                  <label> Select Category  </label>
                <select name="SearchByCategory_2" class="form-control">
                  <option></option>
                  @foreach ($categories as $category )
                      <option>{{$category->name}}</option>
                  @endforeach
                </select>
                @if($errors->has('SearchByCategory_2'))
                  <span class="text-danger">Category Name must be Provided!   {{$errors->first('SearchByCategory_2')}} </span>
                @endif
                </div>
              </div>
              <div class="card-footer">
             
                <button class="btn btn-success" type="submit" formaction="{{route('report.GenByDepartmentCatToPDF')}}" ><i class="fas fa-file-pdf"></i>Download PDF</button> 
              </div>
            </form>
          </div>

        </div>
      </div>
      </div>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection