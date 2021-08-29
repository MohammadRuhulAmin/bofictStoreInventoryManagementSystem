@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Item</h1>
          <br>
          <a href="{{route('items.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New  Item</a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Item List </li>
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
        <h3 class="card-title">Item List  </h3>
      </div>
      <br>
     
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Name</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($items)
                @foreach ($items as $key=> $item)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$item->name ??''}}</td>
                        <td>
                            <a  href="{{route('items.edit',$item->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="item-delete-{{$item->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="item-delete-{{$item->id}}" action="{{route('items.destroy',$item->id)}}" method="post">
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
