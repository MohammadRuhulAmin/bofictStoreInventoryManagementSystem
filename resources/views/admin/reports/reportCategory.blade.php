@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Report Category</h1>
          <br>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"> Category Report  </li>
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
        <h3 class="card-title">  Category Of Report  </h3>
      </div>
      <div class="card-body">
        <div class="row">
            <div class="col-md-3">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">
                            <a href="{{route('report.index')}}">Report By Department </a>
                        </h3> 
                        
                    </div>
                </div>
            </div>
            <div class="col-md-3">
              <div class="card">
                  <div class="card-header">
                      <h3 class="card-title">
                          <a href="{{route('report.index')}}">Report By Category  </a>
                      </h3> 
                      
                  </div>
              </div>
          </div>
        </div>
      </div>
      
   
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
    
  
@endsection
