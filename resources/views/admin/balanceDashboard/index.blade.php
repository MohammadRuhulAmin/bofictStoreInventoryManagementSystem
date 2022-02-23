<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<style>
     table{
        text-align: center;
    }
</style>
</head>
<body>
   <div class="m-3">
        <div style="text-align: center">
            <h1 style="text-align: center">BOF ICT CELL</h1>
            <h3 style="text-align: right"><a href="{{route('users.logout')}}">Log out</a></h3>
        </div>
        <div class="clearfix">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('balanceDashboard.index')}}"> Book </a></li>
              <li class="breadcrumb-item active"> Notesheet List </a></li>
            </ol>
          </div>
        <div>
            <table align="center" style="width: 100%" border="1px">
                <thead class="bg-primary text-white">
                    <th><h5>#SL</h5></th>
                    <th><h5>Book Name </h5></th>
                    <th><h5>Book Number </h5></th>
                    <th><h5>Book Open Date </h5></th>
                    <th><h5>Book Closing Date </h5></th>
                    <th><h5>Total Credit</h5></th>
                    <th><h5>Total Debit</h5></th>
                    <th><h5>Total Balance</h5></th>
                </thead>
                @foreach ($books as $key=>$book )
                    <tr>
                        <td>{{$key++}}</td>
                        <td><h5><a href="{{route('balanceDashboard.notesheetsList',$book->id)}}">{{$book->bookName}}</a></h5></td>
                        <td><h5>{{$book->bookNumber}}</h5></td>
                        <td><h5>{{$book->bookOpenDate}}</h5></td>
                        <td><h5>{{$book->bookCloseDate}}</h5></td>
                        <td><h5>-</h5></td>
                        <td><h5>-</h5></td>
                        <td><h5>-</h5></td>
                    </tr>
                @endforeach
            </table>
        </div>
   </div>

</body>
</html>