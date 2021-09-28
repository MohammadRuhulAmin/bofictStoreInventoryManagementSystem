<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
</head>
<body>
    <div class="container">
        <table class="table table-striped" id="productsInformation" width="100%">
            <thead>
                <tr>
                  
                    <th>name</th>
                    <th>category</th>
                    <th>subcategory</th>
                    <th>brand</th>
                    <th>item</th>
                    <th>type</th>
                    <th>department</th>
                </tr>
            </thead>
        </table>
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
  <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script> 
  <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
   

<script type="text/javascript">
     $(document).ready(function() {
        //  console.log('{{url('/testing-product')}}');
 
 $("#productsInformation").DataTable({
         serverSide: true,
         ajax: {
             url: '{{url('/testing-product')}}',
            
         },
         buttons: true,
         searching: true,
         scrollY: 500,
         scrollX: true,
         scrollCollapse: true,
         columns: [
             {data: "name"},
             {data: "category"},
             {data: "subcategory"},
             {data: "brand"},
             {data: "item"},
             {data: "type"},
             {data: "department"}
          
         ]  
   });

});

</script>

</body>
</html>