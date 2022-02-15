@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Book</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('brands.index')}}"> Book   </a></li>
            <li class="breadcrumb-item active">Create A Book </li>
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
        <h3 class="card-title">Create a New Book </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('booknotesheet.store')}}" method="post">
        @csrf 
        {{-- 'bookName','bookOpenDate','bookCloseDate','bookDescription','bookNumber' --}}
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Book Name </label>
            <input type="text" class="form-control" id="" name="bookName" placeholder="Book Name">
            @if($errors->has('bookName'))
                <span class="text-danger"> Book Name  {{$errors->first('bookName')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Book Number </label>
            <input type="text" class="form-control" id="" name="bookNumber" placeholder="Book Number">
            @if($errors->has('bookNumber'))
                <span class="text-danger"> {{$errors->first('bookNumber')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Book Open Date  </label>
            <input type="date" class="form-control" id="" name="bookOpenDate" placeholder="Book Open Date">
            @if($errors->has('bookOpenDate'))
                <span class="text-danger">{{$errors->first('bookOpenDate')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Book Closing Date  </label>
            <input type="date" class="form-control" id="" name="bookCloseDate" placeholder="Book Closing Date">
            {{-- @if($errors->has('bookClosingDate'))
                <span class="text-danger">{{$errors->first('bookClosingDate')}}</span>
            @endif --}}
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Book Description  </label>
            <input type="text" class="form-control" id="" name="bookDescription" placeholder="Book Description">
            @if($errors->has('bookDescription'))
                <span class="text-danger">{{$errors->first('bookDescription')}}</span>
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
