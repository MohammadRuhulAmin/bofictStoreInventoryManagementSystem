<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Bangladesh Ordnance Factory</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="{{asset('website_template/assets/img/BOF.com.png')}}" rel="icon">
  <link href="{{asset('website_template/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Lato:400,300,700,900" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('website_template/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('website_template/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{asset('website_template/assets/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet">
  <link href="{{asset('website_template/assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="{{asset('website_template/assets/css/style.css')}}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Amoeba - v4.3.0
  * Template URL: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <div class="logo me-auto">

        <h1><a href="index.html">BOF</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="https://www.bof.gov.bd">BOF Website</a></li>
          <li> <a class="nav-link scrollto active" href="{{route('QuickAccess.allProductsListIndex')}}"> All Products  </a> </li>
          <li> <a class="nav-link scrollto active" href="{{route('QuickAccess.searchProductsIndex')}}"> Search Products  </a> </li>
          <li class="dropdown"><a href="#"><span>Access</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                @if (Route::has('login'))
                <div class="hidden fixed top-0 right-0 px-6 py-4 sm:block">
                    @auth
                     <li>   <a href="{{ url('/dashboard') }}" class="text-sm text-gray-700 underline">Dashboard</a></li>
                    @else
                      <li>  <a href="{{ route('login') }}" class="text-sm text-gray-700 underline">Log in</a></li>

                        @if (Route::has('register'))
                          <li>  <a href="{{ route('register') }}" class="ml-4 text-sm text-gray-700 underline">Register</a></li>
                        @endif
                    @endauth
                </div>
            @endif
 
              
            </ul>
          </li>
          
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End #header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container">
      <h1>Bangladesh Ordnance Factories</h1>
      
      <a href="#about" class="btn-get-started scrollto">Inventory Management System</a>
    </div>
  </section><!-- #hero -->

  <main id="main">

    <section id="about" class="about">
      <div class="container">

        <div class="section-title">
          <h2></h2>
        </div>

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2">
            <img src="{{asset('website_template/assets/img/BOF.com.png')}}" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1">
            <h3>Stock Inventory Management System </h3>
            <p class="fst-italic">
               
            </p>
            <ul>
              <li><i class="bi bi-check2-circle"></i> List of Products in Dynamic Search </li>
              <li><i class="bi bi-check2-circle"></i> Report of Products dynamic </li>
              <li><i class="bi bi-check2-circle"></i> Report of a Specific Product & User </li>
            </ul>
            <p>
              
            </p>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->



 

   

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>Bangladesh Ordnance Factory</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/free-one-page-bootstrap-template-amoeba/ -->
        Designed by <a href="#">BOF ICT Team </a>
      </div>
    </div>
  </footer><!-- End #footer -->

  

  <!-- Vendor JS Files -->
  <script src="{{asset('website_template/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('website_template/assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
  <script src="{{asset('website_template/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('website_template/assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{asset('website_template/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('website_template/assets/js/main.js')}}"></script>

</body>

</html>