@extends('layouts.master')

@section('content')

<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Stocks </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active"> <a href="{{route('stocks.index')}}"> Stock Index </a></li>
            <li class="breadcrumb-item active">  Edit Stock item </li> 
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
        <h3 class="card-title">Edit Stock item  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('stocks.update',$stock->id)}}" method="post">
        @csrf
        @method('PUT')
        <div class="card-body">
            <div class="form-group"> 
                <label for="exampleInputEmail1">Category </label>
                <select  class="form-control" name="category"  id="SelectCategory">
                    <option>{{$stock->category}}</option>
                    @foreach ($categorys as  $category)
                    <option>{{$category->name}}</option>
                    @endforeach
                </select>
              </div> 
              <div class="form-group">
                <label for="exampleInputEmail1">Subcategory </label>
                <select  class="form-control" name="subcategory"  id="selectSubCategory">
                    <option>{{$stock->subcategory}}</option>
                    @foreach ($subcategorys as  $subcategory)
                    <option>{{$subcategory->name}}</option>
                    @endforeach
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Brand </label>
                <select  class="form-control" name="brand"  id="selectBrand">
                    <option>{{$stock->brand}}</option>
                    @foreach ($brands as  $brand)
                    <option>{{$brand->name}}</option>
                    @endforeach
                </select>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Item </label>
                <select  class="form-control" name="item"  id="selectItem">
                    <option>{{$stock->item}}</option>
                    @foreach ($items as  $item)
                    <option>{{$item->name}}</option>
                    @endforeach
                </select>
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Type </label>
                <select  class="form-control" name="type"  id="selectType">
                    <option>{{$stock->type}}</option>
                    @foreach ($types as  $type)
                    <option>{{$type->name}}</option>
                    @endforeach
                </select>
              </div>

            <div class="form-group">
              <label for="exampleInputEmail1">Date <span class="text-danger">*</span> </label>
              <input type="date" value="{{$stock->date}}" class="form-control" id="" name="date" placeholder="Date">
              @if($errors->has('date'))
                  <span class="text-danger">Date  must be Provided! &  {{$errors->first('date')}} </span>
              @endif
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Inclusion </label>
              <input type="number"  class="form-control" id="" value={{$stock->inclusion}} name="inclusion"  placeholder="Inclusion">
              {{-- @if($errors->has('inclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('inclusion')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Exclusion   </label>
              <input type="number"  class="form-control" id="" name="exclusion" value={{$stock->exclusion}} placeholder="Exclusion">
              {{-- @if($errors->has('exclusion'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('exclusion')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Maintanance </label>
              <input type="text" class="form-control" id="" value={{$stock->maintanance}} name="maintanance" placeholder="Maintanance">
              
            </div> 
            {{-- <div class="form-group">
              <label for="exampleInputEmail1">Store Balance <span class="text-danger">*</span> </label>
              <input type="number" class="form-control" id="" name="storeBalance" placeholder="Store Balance">
              @if($errors->has('storeBalance'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('storeBalance')}} </span>
              @endif
            </div> --}}
            <div class="form-group">
              <label for="exampleInputEmail1"> Issue No / Letter  </label>
              <input type="number" step="any" class="form-control" id="" value={{$stock->issueNo}}   name="issueNo" placeholder="Issue No">
              
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1"> Issued To</label>
              <input type="text" class="form-control" id="" value={{$stock->issuedTo}}  name="issuedTo" placeholder="Issued To">
              {{-- @if($errors->has('issuedTo'))
                  <span class="text-danger">Item Details must be Provided! &  {{$errors->first('issuedTo')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Branch  </label>
              <input type="text" class="form-control" id="" name="branch" value={{$stock->branch}} placeholder="Branch ">
              {{-- @if($errors->has('branch'))
                  <span class="text-danger">Branch Must be Provided!   {{$errors->first('branch')}} </span>
              @endif --}}
            </div>
            <div class="form-group">
              <label for="exampleInputEmail1">Remarks </label>
              <input type="text" class="form-control" id="" name="remarks" placeholder="Remarks ">              
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
