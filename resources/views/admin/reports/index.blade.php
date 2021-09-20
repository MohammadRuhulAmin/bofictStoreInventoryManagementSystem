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
        <h3 class="card-title">Generate Report  </h3>
      </div>
      <div class="card-body">
       
          <div class="card card-primary m-3">
            <form action="{{route('report.GenerateByCategory')}}" method="post">
              @csrf 
              <div class="card-header">
                <h6 class="card-text">Generate Report of Product By Category Wise </h6>
              </div>
              <div class="card-body">
                <div class="form-group">
                  <label> Select Category </label>
                <select name="SearchByCategory" class="form-control">
                  <option></option>
                  @foreach ($categories as $category )
                      <option>{{$category->name}}</option>
                  @endforeach
                </select>
                </div>
              </div>
              <div class="card-footer">
                <button class="btn btn-success"><i class="fa fa-download"></i>Download Excel</button>
                <button class="btn btn-success"><i class="fas fa-file-pdf"></i>Download PDF</button>
              </div>
            </form>
          </div>
          <div class="card card-primary m-3">
            <form action="{{route('report.GenerateByCategorySubcategory')}}"  method="post">
              @csrf 
              <div class="card-header card-primary">
                <h6 class="card-text">Generate Report of Product By Category & Subcategory Wise  </h6>
              </div>
              <div class="card-body">
               <div class="form-group">
                <label> Select Category </label>
                <select name="SearchByCategory" class="form-control">
                  <option></option>
                  @foreach ($categories as $category )
                      <option>{{$category->name}}</option>
                  @endforeach
                </select>
               </div>
               <div class="form-group">
                <label> Select Sub Category</label>
                <select name="SearchBySubCategory" class="form-control">
                  <option></option>
                  @foreach ($subcategories as $subcategory )
                      <option>{{$subcategory->name}}</option>
                  @endforeach
                </select>
               </div>
              </div>
              <div class="card-footer">
                <button class="btn btn-success"><i class="fa fa-download"></i>Download Excel</button>
                <button class="btn btn-success"><i class="fas fa-file-pdf"></i>Download PDF</button>
              </div>
            </form>
          </div>
      </div>
      </div>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
