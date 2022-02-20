@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Notesheets</h1>
          <br>
          <a href="{{route('notesheetdetails.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add  New Notesheet </a>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Notesheet Details  </li>
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
        <h3 class="card-title">Notesheet Details   </h3>
      </div>
      <br>
     
      <table class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>PV/RV : </th>
                <th>Date </th>
                <th>Details</th>
                <th>Credit</th>
                <th>debit</th>
                <th> Cashbalance </th>
                <th>IC</th>
                <th>OIC</th>
                <th>Erp Indent Voucher No</th>
                <th>ERP Entry Date</th>
                <th>Comments </th>
            </tr>
        </thead>
        <tbody>
            @if($notesheetDetails)
                @foreach ($notesheetDetails as $key=> $notesheetDetail)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$notesheetDetail->PVRV ?? ''}}</td>
                        <td>{{$notesheetDetail->date?? ''}}</td>
                        <td>{{$notesheetDetail->details??''}}</td>
                        <td>{{$notesheetDetail->credit??''}}</td>
                        <td>{{$notesheetDetail->debit ?? ''}}</td>
                        <td>{{$notesheetDetail->cashbalance ??''}}</td>
                        <td>{{$notesheetDetail->ic ??''}}</td>
                        <td>{{$notesheetDetail->oic ??''}}</td>
                        <td>{{$notesheetDetail->erp_indent_voucher_no ?? ''}}</td>
                        <td>{{$notesheetDetail->erp_entry_date ??''}}</td>
                        <td>{{$notesheetDetail->comments??''}}</td>
              
                        {{-- <td>
                            <a  href="{{route('notesheetdetails.edit',$notesheetDetail->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="notesheet-delete-{{$notesheet->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="notesheet-delete-{{$notesheet->id}}" action="{{route('notesheets.destroy',$notesheet->id)}}" method="post">
                                @csrf 
                                @method('DELETE')
                            </form>
                        </td> --}}
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

