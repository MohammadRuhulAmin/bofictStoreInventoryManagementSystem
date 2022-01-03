@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">ERP Modification </h1>
          <br>
       
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">ERP Modification List  </li>
            <li class="breadcrumb-item active">Details </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <!-- Main content -->
  <div class="row">
    <div class="col-6">
        <div class="card card-primary m-2">
            <div class="card-header"> <h5 class="card-title"> Screen Shot Image  </h5></div>
            <div class="card-body">
                <table class="table table-sm">
                    <tr>
                        <td>Status</td>
                        <td>{{$erpProblem->status}}</td>
                    </tr>
                    <tr>
                        <td>Module</td>
                        <td>{{$erpProblem->module}}</td>
                    </tr>
                    <tr>
                        <td>Problem Link /  Form Link   </td>
                        <td><a href="{{$erpProblem->form_link}}">{{$erpProblem->form_link}}</a></td>
                    </tr>
                    <tr>
                        <td>Problem Description / Suggation Description </td>
                        <td>{{$erpProblem->problemDescription}}</td>
                    </tr>
                    <tr>
                        <td>Problem Found  Date </td>
                        <td>{{$erpProblem->problemFindingDate}}</td>
                    </tr>
                    <tr>
                        <td>Problem Solution Date </td>
                        <td>{{$erpProblem->problemSolutionDate}}</td>
                    </tr>
                    <tr>
                        <td>Problem Detected  By </td>
                        <td>{{$erpProblem->problem_detected_by}}</td>
                    </tr>
                    <tr>
                        <td>Remarks</td>
                        <td>{{$erpProblem->remarks}}</td>
                    </tr>
                    <tr>
                        <td>Suggation</td>
                        <td>{{$erpProblem->suggation}}</td>
                    </tr>
        
                </table>
            </div>
          
        </div>
    </div>
    <div class="col-6">
        <div class="card card-primary ">
            <div class="card-header"> <h5 class="card-title"> Screen Shot Image  </h5></div>
            <div class="card-body text-center">
                  @if($erpProblem->image !== null)
                  <img width="600px" src="{{url('storage/'.$erpProblem->image)}}"/>
                     
                  @else 
                    <p class="text-danger">No Img </p>
                   @endif
            </div>
        </div>
    </div>
  </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
