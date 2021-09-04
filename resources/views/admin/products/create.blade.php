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
            <li class="breadcrumb-item active">Create Product</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <div>
    
    <div class="card-body">
        <form method="post" enctype="multipart/form-data" action="{{route('product.import')}}">
            @csrf 
            <div class="form-group">
              <h3>Import CSV / Excel  File</h3>
              <label for="file" class="form-control">Import an CVS / Excel  File</label>
              <input type="file" class="form-control" name="cvsFile"/>
            </div>
            @if($errors->has('cvsFile'))
              <span class="text-danger">Please insert a valid Excel / CSV File with the Proper file extention &  {{$errors->first('cvsFile')}} </span>
            @endif
            <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
          </div>
        </form>
    </div>
  </div>
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create a New Product </h3>
        
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('products.store')}}" method="post" enctype = "multipart/form-data">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1">Product Name </label>
            <input type="text" class="form-control" id="" name="name" placeholder="Product Name ">
            @if($errors->has('name'))
                <span class="text-danger">Product Name must be Provided! &  {{$errors->first('name')}} </span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select  Category  </label>
            <select id="selectCategory" name="category" class="form-control">
                <option></option>
                @foreach($categories as $category)
                    <option>{{$category->name}}</option>
                @endforeach
            </select>
            
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Brand   </label>
            <select id="selectBrand" name="brand" class="form-control">
                <option></option>
                @foreach($brands as $brand)
                    <option>{{$brand->name}}</option>
                @endforeach
            </select>
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Sub category   </label>
            <select id="selectSubCategory" name="subcategory" class="form-control">
                <option></option>
                @foreach($subcategories as $subcategory)
                    <option>{{$subcategory->name}}</option>
                @endforeach
            </select>
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Select Type   </label>
            <select id="selectType" name="type" class="form-control">
                <option></option>
                @foreach($types as $type)
                    <option>{{$type->name}}</option>
                @endforeach
            </select>
            
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1">Select Item   </label>
            <select id="selectItem" name="item" class="form-control">
                <option></option>
                @foreach($items as $item)
                    <option>{{$item->name}}</option>
                @endforeach
            </select>
           
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1"> Upload Image   </label>
            <input type="file" name="image" class="form-control">
           
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Description  </label>
           
            <textarea type="text" name="description" class="form-control"></textarea>
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Department  </label>
           <select id="selectDepartment" class="form-control" name="department">
            <option></option> 
            @foreach($departments as $department)
              <option>{{$department->name ?? ''}}</option>
            @endforeach
           </select>
      
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
