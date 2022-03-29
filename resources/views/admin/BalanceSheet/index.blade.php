@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Balance Sheet </h1>
          <br>
          {{-- <a href="{{route('brands.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Brand Item</a> --}}
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Balance Sheet List </li>
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
        <h3 class="card-title"> Get Balance Sheet  </h3>
      </div>
      <br>
      <br>
      <form action="{{route('balancesheet.search')}}" method="get">
          @csrf
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Select Book & Notesheet</h3>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label class="form-control">Select Book </label>
                  <select name="booknotesheet_no" class="form-control" id="selectBooknotesheet">
                      <option></option>
                   @foreach ($books as $book)
                       <option value="{{$book->id}}">{{$book->bookName}}</option>
                   @endforeach
                  </select>
                </div>

                <div class="form-group">
                    <label class="form-control">Select Notesheet </label>
                  <select name="notesheet_no" class="form-control" id="selectNotesheet">
                      <option></option>
                   @foreach ($notesheets_no as $notesheet_no)
                       <option value="{{$notesheet_no->id}}">{{$notesheet_no->notesheet_no}}</option>
                   @endforeach
                  </select>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <button class="btn btn-success">Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
    
  
@endsection
