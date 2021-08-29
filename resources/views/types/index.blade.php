@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Types</h1>
          <br>
          <a href="{{route('types.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New  Type</a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Type List </li>
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
        <h3 class="card-title">Type List  </h3>
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
            @if($types)
                @foreach ($types as $key=> $type)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$type->name ??''}}</td>
                        <td>
                            <a  href="{{route('types.edit',$type->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="type-delete-{{$type->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="type-delete-{{$type->id}}" action="{{route('types.destroy',$type->id)}}" method="post">
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
