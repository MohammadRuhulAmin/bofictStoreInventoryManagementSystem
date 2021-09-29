<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="http://www.bof.gov.bd/" class="brand-link">
      <img src="{{asset('website_template/assets/img/BOF_LOGIN_LOGO.jpg')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="text-sm">Bangladesh Ordnance Factories </span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{asset('admin/dist/img/user2-160x160.jpg')}}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{Auth::user()->name ?? ''}}   <span class="right badge badge-danger">Admin</span> </a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
               
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Menu
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('dashboard')}}" class="nav-link {{request()->is('dashboard*')? 'active': ''}}">
                  <i class="fa fa-home nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>
              @endif
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('users.index')}}" class="nav-link {{request()->is('users*')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Users </p>
                </a>
              </li>
              @endif
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="nav-icon fas fa-tree"></i>
                  <p>
                    Product Information
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
                <ul class="nav nav-treeview">
                  @if(auth()->user()->role === "admin")
                  <li class="nav-item">
                    <a href="{{route('categories.index')}}" class="nav-link {{request()->is('categories*')? 'active': ''}}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Category</p>
                    </a>
                  </li>
                  @endif
                  @if(auth()->user()->role === "admin")
                  <li class="nav-item">
                    <a href="{{route('subcategories.index')}}" class="nav-link {{request()->is('subcategories*')? 'active': ''}}">
                      <i class="far fa-circle nav-icon"></i>
                      <p>Sub Category</p>
                    </a>
                  </li>
                 @endif
                 @if(auth()->user()->role === "admin")
                 <li class="nav-item">
                   <a href="{{route('types.index')}}" class="nav-link {{request()->is('types*')? 'active': ''}}">
                     <i class="far fa-circle nav-icon"></i>
                     <p>Type</p>
                   </a>
                 </li>
                 @endif
                 @if(auth()->user()->role === "admin")
                 <li class="nav-item">
                   <a href="{{route('brands.index')}}" class="nav-link {{request()->is('brands*')? 'active': ''}}">
                     <i class="far fa-circle nav-icon"></i>
                     <p> Brand </p>
                   </a>
                 </li> 
                 @endif 
                 
                 @if(auth()->user()->role === "user")
                 <li class="nav-item">
                   <a href="{{route('product.index')}}" class="nav-link {{request()->is('product.index')? 'active': ''}}">
                     <i class="far fa-circle nav-icon"></i>
                     <p> Product </p>
                   </a>
                 </li>
                 @endif
                 
                 @if(auth()->user()->role ==="admin")
                 <li class="nav-item">
                   <a href="{{route('items.index')}}" class="nav-link {{request()->is('items*')? 'active': ''}}">
                     <i class="far fa-circle nav-icon"></i>
                     <p> Item </p>
                   </a>
                   @endif 
                   
                </ul>
              </li>
              @endif 
              @if(auth()->user()->role === "admin")
                 <li class="nav-item">
                   <a href="{{route('products.index')}}" class="nav-link {{request()->is('products*')? 'active': ''}}">
                     <i class="fa fa-list nav-icon"></i>
                     <p> Product </p>
                   </a>
                 </li>
              @endif
             
              
              @if(auth()->user()->role ==="admin")
              <li class="nav-item">
                <a href="{{route('departments.index')}}" class="nav-link {{request()->is('departments*')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Department </p>
                </a>
              </li>
              @endif
            
              </li>
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('admin_complaints.index')}}" class="nav-link {{request()->is('complaint*')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Complaint </p>
                </a>
              </li>
              @endif
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('productIssuesUsers.index')}}" class="nav-link {{request()->is('productIssuesUsers*')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Product Issued To </p>
                </a>
              </li>
              @endif
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('stocks.index')}}" class="nav-link {{request()->is('stocks*')? 'active': ''}}">
                  <i class="fas fa-align-left nav-icon"></i>
                  <p> Stock </p>
                </a>
              </li>
              @endif
              
           
              @if(auth()->user()->role === "admin")
              <li class="nav-item">
                <a href="{{route('report.index')}}" class="nav-link">
                  <i class="fas fa-align-right nav-icon"></i>
                  <p>Report Generator</p>
                </a>
              </li>
              @endif
              
              @if(auth()->user()->role === "user")
              <li class="nav-item">
                <a href="{{route('user.dashboard')}}" class="nav-link {{request()->is('dashboard*')? 'active': ''}}">
                  <i class="fa fa-home nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>
              @endif
             
              @if(auth()->user()->role === "technician")
              <li class="nav-item">
                <a href="{{route('technician.dashboard')}}" class="nav-link {{request()->is('technician.dashboard')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Dashboard </p>
                </a>
              </li>
              @endif

              @if(auth()->user()->role === "technician")
              <li class="nav-item">
                <a href="{{route('technician_complaints.index')}}" class="nav-link {{request()->is('complaint*')? 'active': ''}}">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Complaint </p>
                </a>
              </li>
              @endif
            </ul>
          </li>
          <li class="nav-item">
            <a href="{{route('users.logout')}}" class="nav-link {{request()->is('users*')? 'active': ''}}">
              <i class="fa fa-sign-out"></i>
              <p>
                Log out 
                <span class="right badge badge-danger">Admin</span>
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>