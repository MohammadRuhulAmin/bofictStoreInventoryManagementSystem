@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Notesheet List </h1>
          <br>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('balanceDashboard.index')}}">  Budget  </a></li>
            <li class="breadcrumb-item active">Notesheet List  </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
 
  <!-- Main content -->
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card ">
      <div class="card-header">
        <h3 class="card-title">  </h3>
      </div>
      <br>
        <div class="card-body">
            <table id="example1" class="table table-bordered datatable">
                <thead class="bg-primary text-white">
                    <th><h5>#SL</h5></th>
                    <th><h5>Budget </h5></th>
                    <th><h5>Note sheet No </h5></th>
                    <th><h5>Note sheet Date  </h5></th>
                    <th><h5>Note sheet Details </h5></th>
                    <th><h5>Credit</h5></th>
                    <th><h5> Balance </h5></th>
                    <th> Action   </th>
                </thead>
                @for ($i = 0;$i<count($combineAllNoteSheetInformation);++$i)
                <tr>
                    <td>{{$i+1}}</td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["bookName"]}}</h5></td>
                    <td><h5><a href="{{route('balanceDashboard.notesheetDetails',$combineAllNoteSheetInformation[$i]["notesheet"]["id"])}}">{{$combineAllNoteSheetInformation[$i]["notesheet"]["notesheet_no"]}}</a></h5></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["notesheetDate"]}}</h3></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["reasonForTheNoteSheet"]}}</h5></td> 
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["amount"]}}</h5></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["cashbalance"]}}</h5></td>
                    <td><a href="{{route('balanceDashboard.notesheetDetails_report',$combineAllNoteSheetInformation[$i]["notesheet"]["id"])}}" class="btn btn-success"> <i class="fa fa-print" aria-hidden="true"></i> </a></td>
                </tr>
                @endfor
              </table>
        </div>         

    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
    
  
@endsection
