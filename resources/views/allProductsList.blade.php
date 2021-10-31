<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Laravel DataTables Tutorial</title>

        <!-- Bootstrap CSS -->
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="//cdn.datatables.net/1.10.7/css/jquery.dataTables.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            body {
                padding-top: 40px;
            }
        </style>
    </head>
    <body>
      <div style="text-align:center">
        <img width="200px" src="{{asset('website_template/assets/img/BOF_LOGIN_LOGO.jpg')}}" class="img-fluid" alt="">
        <h3>Bangladesh Ordnance Factories (ICT CELL)</h3>
        <h4>Products List </h4>
        <br>
     </div>
          <div class="card">
            <div class="card-header"></div>
            <div class="card-body">
              <table class="table table-striped" id="QuickAccessProductTable" width="100%">
                <thead>
                  <tr>
                    <th>Department </th>
                    <th>Name</th>
                    <th>Category</th>
                    <th>Subcategory</th>
                    <th>Brand</th>
                    <th>Item</th>
                    <th>Type </th>
                  </tr>
                </thead>
                <tbody>
                  
                </tbody>
             
              </table>
            </div>
            </div>
                   
           
          </div>
        <!-- jQuery -->
        <script src="//code.jquery.com/jquery.js"></script>
        <!-- DataTables -->
        <script src="//cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
        <!-- Bootstrap JavaScript -->
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <!-- App scripts -->
        <script>
          $(document).ready(function(){
            $('#QuickAccessProductTable').DataTable({
             processing:true,
             serverSide:true,
             ajax:'{!! route('QuickAccess.allProductsList') !!}',
             columns: [
                  {"data" : "department"},
                  {"data": "name"},
                  {"data": "category"},
                  {"data": "subcategory"},
                  {"data": "brand"},
                  {"data": "item"},
                  {"data": "type"},
                  
              ]  
          })
          })
        </script>
    </body>
</html>