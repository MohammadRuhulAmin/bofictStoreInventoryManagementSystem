@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Dashboard</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Dashboard </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                      <div class="inner">
                        <h3>{{$total_users ?? 0}}</h3>
        
                        <p>Users</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                      <a href="{{route('users.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>{{$total_products ?? 0}}<sup style="font-size: 20px">%</sup></h3>
        
                        <p>Products</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>{{$total_stocks_in  ?? 0 }}</h3>
        
                        <p>Stocks</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3>{{$total_return_products ?? 0}}</h3>
        
                        <p>Return Products </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                      <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
            </div>
      
    <div class="card card-primary">
        <div class="card-body">
      
          <table class="table table-bordered datatable">
            <thead>
                <tr>
                    <th>#SL</th>
                    <th>Image</th>
                    <th>Dept</th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Sub Category</th>
                    <th>Brand  </th>
                    <th>Type</th>
                    <th>Item</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @if($products)
                    @foreach ($products as $key=> $product)
                        <tr>
                            <td>{{++$key}}</td>
                            <td><img width="64px" src="{{url('storage/'.$product->image)}}"/></td>
                            <td>{{$product->department}}</td>
                            <td>{{$product->name ?? ''}}</td>
                            <td>{{$product->category ?? ''}}</td>
                            <td>{{$product->subcategory ?? ''}}</td>
                            <td>{{$product->brand ?? ''}}</td>
                            <td>{{$product->type ?? ''}}</td>
                            <td>{{$product->item ?? ''}}</td>
                           
    
                            <td>
                                <a  href="{{route('products.edit',$product->id)}}" class="btn btn-sm btn-info">
                                    <i class="fa fa-edit"></i>  Edit 
                                </a>
                                {{-- <a href="{{route('products.show',$product->id)}}" class="btn btn-sm btn-success">
                                  <i class="fa fa-info-circle"></i> Details
                                </a> --}}
                                <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="product-delete-{{$product->id}}">
                                  <i class="fa fa-trash"></i>  Delete
                                </a>
                                <form id="product-delete-{{$product->id}}" action="{{route('products.destroy',$product->id)}}" method="post">
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
    </div>
</div>
</div>
@endsection