<html lang="en">
<head>
  <title>DataTables Bigdata load</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
 


 
</head>
<body>
 
<div class="container">
  <h2>within few sec,load BigData or 10 lakh or 1 million Datas/Rows quickly <br>using Datatables Server side in Laravel</h2>
  <p>Datatables Server Processing</p>            
  <table class="table table-striped" id="productTable" width="100%">
    <thead>
      <tr>
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


 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>

 
  <script type="text/javascript">
    
    $(document).ready(function() {
 
      $("#productTable").DataTable({
              "processing":true, 
              "serverSide": true,
              "ajax": {
                  "url": "{{route('products.allProducts')}}",
                  "type":"GET"
              },
              "buttons": false,
              "searching": true,
              "scrollY": 500,
              "scrollX": true,
              "scrollCollapse": true,
              "columns": [
                  {"data": "name"},
                  {"data": "category"},
                  {"data": "subacategory"},
                  {"data": "brand"},
                  {"data": "item"},
                  {"data": "type"},
               
              ]  
        });
 
    });
 
  </script>
 
</body>
</html>
