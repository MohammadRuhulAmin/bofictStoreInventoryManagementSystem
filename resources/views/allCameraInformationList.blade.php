<!DOCTYPE html>
<html>
 <head>
  <title>Bangladesh Ordnance Factories</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
    <div style="text-align:center">
        <img width="200px" src="{{asset('website_template/assets/img/BOF_LOGIN_LOGO.jpg')}}" class="img-fluid" alt="">
        <h3> Bangladesh Ordnance Factories (ICT CELL) </h3>
        <h4>Camera Information  </h4>
        <br>
     </div>
     <div class="container">
        <div class="card">
            <div class="card-header">
                <input type="text" class="form-control" id="search_camera" placeholder="Search Camera Information">
                <label>Result := </label>
                <b class="card-title" align='center' id="totalRecords"> </b>
            </div>
            <div class="card-body">
                <table class="table table-sm table-striped">
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>ICT NO </th>
                            <th>Camera Parent Location </th>
                            <th>Specific Location </th>
                            <th>Camera Type </th>
                            <th>Default IP Address </th>
                            <th>Used IP Address</th>
                            <th>Remarks</th>
                        </tr>
                    </thead>
                    <tbody>

                    </tbody>
                </table>
            </div>
         </div>
     </div>

 </body>
</html>

<script>
    $(document).ready(function(){
        searchCameraInformation()
        function searchCameraInformation(query = ''){
            $.ajax({
                url:"{{route('QuickAccess.searchAnyCamera')}}",
                method:'GET',
                data:{query:query},
                dataType:'json',
                success:function(response){
                   // console.log(response)
                    $('tbody').html(response.productsInformation)
                    $('#totalRecords').text(response.totalProductInformation)

                   
                }

            })
        }
        $(document).on('keyup','#search_camera',function(){
            var query = $(this).val()
            searchCameraInformation(query)
        })
    })
</script>