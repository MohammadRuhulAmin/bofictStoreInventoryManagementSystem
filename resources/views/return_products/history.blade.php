

@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Return Product History </h1>
          <br>
   
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Return Product History  </li>
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
        <h3 class="card-title">Return Product  History List   </h3>
      </div>
      <br>
     
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Date</th>
                <th>Product</th>
                <th>Size</th>
                <th>Quantity</th>
            </tr>
        </thead>
        <tbody>
            @if($return_products)
                @foreach ($return_products as $key=> $return_product)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$return_product->date ?? ''}}</td>
                        <td>{{$return_product->product->name ??''}}</td>
                        <td>{{$return_product->size->size ?? ''}}</td>
                        <td>{{$return_product->quantity ??''}}</td>
                    </tr>
                @endforeach
            @endif
        </tbody>
      </table>
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
    
  
@endsection
