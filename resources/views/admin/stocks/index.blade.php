@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Stocks +</h1>
          <br>
          <a href="{{route('stocks.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add New Stock Item </a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Stocks List  </li>
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
        <h3 class="card-title">Stocks List  </h3>
      </div>
      <br>
      <table id="example1" class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Date</th>
                <th>Accessory Name </th>
                <th>First Property</th>
                <th>Second Property</th>
                <th>Third Property</th>
                <th>Inclusion</th>
                <th>Exclusion</th>
                <th>Maintanance</th>
                <th>Store Balance</th>
                <th>Letter/Issue No</th>
                <th>Issued To</th>
                <th>Branch</th>
                <th>Remarks</th>
                <th>Action</th>
            </tr>
        </thead>
            {{--  --}}
            {{-- $table->string('item',50);
            $table->string('details',100)->nullable(); --}}

        <tbody>
            @if($stocks)
                @foreach ($stocks as $key=> $stock)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$stock->date ??''}}</td>
                        <td>{{$stock->accessoryName?? ''}}</td>
                        <td>{{$stock->accessoryFirstProperty?? ''}}</td>
                        <td>{{$stock->accessorySecondProperty?? ''}}</td>
                        <td>{{$stock->accessoryThirdProperty?? ''}}</td>
                        <td>{{$stock->inclusion ?? ''}}</td>
                        <td>{{$stock->exclusion ?? ''}}</td>
                        <td>{{$stock->maintanance ?? ''}}</td>
                        <td>{{$stock->stockBalance ?? ''}}</td>
                        <td>{{$stock->issueNo ?? ''}}</td>
                        <td>{{$stock->issuedTo ?? ''}}</td>
                        <td>{{$stock->branch ?? ''}}</td>
                        <td>{{$stock->remarks ?? ''}}</td>
                        
                        <td>
                            <a  href="{{route('stocks.edit',$stock->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="stock-delete-{{$stock->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="stock-delete-{{$stock->id}}" action="{{route('stocks.destroy',$stock->id)}}" method="post">
                                @csrf 
                                @method('DELETE')
                            </form>
                        </td>
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
