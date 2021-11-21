@extends('layouts.master')
@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Products</h1>
          <br>
          <a href="{{route('products.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add New Product Item</a>
          <a href="{{route('products.repeatedProductsList')}}" class="btn btn-sm btn-danger" > <i class="fa fa-delete"></i> Repeated Product </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Product List </li>
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
        <h3 class="card-title">Product  List   </h3>
      </div>
      <br>
      <br>
      <div class="row">
        <div class="col-sm-6">
          <div class="card">
            <div class="card-header">
              <h5 class="card-title">Download All Products List </h5>
            </div>
            <div class="card-body">
              <a href="{{route('admin.product.excel')}}" class="btn btn-warning">Download as Excel File  </a>
              <a href="{{route('admin.product.csv')}}" class="btn btn-primary">Download as CSV FIle  </a>
            </div>
          </div>
        </div>
      </div>
      <br>
      <br>
     <div class="card">
        <div class="card-header">
          <b> Search Information # </b> 
          <input type="text" class="form-control" id="search_product">
          <label class="card-title" align='center' id="totalRecords">  </label>
        </div>
        <div class="card-body">
          <table class="table table-striped">
            <thead>
              <th>SL</th>
              <th>Status</th>
              <th>Department</th>
              <th>ProductName</th>
              <th>Category</th>
              <th>SubCategory</th>
              <th>Brand</th>
              <th>Item</th>
              <th>Type</th>
              <Th>Description</Th>
            </thead>
            <tbody id="tbody-productsTable">
               
            </tbody>
        </table>
        </div>
        <div class="card-footer"></div>
     </div>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->    
@endsection

