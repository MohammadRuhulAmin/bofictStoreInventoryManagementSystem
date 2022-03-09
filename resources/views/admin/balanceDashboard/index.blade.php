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
                    {{-- <th><h5>Total Debit</h5></th> --}}
                    <th><h5>Cash Balance</h5></th>
                </thead>
                @for ($i = 0;$i<count($combineAllBookInformation);++$i)
                <tr>
                    <td>{{$i+1}}</td>
                    <td><a href="{{route('balanceDashboard.notesheetsList',$combineAllBookInformation[$i]["book"]["id"])}}">{{$combineAllBookInformation[$i]["book"]["bookName"]}}</a></h5></td>
                    <td>{{$combineAllBookInformation[$i]["book"]["bookNumber"]}}</td>
                    <td>{{$combineAllBookInformation[$i]["book"]["bookOpenDate"]}}</td>
                    <td>{{$combineAllBookInformation[$i]["book"]["bookCloseDate"]}}</td>
                    <td>{{$combineAllBookInformation[$i]["totalCredit"]}}</td>
                    {{-- <td><h5>{{$combineAllBookInformation[$i]["totalDebit"]}}</h5></td> --}}
                    <td>{{$combineAllBookInformation[$i]["currentBalance"]}}</td>
                </tr>
                @endfor
            </table>
        </div>
   </div>

</body>
</html>