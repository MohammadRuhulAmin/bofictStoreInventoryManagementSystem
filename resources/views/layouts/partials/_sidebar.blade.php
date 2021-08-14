<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="http://www.bof.gov.bd/" class="brand-link">
      <img src="{{asset('website_template/assets/img/BOF_LOGIN_LOGO.jpg')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="text-sm">Bangladesh Ordnance Factory </span>
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
              <li class="nav-item">
                <a href="{{route('dashboard')}}" class="nav-link active">
                  <i class="fa fa-home nav-icon"></i>
                  <p>Dashboard</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('users.index')}}" class="nav-link active">
                  <i class="fa fa-users nav-icon"></i>
                  <p>User</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('categories.index')}}" class="nav-link active">
                  <i class="fa fa-list nav-icon"></i>
                  <p>Category</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('brands.index')}}" class="nav-link">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Brand </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('sizes.index')}}" class="nav-link">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Size </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('products.index')}}" class="nav-link">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Product </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('stock')}}" class="nav-link">
                  <i class="fa fa-cart-plus nav-icon"></i>
                  <p> Stock  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('stockHistory')}}" class="nav-link">
                  <i class="fa fa-list nav-icon"></i>
                  <p> Stock History  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('returnProduct')}}" class="nav-link">
                  <i class="fa fa-file nav-icon"></i>
                  <p> Return Product  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="{{route('returnProductHistory')}}" class="nav-link">
                  <i class="fa fa-circle nav-icon"></i>
                  <p> Return Product History </p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="{{route('users.logout')}}" class="nav-link">
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