@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Stocks </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active"> <a href="{{route('stocks.index')}}"> Stock Index </a></li>
            <li class="breadcrumb-item active">  Create Stock item </li>
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
        <h3 class="card-title">Create a New Stock item  </h3>
     
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('stocks.store')}}" method="post">
        @csrf 
        <div class="card-body">
            <div class="form-group">
              <label for="exampleInputEmail1">Accessory  <span class="text-danger">*</span></label>
              <select name="accessoryName" id="selectAccessoryName" class="form-control">
                <option></option>
                @foreach($accessories as $accessory)
                  <option>{{$accessory->accessoryName}}</option>
                @endforeach
              </select>

              @if($errors->has('accessoryName'))
                  <span class="text-danger">Accessory  Name must be Provided! &  {{$errors->first('accessoryName')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">First Priority  <span class="text-danger"></span></label>
              <select name="accessoryFirstProperty" id="selectAccessoryFirstProperty" class="form-control">
                <option></option>
                @foreach($accessories as $accessory)
                  <option>{{$accessory->accessoryFirstProperty}}</option>
                @endforeach
              </select>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Second Priority  <span class="text-danger"></span></label>
              <select name="accessorySecondProperty" id="selectAccessorySecondProperty" class="form-control">
                <option></option>
                @foreach($accessories as $accessory)
                  <option>{{$accessory->accessorySecondProperty}}</option>
                @endforeach
              </select>
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Third Priority  <span class="text-danger"></span></label>
              <select name="accessoryThirdProperty" id="selectAccessoryThirdProperty" class="form-control">
                <option></option>
                @foreach($accessories as $accessory)
                  <option>{{$accessory->accessoryThirdProperty}}</option>
                @endforeach
              </select>
            </div>
            
            <div class="form-group">
              <label for="exampleInputEmail1">Date <span class="text-danger">*</span> </label>
              <input type="date" class="form-control" id="" name="date" placeholder="Date">
              @if($errors->has('date'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('date')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Inclusion </label>
              <input type="number" class="form-control" id="" name="inclusion" placeholder="Inclusion">
              {{-- @if($errors->has('inclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('inclusion')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Exclusion   </label>
              <input type="number" class="form-control" id="" name="exclusion" placeholder="Exclusion">
              {{-- @if($errors->has('exclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('exclusion')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Maintanance </label>
              <input type="text" class="form-control" id="" name="maintanance" placeholder="Maintanance">
              
            </div> 
            {{-- <div class="form-group">
              <label for="exampleInputEmail1">Store Balance <span class="text-danger">*</span> </label>
              <input type="number" class="form-control" id="" name="storeBalance" placeholder="Store Balance">
              @if($errors->has('storeBalance'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('storeBalance')}} </span>
              @endif
            </div> --}}
            <div class="form-group">
              <label for="exampleInputEmail1"> Issue No / Letter  </label>
              <input type="text" class="form-control" id="" name="issueNo" placeholder="Issue No">
              
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1"> Issued To <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="" name="issuedTo" placeholder="Issued To">
              {{-- @if($errors->has('issuedTo'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('issuedTo')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Branch <span class="text-danger">*</span> </label>
              <input type="text" class="form-control" id="" name="branch" placeholder="Branch ">
              {{-- @if($errors->has('branch'))
                  <span class="text-danger">Branch Must be Provided!   {{$errors->first('branch')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Remarks </label>
              <input type="text" class="form-control" id="" name="remarks" placeholder="Remarks ">
              
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
