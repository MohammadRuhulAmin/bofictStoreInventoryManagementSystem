@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Issue </h1>
          <br>
          <a href="{{route('productIssuesUsers.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New  Product Issue user  </a> 
    
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Product Issue  User List  </li>
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
        <h3 class="card-title">Product Issue  User List   </h3>
      </div>
      <br>
      
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Bof Id </th>
                <th>Name</th>
                <th>Designation</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($productIssuesUsers)
                @foreach ($productIssuesUsers as $key=> $pin)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$pin->bofid}}</td>
                        <td>{{$pin->name ??''}}</td>
                        <td>{{$pin->designation??''}}</td>
                        <td>
                            <a  href="{{route('productIssuesUsers.edit',$pin->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="pin-delete-{{$pin->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="pin-delete-{{$pin->id}}" action="{{route('productIssuesUsers.destroy',$pin->id)}}" method="post">
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
