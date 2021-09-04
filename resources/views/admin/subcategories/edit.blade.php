@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Sub Categories</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"> Sub category Edit</li>
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
        <h3 class="card-title">Edit The Sub category  Item  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('subcategories.update',$subcategory->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Subcategory  Name </label>
            <input type="text" class="form-control" id="" name="name" placeholder="Sub category Name " value="{{$subcategory->name}}">
            @if($errors->has('name'))
                <span class="text-danger">Subcategory Name must be Provided! &  {{$errors->first('name')}}</span>
            @endif
          </div>
        </div>
        <!-- /.card-body -->

        <div class="card-footer">
          <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
    
  
@endsection
