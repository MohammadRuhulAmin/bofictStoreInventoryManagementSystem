@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Notesheet Item</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="#"> Notesheet Details   </a></li>
            <li class="breadcrumb-item active">Create Notesheet details  </li>
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
        <h3 class="card-title">Create a New Notesheet details  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('notesheetdetails.store')}}" method="post">
        @csrf
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1"> PV/RV   </label>
            <input type="text" class="form-control" id="" name="PVRV" placeholder="PV/RV">
            @if($errors->has('PVRV'))
                <span class="text-danger">{{$errors->first('PVRV')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Date </label>
            <input type="date" class="form-control" id="" name="date" placeholder="Date">
            @if($errors->has('date'))
                <span class="text-danger">{{$errors->first('date')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Details  </label>
            <input type="text" class="form-control" id="" name="details" placeholder="Details">
            @if($errors->has('details'))
                <span class="text-danger">{{$errors->first('details')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Credit  </label>
            <input type="number" class="form-control" id="" name="credit" placeholder="Credit">
            @if($errors->has('credit'))
                <span class="text-danger">{{$errors->first('credit')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Debit  </label>
            <input type="number" class="form-control" id="" name="debit" placeholder="Debit">
            @if($errors->has('debit'))
                <span class="text-danger">{{$errors->first('debit')}}</span>
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
        <div class="form-group">
            <label for="exampleInputEmail1">Select Notesheet   </label>
            <select id="selectItem" name="notesheet_id" class="form-control">
                <option></option>
                @foreach($notesheets as $notesheet)
                    {{-- <option >{{$book->bookName}} </option> --}}
                    <option value="{{$notesheet->id}}">{{$notesheet->notesheet_no}} </option>
                @endforeach
            </select>

            @if($errors->has('booknotesheet_id'))
                <span class="text-danger"> {{$errors->first('booknotesheet_id')}}</span>
            @endif
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">ERP Voucher / Indent No  </label>
            <input type="text" class="form-control" id="" name="erp_indent_voucher_no" placeholder="erp indent voucher no">
            
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">ERP Entry Date   </label>
            <input type="date" class="form-control" id="" name="erp_entry_date" >
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Comments   </label>
            <input type="text" class="form-control" id="" name="comments" placeholder="Comments">
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
