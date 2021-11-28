@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Demands </h1>
          <br>
          <a href="{{route('demands.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Demand</a>
          {{-- <a href="{{''}}">Issue Demand </a> --}}
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active"> Demand List   </li>
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
        <h3 class="card-title"> Demand List </h3>
      </div>
      <br>

     

      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Department</th>
                <th>D P Description</th>
                <th>Demand Date </th>
                <th>Issue Date</th>
                <th>Specification</th>
                <th>Item</th>
                <th>Demand Quantity</th>
                <th>Receive Quantity</th>
                <th>Remaining Quantity</th>
                <th>Remarks </th>
                <th>Status </th>
            </tr>
        </thead>
        <tbody>
            @if($demandsList)
                @foreach ($demandsList as $key=> $demand)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$demand->department ??''}}</td>
                        <td>{{$demand->demandPerpousDescription }}</td>
                        <td>{{$demand->demandDate ??''}}</td>
                        <td>{{$demand->issueDate ??''}}</td>
                        <td>{{$demand->specification ??''}}</td>
                        <td>{{$demand->item ??''}}</td>
                        <td>{{$demand->demandQuantity ??''}}</td>
                        <td>{{$demand->receiveQuantity ??''}}</td>
                        <td>{{$demand->remainingQuantity ??''}}</td>
                        <td>{{$demand->Remarks ??''}}</td>
                        <td>{{$demand->status ??''}}</td>
                        
                    </tr>
                @endforeach
            @endif
        </tbody>
      </table>
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->
@endsection
