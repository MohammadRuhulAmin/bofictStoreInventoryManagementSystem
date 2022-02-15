@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Books</h1>
          <br>
          <a href="{{route('booknotesheet.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Book </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Book List  </li>
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
        <h3 class="card-title">Book List  </h3>
      </div>
      <br>
      
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Book Name </th>
                <th>Book Number </th>
                <th>Open Date </th>
                <th>Closing Date </th>
                <th>Book Description</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($books)
                @foreach ($books as $key=> $book)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$book->bookName ??''}}</td>
                        <td>{{$book->bookNumber ??''}}</td>
                        <td>{{$book->bookOpenDate ??''}}</td>
                        <td>{{$book->bookCloseDate ??''}}</td>
                        <td>{{$book->bookDescription??''}}</td>
                        <td>
                            <a  href="{{route('booknotesheet.edit',$book->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="book-delete-{{$book->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="book-delete-{{$book->id}}" action="{{route('booknotesheet.destroy',$book->id)}}" method="post">
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
