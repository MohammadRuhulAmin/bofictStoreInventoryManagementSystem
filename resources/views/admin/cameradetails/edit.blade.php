@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Camera Information </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('cameradetails.index')}}"> Camera Information List    </a></li>
            <li class="breadcrumb-item active">Edit Camera</li>
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
        <h3 class="card-title">Edit Camera  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('cameradetails.update',$cameraDetail->id)}}" method="post">
        @csrf 
        @method('PUT')
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1"> Camera ICT NO <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="ictNo" placeholder="Camera ICT No " value={{$cameraDetail->ictNo}}>
            @if($errors->has('ictNo'))
                <span class="text-danger"> {{$errors->first('ictNo')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Parent Location <span class="text-danger">*</span>  </label>
            <select class="form-control" name="cameraParentLoccation">
                <option>{{$cameraDetail->cameraParentLoccation}}</option>
                @foreach ($cameraLocationsList as $cameraLocation )
                    <option> {{$cameraLocation->locationName}} </option>
                @endforeach
            </select>
            @if($errors->has('cameraParentLoccation'))
                <span class="text-danger">{{$errors->first('cameraParentLoccation')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Sub Location  <span class="text-danger">*</span> </label>
            <input type="text" class="form-control" id="" name="specificLocationOfCamera" placeholder="Sub Location" value="{{$cameraDetail->specificLocationOfCamera}}">
            @if($errors->has('specificLocationOfCamera'))
                <span class="text-danger">{{$errors->first('specificLocationOfCamera')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Camera Type <span class="text-danger">*</span> </label>
            <select  class="form-control" id="" name="cameraType">
                <option>{{$cameraDetail->cameraType}}</option>
                <option>PTZ</option>
                <option>Bullet</option>
                <option>Hik Vision</option>
            </select>
            @if($errors->has('cameraType'))
                <span class="text-danger">{{$errors->first('cameraType')}}</span>
            @endif
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1"> Default IP Address <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="defaultIpAddress" placeholder="Default IP Address" value="{{$cameraDetail->defaultIpAddress}}">
            @if($errors->has('defaultIpAddress'))
                <span class="text-danger">{{$errors->first('defaultIpAddress')}}</span>
            @endif
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1"> User IP Address <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="usedIpAddress" placeholder="User IP Address" value="{{$cameraDetail->usedIpAddress}}">
            @if($errors->has('usedIpAddress'))
                <span class="text-danger">{{$errors->first('usedIpAddress')}}</span>
            @endif
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1"> Remarks  </label>
            <input type="text" class="form-control" id="" name="remarks" placeholder="Any Remarks " value="{{$cameraDetail->remarks}}">
            @if($errors->has('remarks'))
                <span class="text-danger">{{$errors->first('remarks')}}</span>
            @endif
          </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
