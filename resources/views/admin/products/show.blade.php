@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Product Details</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item"><a href="{{route('products.index')}}"> Product List  </a></li>
            <li class="breadcrumb-item active">product details</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->


  
    {{-- end --}}

    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <div class="card card-primary">
                       <div class="card-header"> <h5 class="card-title">Product Information</h5></div>
                        <div class="card-body">
                           <table class="table table-sm table-bordered">
                                <tr>
                                    <td> Name </td>
                                    <td>{{$product->name}}</td>
                                </tr>
                                <tr>
                                    <td>Category  </td>
                                    <td>{{$product->category}}</td>
                                </tr>
                                <tr>
                                    <td>Subcategory   </td>
                                    <td>{{$product->subcategory}}</td>
                                </tr>
                                <tr>
                                    <td> Brand</td>
                                    <td>{{$product->brand}}</td>
                                </tr>
                                <tr>
                                    <td>Type</td>
                                    <td>{{$product->type}}</td>
                                </tr>
                                <tr>
                                    <td>Item </td>
                                    <td>{{$product->item}}</td>
                                </tr>
                                <tr>
                                    <td> Department  </td>
                                    <td>{{$product->department}}</td>
                                </tr>
                                <tr>
                                    <td> Description </td>
                                    <td>{{$product->description}}</td>
                                </tr>
                                
                           </table>
                        </div>
                        <div class="card-footer">
                            <a class="btn btn-sm btn-success" href="{{route('products.index')}}"><i class="fa fa-arrow-left"></i>Back</a>
                        </div>
                    </div>
                </div>
    
                <div class="col-sm-6">
                    <div class="card card-primary ">
                        <div class="card-header"> <h5 class="card-title">Product Image </h5></div>
                        <div class="card-body text-center">
                              @if($product->image !== null)
                              <img width="300px" src="{{url('storage/'.$product->image)}}"/>
                                 
                              @else 
                                <p class="text-danger">No Img </p>
                               @endif
                        </div>
                    </div>
                       
                </div>
               
            </div>
        </div>
    </div>
    <div class="card card-primary m-3">
        <div class="card-header">
            <h5 class="card-title">Product User List</h5>
        </div>
        <div class="card-body">
            <div class="row m-3">
                @foreach($productUserList as $plist)
                <div class="col-sm-4">
                    <div class="card">
                        <div class="card-header">
                            
                        </div>
                        <div class="card-body">
                            
                          
                             <a href="#" class="list-group-item list-group-item-action flex-column align-items-start">
                                <div class="d-flex w-100 justify-content-between">
                                  <h5 class="mb-1">{{$plist->bofid}}</h5>
                                  <small>Active</small>
                                </div>
                                <p class="mb-1">{{$plist->name}}</p>
                                <small>{{$plist->designation}}</small>
                              </a>
                            
                            
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="card card-primary  m-3">
        <div class="card-header">
            <h3 class="card-title card-primary">Product Repairment List / Life Cycle </h3>
        </div>
        <div class="card-body">
            <div class="row m-3">
                @foreach($complaintsOfProduct as $cop)
                
                  <div class="col-lg-4">
                    <div class="card  mb-3" style="max-width: 35rem;">
                      <div class="card-header">Date : {{$cop->date}}</div>
                      <div class="card-body">
                        <h5 class="card-title"></h5>
                        <table  class="table table-sm table-striped text-justify" >
                          <tr>
                              <td> Complaint Date : </td>
                              <td>{{$cop->date}}</td>
                          </tr>
                          <tr>
                              <td> Complaint Time : </td>
                              <td>{{$cop->time}}</td>
                          </tr>
                          <tr>
                              <td> Person Complaint  </td>
                              <td>{{$cop->complaintName}}</td>
                          </tr>
                          <tr>
                              <td> Person Designation  </td>
                              <td>{{$cop->complaintDesignation}}</td>
                          </tr>
                          <tr>
                              <td> Complaint Description </td>
                              <td class="text-danger text-break">{{$cop->complaintDescription}}</td>
                          </tr>
                          <tr>
                              <td> Receiver of The Complaint  </td>
                              <td >{{$cop->complaintReceiverName}}</td>
                          </tr>
                          <tr>
                              <td>  Technician Name   </td>
                              <td >{{$cop->complaintSolverTechnicianName}}</td>
                          </tr>
                          <tr>
                              <td>  Product Received Date :    </td>
                              <td >{{$cop->complaintSolutionDate}}</td>
                          </tr>
                          <tr>
                              <td> Solution  Description :       </td>
                              <td class="text-info">{{$cop->complaintSolutionDescription}}</td>
                          </tr>
                          <tr>
                              <td> IC       </td>
                              <td>{{$cop->ic}}</td>
                          </tr>
                          <tr>
                              <td> OIC       </td>
                              <td>{{$cop->oic}}</td>
                          </tr>
                      </table>
                      </div>
                    </div>
                  </div>
                
                @endforeach
              </div>
        </div>
    </div>
   
@endsection
