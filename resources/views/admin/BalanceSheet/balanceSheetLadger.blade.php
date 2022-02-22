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
            <li class="breadcrumb-item active">Balance Sheet Ladger </li>
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
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
  <div class="row">
      <div class="col-md-4">
          <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Book Information</h3>
            </div>
            <div class="card-body">
                <table class="table table-sm">
                    <tr>
                        <td>Book Name </td>
                        <td>{{$bookInfo->bookName}}</td>
                    </tr>
                    <tr>
                        <td>Book Number</td>
                        <td>{{$bookInfo->bookNumber}}</td>
                    </tr>
                    <tr>
                        <td>Book Open Date </td>
                        <td>{{$bookInfo->bookOpenDate}}</td>
                    </tr>
                    <tr>
                        <td>Book Closing Date </td>
                        <td>{{$bookInfo->bookCloseDate}}</td>
                    </tr>
                    <tr>
                        <td>Book Description </td>
                        <td>{{$bookInfo->bookDescription}}</td>
                    </tr>
                </table>
            </div>
          </div>
          <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Note Sheet Information </h3>
            </div>
            <div class="card-body">
                <table class="table table-sm">
                    <tr>
                        <td> Notesheet Description </td>
                        <td>{{$notesheetInfo->reasonForTheNoteSheet}}</td>
                    </tr>
                    <tr>
                        <td> NoteSheet Date  </td>
                        <td>{{$notesheetInfo->notesheetDate}}</td>
                    </tr>
                    <tr>
                        <td>NoteSheet No </td>
                        <td>{{$notesheetInfo->notesheet_no}}</td>
                    </tr>
                    <tr>
                        <td>Budget / Amount</td>
                        <td>{{$notesheetInfo->amount}}</td>
                    </tr>
                    
                </table>
            </div>
          </div>
      </div>
      <div class="col-md-8">
        <div class="card card-primary">
            <div class="card-header">
                <h3 class="card-title">Balance Sheet </h3>
            </div>
            <div class="card-body">
                <table class="table table-sm">
                    <thead>
                        <th>PV/RV</th>
                        <th>Date </th>
                        <th>Details </th>
                        <th> Credit </th>
                        <th>Debit</th>
                        <th>Cash Balance</th>
                    </thead>
                    @foreach($ledger as $led)
                        <tr>
                            <td>{{$led->PVRV}}</td>
                            <td>{{$led->date}}</td>
                            <td>{{$led->details}}</td>
                            <td>{{$led->credit}}</td>
                            <td>{{$led->debit}}</td>
                            <td>
                            @if ($led->cashbalance === 0)
                                <b class="text-success"> NILL</b>
                            @else
                                {{$led->cashbalance}}
                            @endif 
                           </td>
                        </tr>
                    @endforeach
                </table>
            </div>
          </div>
      </div>
  </div>
@endsection
