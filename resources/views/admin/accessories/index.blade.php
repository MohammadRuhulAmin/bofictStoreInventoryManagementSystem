@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Accessory </h1>
          <br>
          <a href="{{route('accessories.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add New Accessory Item  </a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Accessories List  </li>
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
        <h3 class="card-title">Accessories List  </h3>
      </div>
      <br>
     <table id="example1" class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Accessories Item</th>
                <th>First Property</th>
                <th>Second Property</th>
                <th>Third Property</th>
                <th>Action</th>
            </tr>
        </thead>
        
        <tbody>
          @foreach ($accesoriesItem as $key=>$aitem )
          <tr>
           <td> {{++$key}}</td>
            <td>{{$aitem->accessoryName ??''}}</td>
            <td>{{$aitem->accessoryFirstProperty??''}}</td>
            <td>{{$aitem->accessorySecondProperty ??''}}</td>
            <td>{{$aitem->accessoryThirdProperty ??''}}</td>
            <td>
            
                <a  href="{{route('accessories.edit',$aitem->id)}}" class="btn btn-sm btn-info">
                    <i class="fa fa-edit"></i>  Edit 
                </a>
                <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="accessory-delete-{{$aitem->id}}">
                  <i class="fa fa-trash"></i>  Delete
                </a>
                <form id="accessory-delete-{{$aitem->id}}" action="{{route('accessories.destroy',$aitem->id)}}" method="post">
                    @csrf 
                    @method('DELETE')
                </form>
           
            </td>
          </tr>
          @endforeach
            
        </tbody>
      </table> 
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
