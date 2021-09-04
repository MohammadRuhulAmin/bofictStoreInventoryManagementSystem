@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Users</h1>
          <br>
          <a href="{{route('users.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New User</a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Users List </li>
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
        <h3 class="card-title">Users List  </h3>
      </div>
      <br>
     
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Name</th>
                <th>Email</th>
                <th> Created At </th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($users)
                @foreach ($users as $key=> $user)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$user->name ??''}}</td>
                        <td>{{$user->email ??''}} @if(auth()->user()->id == $user->id ) <span class="badge bg-danger"> Admin </span> @endif </td>
                        <td>{{$user->created_at ?? ''}}</td>

                        <td>
                            <a  href="{{route('users.edit',$user->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            @if(auth()->user()->id != $user->id)
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="category-delete-{{$user->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="category-delete-{{$user->id}}" action="{{route('users.destroy',$user->id)}}" method="post">
                                @csrf 
                                @method('DELETE')

                            </form>
                            @endif 
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
