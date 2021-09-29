<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Bangladesh Ordnance Factories </title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    {{-- for jquery realtime search product  --}}
</head>
<body>
   
    <div style="text-align:center">
        <br><br>
        <img src="{{asset('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/>
        {{-- <img src="{{public_path('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/> --}}
        <h1>Bangladesh Ordnance Factories</h1>
        <b>(BOF ICT CELL)</b>
        <br>
        <table align="center">
            <tr>
                <td >Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
        </table>
        <br>
    </div>

    <div class="container" >
        {{-- <table  class="table table-striped" id="productsInformation" width="100%">
            <thead>
                <tr>
                    <th>department</th>
                    <th>name</th>
                    <th>category</th>
                    <th>subcategory</th>
                    <th>brand</th>
                    <th>item</th>
                    <th>type</th>
                    <th>description</th>
                   
                </tr>
            </thead>
        </table> --}}
        <table class="table-striped" align="center" width="10%">
            <tr>
                <td><a href="{{route('login')}}" class="btn btn-success">Login</a></td>
                <td><a href="{{route('register')}}" class="btn btn-warning">Register</a></td>
            </tr>
        </table>
       {{-- <small align="center"><u>Developed by : Team ICT CELL  , BOF</u> </small> --}}
    </div>

    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    
 
  <script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
   
{{-- 
<script type="text/javascript">
     $(document).ready(function() {
        //  console.log('{{url('/testing-product')}}');
 $("#productsInformation").DataTable({
         "serverSide": true,
         "processing": true,
         ajax: {
             url: '{{url('/bofict-cell')}}',
            
           
             
            
         },
         buttons: true,
         searching: true,
         scrollY: 700,
         scrollX: true,
         scrollCollapse: true,
         columns: [
            {data: "department"},
             {data: "name"},
             {data: "category"},
             {data: "subcategory"},
             {data: "brand"},
             {data: "item"},
             {data: "type"},
             {data:"description"},
            
          
         ]  
   });

});

</script> --}}
</body>
</html>

