@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('technician.dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Dashboard </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                      <div class="inner">
                        <h3>1000</h3>
                        <p>Total Complaint</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                   
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>500<sup style="font-size: 20px"></sup></h3>
        
                        <p>Total Pending</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                 
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>502</h3>
        
                        <p>Total Problem Solved </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                      </div>
                
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3> 22 </h3>
        
                        <p>Todays Complaints</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                  
                    </div>
                  </div>
            </div>
      
    <div class="card card-primary">
        <div class="card-body">
      
          <table class="table table-bordered datatable">
            <thead>
                <tr>
                    <th>#SL</th>
                    <th>Image</th>
                    <th>Dept</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Sub Category</th>
                    <th>Brand  </th>
                    <th>Type</th>
                    <th>Item</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
               
            </tbody>
          </table>
        </div>
    </div>
</div>
</div>
@endsection