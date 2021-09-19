@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Accessories</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active"> <a href="{{route('accessories.index')}}"> Accessory Index </a></li>
            <li class="breadcrumb-item active">  Update Accessory </li>
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
        <h3 class="card-title">Edit Accessory item  </h3>
     
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('accessories.update',$accessoryItem->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Accessory Name <span class="text-danger">*</span> </label>
            <input type="text" class="form-control" id="" name="accessoryName" placeholder="Accessory Name " value={{$accessoryItem->accessoryName}}>
            @if($errors->has('accessoryName'))
                <span class="text-danger">Accessory Name must be Provided! &  {{$errors->first('accessoryName')}} </span>
            @endif

          </div>
          {{-- <div class="form-group">
            <label for="exampleInputEmail1">Accessory First Property</label>
            <input type="text" class="form-control" id="" name="accessoryFirstProperty" value={{$accessoryItem->accessoryFirstProperty}}  placeholder="Accessory First Property " >
          </div> --}}
          <div class="form-group">
            <label for="exampleInputEmail1">Accessory First  Property </label>
            <input type="text" class="form-control" id="" name="accessoryFirstProperty" placeholder="Accessory First Property " value={{$accessoryItem->accessoryFirstProperty}}>
        </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Accessory Second Property </label>
                <input type="text" class="form-control" id="" name="accessorySecondProperty" placeholder="Accessory Second Property " value={{$accessoryItem->accessorySecondProperty}}>
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Accessory Third Property </label>
                <input type="text" class="form-control" id="" name="accessoryThirdProperty" placeholder="Accessory Third Property " value={{$accessoryItem->accessoryThirdProperty}}>
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
