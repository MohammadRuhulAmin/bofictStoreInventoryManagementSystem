

@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Stock History </h1>
          <br>
          <a href="{{route('categories.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Category Item</a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Stock History  </li>
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
        <h3 class="card-title">Stock History List   </h3>
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
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            @if($stocks)
                @foreach ($stocks as $key=> $stock)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$stock->date ??''}}</td>
                        <td>{{$stock->product->name ??''}}</td>
                        <td>{{$stock->size->size ??''}}</td>
                        <td>{{$stock->quantity ??''}}</td>
                        <td>{{strtoupper($stock->status) ??''}}</td>
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
