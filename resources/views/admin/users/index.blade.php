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
                <th>#SL  </th>
                <th>Role </th>
                <th>Name </th>
                <th>Email </th>
                <th> Change Permission To </th>
                 <th>Action</th>
            </tr>
        </thead>

        <tbody>
            @if($users)
                @foreach ($users as $key=> $user)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$user->role}}</td>
                        <td>{{$user->name ??''}}</td>
                        <td>{{$user->email ??''}} @if(auth()->user()->id == $user->id ) <span class="badge bg-danger"> Admin </span> @endif </td>
                        <td class="text-center">
                          <a href="{{route('users.toTechnician',$user->id)}}" class="btn btn-sm btn-warning"><i class="fas fa-male"></i> Technician </a>
                          <a href="{{route('users.toUser',$user->id)}}" class="btn btn-sm btn-success"><i class="fas fa-user"></i>User </a>
                          <a href="{{route('users.toAdmin',$user->id)}}" class="btn btn-sm btn-danger"><i class="fas fa-user"></i>Admin </a>
                        </td>
                        
                        <td>
                            <a  href="{{route('users.edit',$user->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="{{route('users.details',$user->id)}} " class="btn btn-sm btn-success">
                              <i class="fa fa-edit"></i>  Details
                          </a>
                            @if($user->role !== "admin")
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="user-delete-{{$user->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="user-delete-{{$user->id}}" action="{{route('users.destroy',$user->id)}}" method="post">
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
