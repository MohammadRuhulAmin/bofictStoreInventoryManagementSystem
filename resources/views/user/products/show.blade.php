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
                    <div class="card card-primary card-outline">
                        <h5 class="card-title">Product Information</h5>
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
                            <a class="btn btn-sm btn-success" href="{{route('product.index')}}"><i class="fa fa-arrow-left"></i>Back</a>
                        </div>
                    </div>
                </div>
    
                <div class="col-sm-6">
                    <div class="card card-primary card-outline">
                        <h5 class="card-title">Product Image </h5>
                        <div class="card-body text-center">
                            <img width="300px" src="{{url('storage/'.$product->image)}}" alt="No Image"/>
                        </div>
                    </div>
                       
                    </div>
            </div>
        </div>
    </div>
            
@endsection
