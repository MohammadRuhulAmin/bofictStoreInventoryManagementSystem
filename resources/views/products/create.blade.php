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
              <option>Bof Hq</option>
              <option>Admin</option>
              <option>planning</option>
              <option>purchase</option>
              <option>ICT</option>
              <option>PKS</option>
              <option>Dir Admin</option>
              <option>DD Admin </option>
              <option>MAP</option>
              <option>R & T </option>
              <option>CR</option>
              <option>Work Man Record</option>
              <option>Stuff Record</option>
              <option>Budget & Cash </option>
              <option>Budget</option>
              <option>Cash</option>
              <option>Finance</option>
              <option>Billing</option>
              <option>Pension</option>
              <option>Officer Record</option>
              <option>Security </option>
              <option>Medical</option>
              <option>MAG</option>
              <option>Miscellaleous</option>
              <option>Welfare</option>
              <option>Recident</option>
              <option>Ration</option>
              <option>Fire</option>
              <option>Purchase</option>
              <option>SA purchase</option>
              <option>SAE purchase</option>
              <option>OA purchase</option>
              <option>Man Main Store</option>
              <option>AM Main Store</option>
              <option>PO Receive Control</option>
              <option>APO  Main Store </option>
              <option>GK Main Store</option>
              <option>OA officer Mess</option>
              <option>SA MT</option>
              <option>OS MT</option>
              <option>OIC ICT cell</option>
              <option>SAE ICT cell</option>
              <option>OA ICT cell</option>
              <option>Server Room</option>
              <option>NOC</option>
              <option>AD Server</option>
              <option>ERP Server</option>

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
