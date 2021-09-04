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
            <li class="breadcrumb-item"><a href="{{route('user.dashboard')}}"> Home </a></li>
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
                        <h3>{{$total_department ?? 0}}</h3>
                        <p>Department</p>
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
                        <h3>{{$total_product ?? 0}}<sup style="font-size: 20px"></sup></h3>
        
                        <p>Products</p>
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
                        <h3>{{$total_category ?? 0 }}</h3>
                        <p>Category </p>
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
                        <h3>{{$total_brand ?? 0}}</h3>
                        <p>Brand</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                    </div>
                  </div>
            </div>
      
    <div class="card card-primary">
        <div class="card-body">
      
        
        </div>
    </div>
</div>
</div>
@endsection