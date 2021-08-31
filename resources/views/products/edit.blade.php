@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Products</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Edit Product</li>
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
        <h3 class="card-title">Edit  a New Product </h3>
        
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('products.update',$product->id)}}" method="post" enctype = "multipart/form-data">
        @method('PUT')
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Product Name </label>
            <input type="text" class="form-control" id="" name="name" placeholder="Product Name " value="{{$product->name}}">
            @if($errors->has('name'))
                <span class="text-danger">Product Name must be Provided! &  {{$errors->first('name')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select  Category  </label>
            <select name="category" class="form-control">
                <option>{{$product->category}}</option>
                @foreach($categories as $category)
                    <option>{{$category->name}}</option>
                @endforeach
            </select>
            
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Brand   </label>
            <select name="brand" class="form-control">
                <option>{{$product->brand}}</option>
                @foreach($brands as $brand)
                    <option>{{$brand->name}}</option>
                @endforeach
            </select>
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Sub category   </label>
            <select name="subcategory" class="form-control">
                <option>{{$product->subcategory}}</option>
                @foreach($subcategories as $subcategory)
                    <option>{{$subcategory->name}}</option>
                @endforeach
            </select>
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Type   </label>
            <select name="type" class="form-control">
                <option>{{$product->type}}</option>
                @foreach($types as $type)
                    <option>{{$type->name}}</option>
                @endforeach
            </select>
            
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Item   </label>
            <select name="item" class="form-control">
                <option>{{$product->item}}</option>
                @foreach($items as $item)
                    <option>{{$item->name}}</option>
                @endforeach
            </select>
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Upload Image   </label>
            <input type="file" name="image" value="{{$product->image}}" placeholder="{{$product->image}}" class="form-control">
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Description  </label>
           
            <textarea type="text" name="description"  class="form-control">{{$product->description}}</textarea>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Department  </label>
            <input type="text"  value="{{$product->department}}" name="department" class="form-control">
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
