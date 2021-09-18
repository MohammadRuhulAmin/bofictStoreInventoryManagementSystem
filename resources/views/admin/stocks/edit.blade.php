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
      <form role="form" action="{{route('stocks.update',$stock->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
            <div class="form-group">
              <label for="exampleInputEmail1">Item <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="" name="item" placeholder="Item Name " value="{{$stock->item}}" >
              @if($errors->has('item'))
                  <span class="text-danger">Item  Name must be Provided! &  {{$errors->first('item')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Item Details <span class="text-danger">*</span>  </label>
              <input type="text" class="form-control" id="" name="details" placeholder="Item Details " value="{{$stock->details}}">
              @if($errors->has('details'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('details')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Date <span class="text-danger">*</span> </label>
              <input type="date" class="form-control" id="" name="date" placeholder="Date" value="{{$stock->date}}">
              @if($errors->has('date'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('date')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Inclusion <span class="text-danger">*</span></label>
              <input type="number" class="form-control" id="" name="inclusion" placeholder="Inclusion" value="{{$stock->inclusion}}">
              @if($errors->has('inclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('inclusion')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Exclusion <span class="text-danger">*</span>  </label>
              <input type="number" class="form-control" id="" name="exclusion" placeholder="Exclusion" value="{{$stock->exclusion}}">
              @if($errors->has('exclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('exclusion')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Maintanance </label>
              <input type="text" class="form-control" id="" name="maintanance" placeholder="Maintanance" value="{{$stock->maintanance}}">
              
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Store Balance <span class="text-danger">*</span> </label>
              <input type="number" class="form-control" id="" name="storeBalance" placeholder="Store Balance" value="{{$stock->storeBalance}}">
              @if($errors->has('storeBalance'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('storeBalance')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1"> Issue No / Letter  </label>
              <input type="text" class="form-control" id="" name="issueNo" placeholder="Issue No" value="{{$stock->issueNo}}">
              
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1"> Issued To <span class="text-danger">*</span></label>
              <input type="text" class="form-control" id="" name="issuedTo" placeholder="Issued To" value="{{$stock->issuedTo}}">
              @if($errors->has('issuedTo'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('issuedTo')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Branch <span class="text-danger">*</span> </label>
              <input type="text" class="form-control" id="" name="branch" placeholder="Branch " value="{{$stock->branch}}">
              @if($errors->has('branch'))
                  <span class="text-danger">Branch Must be Provided!   {{$errors->first('branch')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Remarks </label>
              <input type="text" class="form-control" id="" name="remarks" placeholder="Remarks " value="{{$stock->remarks}}">
              
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
