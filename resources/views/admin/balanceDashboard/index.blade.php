@extends('layouts.master')
@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Budget Information</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#"> Budget  </a></li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <table class="table">
    <tr>
        <td>
            <div class="card card-primary">
                <div class="card-header">
                    <b class="title">{{$combineAllBookInformation[0]["book"]["bookName"]}}</b>
                </div>
                <div class="card-body">
                    <table  class="table table-sm" style="width: 400px">
                        <tr>
                            <td><label>Total Credit </label></td>
                            <td><b>{{$combineAllBookInformation[0]["totalCredit"]}}<span>&#2547;</span></b> </td>
                        </tr>
                        <tr>
                            <td><label>Current Balance :</label></td>
                            <td><b>{{$combineAllBookInformation[0]["currentBalance"]}} <span>&#2547;</span></b></td>
                        </tr>
                    </table>
                </div>
                <div class="card-footer">
                    <a href="{{route('balanceDashboard.notesheetsList',$combineAllBookInformation[0]["book"]["id"])}}"> <i class="fa fa-info-circle" aria-hidden="true"></i> {{$combineAllBookInformation[0]["book"]["bookName"]}}</a>
                </div>
            </div>
        </td>
        <td>
            <div class="card card-primary">
                <div class="card-header">
                    <b class="title">{{$combineAllBookInformation[1]["book"]["bookName"]}}</b>
                </div>
                <div class="card-body">
                    <table  class="table table-sm" style="width: 400px">
                        <tr>
                            <td><label>Total Credit </label></td>
                            <td><b>{{$combineAllBookInformation[1]["totalCredit"]}}<span>&#2547;</span></b> </td>
                        </tr>
                        <tr>
                            <td><label>Current Balance :</label></td>
                            <td><b>{{$combineAllBookInformation[1]["currentBalance"]}} <span>&#2547;</span></b></b></td>
                        </tr>
                    </table>
                </div>
                <div class="card-footer">
                    <a href="{{route('balanceDashboard.notesheetsList',$combineAllBookInformation[1]["book"]["id"])}}"><i class="fa fa-info-circle" aria-hidden="true"></i>{{$combineAllBookInformation[1]["book"]["bookName"]}}</a>
                </div>
    
            </div>
        </td>
    </tr>
    <tr>
        <td>
            <div class="card card-primary">
                <div class="card-header">
                    <b class="title">{{$combineAllBookInformation[2]["book"]["bookName"]}}</b>
                </div>
                <div class="card-body">
                    <table  class="table table-sm" style="width: 400px">
                        <tr>
                            <td><label>Total Credit </label></td>
                            <td><b>{{$combineAllBookInformation[2]["totalCredit"]}}<span>&#2547;</span></b> </td>
                        </tr>
                        <tr>
                            <td><label>Current Balance :</label></td>
                            <td><b>{{$combineAllBookInformation[2]["currentBalance"]}} <span>&#2547;</span></b></b></td>
                        </tr>
                    </table>
                   
                </div>
                <div class="card-footer">
                    <a href="{{route('balanceDashboard.notesheetsList',$combineAllBookInformation[2]["book"]["id"])}}"><i class="fa fa-info-circle" aria-hidden="true"></i>{{$combineAllBookInformation[2]["book"]["bookName"]}}</a>
                </div>
    
            </div>
        </td>
        <td>
            <div class="card card-primary">
                <div class="card-header">
                    <b class="title">{{$combineAllBookInformation[3]["book"]["bookName"]}}</b>
                </div>
                <div class="card-body">
                    <table  class="table table-sm" style="width: 400px">
                        <tr>
                            <td><label>Total Credit </label></td>
                            <td><b>{{$combineAllBookInformation[3]["totalCredit"]}}<span>&#2547;</span></b> </td>
                        </tr>
                        <tr>
                            <td><label>Current Balance :</label></td>
                            <td><b>{{$combineAllBookInformation[3]["currentBalance"]}} <span>&#2547;</span></b></b></td>
                        </tr>
                    </table>
                   
                   
                </div>
                <div class="card-footer">
                    <a href="{{route('balanceDashboard.notesheetsList',$combineAllBookInformation[3]["book"]["id"])}}"><i class="fa fa-info-circle" aria-hidden="true"></i>{{$combineAllBookInformation[3]["book"]["bookName"]}}</a>
                </div>
    
            </div>
        </td>
    </tr>
  </table>
   <div class="container">
        
   </div>
    
  
@endsection
