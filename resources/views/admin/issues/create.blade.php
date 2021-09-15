@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Issue </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"><a href="{{route('productIssuesUsers.index')}}"> Product Issue  User List </a>  </li>
            <li class="breadcrumb-item active">Create User for a product Issue </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="card card-primary m-3">
    <div class="card-header">
      <h3 class="card-title">Import CSV / Excel  File</h3>
    </div>
  <div class="card-body">
    <form method="post" enctype="multipart/form-data" action="{{route('admin.productUsersInfo.import')}}">
        @csrf 
        <div class="form-group">
          
          <div>
           
            <p class="text-danger">Note : **  In table heading , Must : provide [ first colum empty  ,bofid , name  ,designation ]   </p>
          </div>
          <label for="file" class="form-control">Import an CVS / Excel  File</label>
          <input type="file" class="form-control" name="cvsFile"/>
        </div>
        @if($errors->has('cvsFile'))
          <span class="text-danger">Please insert a valid Excel / CSV File with the Proper file extention &  {{$errors->first('cvsFile')}} </span>
        @endif
        <div class="card-footer">
          <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
      </div>
    </form>
</div>
</div>
  <!-- Main content -->
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create a New User for Issue </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('productIssuesUsers.store')}}" method="post">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Bof Id  </label>
            <input type="text" class="form-control" id="" name="bofid" placeholder="Bof Id" value="{{old('bofId')}}">
            @if($errors->has('bofid'))
                <span class="text-danger">Bof Id  must be Provided! </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Product User  Name </label>
            <input type="text" class="form-control" id="" name="name" placeholder="Product User  Name " value="{{old('name')}}">
            @if($errors->has('name'))
                <span class="text-danger">Product User  Name must be Provided! </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Product User  Designation  </label>
            <input type="text" class="form-control" id="" name="designation" placeholder="Designation" value="{{old('designation')}}">
            @if($errors->has('designation'))
                <span class="text-danger">Designation  Name must be Provided! </span>
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
