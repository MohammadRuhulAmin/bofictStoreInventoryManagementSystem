@extends('layouts.master')

@section('content')
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0">Note Sheet</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
          <li class="breadcrumb-item"><a href="{{route('brands.index')}}"> NoteSheet List  </a></li>
          <li class="breadcrumb-item active">Create Note Sheet</li>
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
      <h3 class="card-title">Create a New Notesheet </h3>
    </div>
    <!-- /.card-header -->
    <!-- form start -->
    <form role="form" action="{{route('notesheets.store')}}" method="post">
      @csrf 
      <div class="card-body">
        <div class="form-group">
          <label for="exampleInputEmail1"> Notesheet Description  </label>
          <input type="text" class="form-control" id="" name="reasonForTheNoteSheet" placeholder="Note Sheet Description  ">
          @if($errors->has('reasonForTheNoteSheet'))
              <span class="text-danger">  {{$errors->first('reasonForTheNoteSheet')}}</span>
          @endif

        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Note sheet Date  </label>
          <input type="date" class="form-control" id="" name="notesheetDate" placeholder="Note Sheet Date  ">
          @if($errors->has('notesheetDate'))
              <span class="text-danger"> {{$errors->first('notesheetDate')}}</span>
          @endif
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Note sheet No  </label>
          <input type="text" class="form-control" id="" name="notesheet_no" placeholder="Note Sheet No ">
          @if($errors->has('notesheet_no'))
              <span class="text-danger"> {{$errors->first('notesheet_no')}}</span>
          @endif
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1"> Amount   </label>
          <input type="number" class="form-control" id="" name="amount" placeholder="Amount ">
          @if($errors->has('amount'))
              <span class="text-danger"> {{$errors->first('amount')}}</span>
          @endif
        </div>
        <div class="form-group">
          <label for="exampleInputEmail1">Select Book  </label>
          <select id="selectItem" name="booknotesheet_id" class="form-control">
              <option></option>
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
</div>
<!-- /.content -->
    
  
@endsection

