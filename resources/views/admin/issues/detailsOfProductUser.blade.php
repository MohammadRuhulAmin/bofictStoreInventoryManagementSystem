@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Issues </h1>
          <br>
         
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Product Issue  User List  </li>
            <li class="breadcrumb-item active">Issue Details   </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header --> 
 
  <div class="row">
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Issue Information  </h5>
          <table class="table table-sm">
            <tr>
                <td>Name  </td>
                <td class="text-success">{{$productUserInfo->name}}</td>
            </tr>
            <tr>
                <td>Bof Id </td>
                <td>{{$productUserInfo->bofid}}</td>
            </tr>
            <tr>
                <td> Designation  </td>
                <td><span class="badge badge-success">{{$productUserInfo->designation  }}</span></td>
            </tr>
            <tr>
                <td>Total Products Used  </td>
                <td><span class="badge badge-info">{{$totalProductUsed}}</span></td>
            </tr>   
          </table>
         
        </div>
      </div>
    </div>
  </div>
  

  <div class="row m-3">
  @foreach($productInfo as $pif)
  
    <div class="col-lg-4">
      <div class="card text-white bg-dark mb-3" style="max-width: 35rem;">
        <div class="card-header">Product Id <span class="text-success float-right" > {{$pif->name}}</span></div>
        <div class="card-body">
          <h5 class="card-title"></h5>
          <table class="table table-sm table-striped text-justify">
            <tr>
                <td> Category  </td>
                <td>{{$pif->category}}</td>
            </tr>
            <tr>
                <td> Sub Category  </td>
                <td>{{$pif->subcategory}}</td>
            </tr>
            <tr>
                <td> Type  </td>
                <td>{{$pif->type}}</td>
            </tr>
            <tr>
                <td> item   </td>
                <td>{{$pif->item}}</td>
            </tr>
            <tr>
                <td> Brand  </td>
                <td >{{$pif->brand}}</td>
            </tr>
            <tr>
                <td> Department  </td>
                <td>{{$pif->department}}</td>
            </tr>
           

            <tr>
                <td> Repairement Life cycle </td>
                <td><a href="{{route('assignProductWithUsers.repairmentHistoryProduct',$pif->id)}}" class=" btn btn-sm btn-warning"> <i class="fas fa-info"></i> Details </a></td> 
            </tr>
        </table>
        </div>
      </div>
    </div>
  
  @endforeach
</div>
@endsection

