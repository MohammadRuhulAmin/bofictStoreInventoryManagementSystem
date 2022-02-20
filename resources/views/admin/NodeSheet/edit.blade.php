@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Notesheet</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('notesheets.index')}}"> Notesheets  List   </a></li>
            <li class="breadcrumb-item active"> Notesheet  Edit</li>
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
        <h3 class="card-title">Edit The Notesheet Item  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('notesheets.update',$notesheet->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1"> Notesheet Description  </label>
            <input type="text" class="form-control" id="" name="reasonForTheNoteSheet" value="{{$notesheet->reasonForTheNoteSheet}}">
            @if($errors->has('reasonForTheNoteSheet'))
                <span class="text-danger">  {{$errors->first('reasonForTheNoteSheet')}}</span>
            @endif
          </div>
          {{-- <div class="form-group">
            <label for="exampleInputEmail1">  Title Description  </label>
            <input type="text" class="form-control" id="" name="titleDescription" value="{{$notesheet->titleDescription}}">
            @if($errors->has('titleDescription'))
                <span class="text-danger">  {{$errors->first('titleDescription')}}</span>
            @endif
          </div> --}}
          <div class="form-group">
            <label for="exampleInputEmail1">Note sheet Date  </label>
            <input type="date" class="form-control" id="" name="notesheetDate" value="{{$notesheet->notesheetDate}}">
            @if($errors->has('notesheetDate'))
                <span class="text-danger"> {{$errors->first('notesheetDate')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Note sheet No  </label>
            <input type="text" class="form-control" id="" name="notesheet_no" value="{{$notesheet->notesheet_no}}">
            @if($errors->has('notesheet_no'))
                <span class="text-danger"> {{$errors->first('notesheet_no')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Amount   </label>
            <input type="number" class="form-control" id="" name="amount" value="{{$notesheet->amount}}">
            @if($errors->has('amount'))
                <span class="text-danger"> {{$errors->first('amount')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Book  </label>
            <select id="selectItem" name="booknotesheet_id" class="form-control">
                <option value="{{$bookId}}">{{$notesheet->bookName}}</option>
                @foreach($books as $book)
                    {{-- <option >{{$book->bookName}} </option> --}}
                    <option value="{{$book->id}}">{{$book->bookName}} </option>
                @endforeach
            </select>
            @if($errors->has('booknotesheet_id'))
                <span class="text-danger"> {{$errors->first('booknotesheet_id')}}</span>
            @endif
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
    
</div>
@endsection
