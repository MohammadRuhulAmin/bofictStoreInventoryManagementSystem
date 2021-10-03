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
                        <h3>{{$total_department ?? 0}}</h3>
                        <p>Department</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                      <a href="{{route('departments.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
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
                      <a href="{{route('products.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>{{$total_category ?? 0 }}</h3>
        
                        <p>Category </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-cart-plus"></i>
                      </div>
                      <a href="{{route('categories.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <!-- ./col -->
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3>{{$total_brand ?? 0}}</h3>
        
                        <p>Brand</p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-list"></i>
                      </div>
                      <a href="{{route('brands.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <div class="col-lg-3 col-6">
                    <!-- small box -->
                    <div class="small-box bg-warning">
                      <div class="inner">
                        <h3>{{$total_complaints ?? 0}}</h3>
        
                        <p>Total Complaints</p>
                      </div>
                      <div class="icon">
                        <i class="fas fa-tools"></i>
                      </div>
                      <a href="{{route('admin_complaints.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
                  <div class="col-lg-3 col-6">
                    <!-- small box --> 
                    <div class="small-box bg-danger">
                      <div class="inner">
                        <h3>{{$today_complaints ?? 0}}</h3>
                        <p>Today's Complaint </p>
                      </div>
                      <div class="icon">
                        <i class="fa fa-users"></i>
                      </div>
                      <a href="{{route('admin_complaints.index')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                  </div>
            </div>
</div>
</div>

    <div class="card m-3">
     
      <div class="card-body">
        <div class="row">
          <div class="card card-primary col-md-2 ">
            <div class="card-header">
              <p class="card-text" >Road Map For Products </p>
            </div>
            <div class="treeview ">
              <hr>

              <ul class="mb-1 pl-3 pb-2"> 
                <li><i class="fas fa-angle-right rotate"></i>
                  <span><i class="fa fa-desktop" aria-hidden="true"></i> WorkStation PC </span>
                  <ul class="nested">
                    <li> <i class="fab fa-battle-net"></i>  HP , ASUS , DELL   </li>
                       <li> <i class="fab fa-battle-net"></i>  Apple , Intel , Delux    </li>
                       <ul class="nested">
                          <li > <i class="fas fa-microchip"></i> i3 , i5 , i7 , i9  </li>
                       </ul>
                  </ul>
                </li>
                <li><i class="fas fa-angle-right rotate"> </i>
                  <span><i class="fa fa-desktop"></i> Desktop </span>
                  <ul class="nested">
                    <li><i class="fa fa-desktop"></i> Brand Desktop </li>
                     <ul class="nested">
                       <li> <i class="fab fa-battle-net"></i>  HP , ASUS , DELL   </li>
                       <li> <i class="fab fa-battle-net"></i>  Apple , Intel , Delux    </li>
                       <ul class="nested">
                          <li > <i class="fas fa-microchip"></i> i3 , i5 , i7 , i9  </li>
                       </ul>

                     </ul>
                    <li><i class="fa fa-desktop"></i> Clone  Desktop </li>
                    <ul class="nested">
                      <li > <i class="fas fa-microchip"></i> i3 , i5 , i7 , i9  </li>
                   </ul>
                    </li>
                  </ul>
                </li>

                <li><i class="fas fa-angle-right rotate"></i>
                  <span><i class="fa fa-wifi" aria-hidden="true"></i> Router</span>
                  <ul class="nested">
                    <li><i class="fa fa-wifi" aria-hidden="true"></i> Home Router </li>
                    <li><i class="fa fa-wifi" aria-hidden="true"></i> Core Router </li>
                   
                  </ul>
                </li>
                <li><i class="fas fa-angle-right rotate"></i>
                  <span><i class="fas fa-phone"></i> Phone</span>
                  <ul class="nested">
                      <li><i class="fas fa-phone"></i> Mobile Phone </li>
                      <li><i class="fas fa-phone"></i> Cordless Phone  </li>
                    </ul>
                </li> 
                <li><i class="fas fa-angle-right rotate"></i>
                  <span> <i class="fas fa-print"></i> Printer </span>
                  <ul class="nested">
                      <li><i class="fas fa-print"></i> Color Printer </li>
                      <ul class="nested">
                        <li> <i class="fas fa-print"></i> Laser </li>
                        <li> <i class="fas fa-print"></i> Ink Jet</li>
                      </ul>
                      <li><i class="fas fa-print"></i> Black & White Printer   </li>
                      <ul class="nested">
                        <li> <i class="fas fa-print"></i> Micro Dry </li>
                        <li> <i class="fas fa-print"></i> Dot Matrix Printer </li>
                      </ul>
                    </ul>
                </li>
              </ul>
            
            </div>
            
         
         </div>
          <div class="card card-primary col-md-5">
            <div class="card-header">
              <h3 class="card-title"> Product Information </h3>
            
            </div>
            <form method="post" action="{{route('information.generateAllStuff')}}">
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
                    <label class="form-control"  for="category"> Sub category   </label>
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
          <div class="card  card-primary col-md-4 ml-3 h-40">
           
            <div class="card-header">
              <h3 class="card-title"> Information By  Product ID / BOF User ID   </h3>
            </div>
            <br>
            <br>
            <form action="{{route('admin.information.specificProduct')}}"  method="POST"> 
              @csrf 
           <div class="card card-primary">
              <div class="card-header">
               <h3 class="card-title">Information by Product ID /</h3>
              </div>
                <div class="card-body">
                  <div class="form-group">
                    <label class="form-control" for="productName"> Report By Product ID /  </label>
                     <select id="selectProductForProductReport"  class="form-control" name="productName">
                       <option></option>
                       @foreach ($productsList as $pList)
                         <option>{{$pList->name}}</option>
                       @endforeach
                     </select>
                     @if($errors->has('productName'))
                        <span class="text-danger">Please provide a Valid Product Name </span>
                     @endif
                     <div class="card-footer">
                      <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
                    </div>
                  </div>
                  <div class="card card-primary col-md-3">
                     {{-- This is for testing  --}}
                  </div>
           </div>
          </form>
           <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Information  by User ID  /</h3>
            </div>
            <form action="{{route('admin.information.specificUser')}}" method="post">
              @csrf 
              <div class="card-body">
                <div class="form-group">
                  <label class="form-control" for="productName"> Information  By BOF User ID /   </label>
                   <select id="selectUserForUserReport"  class="form-control" name="BofUserID">
                     <option></option>
                     @foreach ($usersIdList as $bList)
                       <option>{{$bList->bofid}}</option>
                     @endforeach
                   </select>
                   @if($errors->has('BofUserID'))
                      <span class="text-danger">Please provide a Valid BOF  User ID  </span>
                   @endif
                   <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
                  </div>
                </div>
            </form>
             
          </div>
            </div>
          </div>
      
      </div>
    </div>
    </div>
      </div>
      <div class="card-footer"></div>
    </div> 
         
   
@endsection