@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Notesheets</h1>
          <br>
          <a href="{{route('notesheets.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Notesheet </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Notesheet List </li>
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
        <h3 class="card-title">Notesheet List  </h3>
      </div>
      <br>
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Book : </th>
                <th>Notesheet No </th>
                <th>Note sheet Date </th>
                <th>Amount</th>
                <th>Description</th>
                <th> Action </th>
            </tr>
        </thead>
        <tbody>
            @if($notesheets)
                @foreach ($notesheets as $key=> $notesheet)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$notesheet->bookName ?? ''}}</td>
                        <td>{{$notesheet->notesheet_no?? ''}}</td>
                        <td>{{$notesheet->notesheetDate??''}}</td>
                        <td>{{$notesheet->amount??''}}</td>
                        <td>{{$notesheet->reasonForTheNoteSheet ?? ''}}</td>
                        {{-- <td>
                            <a  href="{{route('notesheets.edit',$notesheet->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="notesheet-delete-{{$notesheet->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="nodesheet-delete-{{$notesheet->id}}" action="{{route('notesheets.destroy',$notesheet->id)}}" method="post">
                                @csrf
                                @method('DELETE')
                            </form>
                        </td> --}}
                        <td>
                            <a  href="{{route('notesheets.edit',$notesheet->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="notesheet-delete-{{$notesheet->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="notesheet-delete-{{$notesheet->id}}" action="{{route('notesheets.destroy',$notesheet->id)}}" method="post">
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

