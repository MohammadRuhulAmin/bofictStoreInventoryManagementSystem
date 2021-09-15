@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Product-User Relation  </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right"> 
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"><a href="{{route('productIssuesUsers.index')}}"> Product Issue  User List </a>  </li>
            <li class="breadcrumb-item active">Assign product with User </li>
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
        <h3 class="card-title">Assign product with the User  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('assignProductWithUsers.store')}}" method="post">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Bof Id  </label>
            <select class="form-control" id="selectProductUserId" name="BofUserId">
                <option></option>
                @foreach($productIssuers as $pis) 
                    <option>{{ $pis->bofid }}</option>
                @endforeach
            </select>
            @if($errors->has('BofUserId'))
                <span class="text-danger">Bof Id  must be Provided! </span>
            @endif
          </div>

         

          <div class="form-group">
            <label for="exampleInputEmail1">Product Id   </label>
            <select class="form-control" id="selectProductId" name="ProductId">
                <option></option>
                @foreach($products as $prd) 
                <option>{{$prd->name }}</option>
                @endforeach

            </select>
            @if($errors->has('ProductId'))
                <span class="text-danger">Product Id  must be Provided! </span>
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
