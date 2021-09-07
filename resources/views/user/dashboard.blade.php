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
            <li class="breadcrumb-item"><a href="{{route('user.dashboard')}}"> Home </a></li>
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
                        <h3>{{$total_department ?? 0}}</h3>
                        <p>Department</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                   
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-success">
                      <div class="inner">
                        <h3>{{$total_product ?? 0}}<sup style="font-size: 20px"></sup></h3>
                        <p>Products</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3> {{$total_category ?? 0 }} </h3>
                        <p>Category </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                      </div>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3> {{$total_brand ?? 0}} </h3>
                        <p>Brand</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                    </div>
                  </div>
            </div>
            <br>
       
           <br>
    <div class="row">
        <div class="card card-primary col-md-6">
          <div class="card-header">
            <h3 class="card-title"> Search By Category  </h3>
          
          </div>
          <form method="post" action="{{route('user.search.products')}}">
            @csrf 
            <div class="card-body">
              <div class="form-group">
                <label class="form-control" for="category"> Department  </label>
                <select  class="form-control" id="userSelectDepartment" name="department">
                  <option></option>
                  @foreach($departmentList as $dList )
                    <option>{{$dList->name}}</option>
                  @endforeach
                </select>
              </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Category  </label>
                  <select class="form-control" id="userSelectCategory" name="category">
                    <option></option>
                    @foreach($categoryList as $cList )
                      <option>{{$cList->name}}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Sub category   </label>
                  <select class="form-control" id="userSelectSubCategory" name="subcategory">
                    <option></option>
                  @foreach($subcategoryList as $sList)
                    <option>{{$sList->name}}</option>
                  @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Brand  </label>
                  <select id="userSelectBrand" class="form-control" name="brand">
                    <option></option>
                    @foreach($brandList as $bList)
                    <option> {{$bList->name}} </option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Item  </label>
                  <select id="userSelectItem" class="form-control" name="item">
                    <option></option>
                    @foreach($itemList as $iList)
                      <option>{{$iList->name}}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Type </label>
                  <select id="userSelectType" class="form-control" name="type">
                    <option></option>
                    @foreach($typeList as $tList)
                      <option>{{$tList->name}}</option>
                    @endforeach
                  </select>
                </div>

            </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
            </div>
        </div>
      </form>
        {{-- another card --}}
        <div class="card card-primary col-md-4 ml-3 h-40">
          <form action="{{route('user.search.specificProduct')}}"  method="POST"> 
            @csrf 
          <div class="card-header">
            <h3 class="card-title">Search By Product ID /Product Name  </h3>
          </div>
         
          <div class="card-body">
              <div class="form-group">
                <label class="form-control" for="productName"> Product Name </label>
                 <input type="text" class="form-control" name="productName" placeholder="Search By Product Id or Name" />
                 @if($errors->has('productName'))
                    <span class="text-danger">Please provide a Valid Product Name </span>
                 @endif
                 <div class="card-footer">
                  <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
                </div>
              </div>
           
          </div>
        </div>
    
    </div>
</div>
</form>

</div>
@endsection