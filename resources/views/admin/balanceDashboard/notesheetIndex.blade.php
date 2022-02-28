<html>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="m-3">
        <div style="text-align: center">
            <h1 style="text-align: center">BOF ICT CELL</h1>
            <h3 style="text-align: right"><a href="{{route('users.logout')}}">Log out</a></h3>
        </div>
        <div class=" clearfix">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('balanceDashboard.index')}}">  Book </a></li>
              <li class="breadcrumb-item active">  Notesheet List  </a></li>
            </ol>
        <div>
            <table align="center" style="width: 100%" border="1px">
                <thead class="bg-primary text-white">
                    <th><h5>#SL</h5></th>
                    <th><h5>BOOK</h5></th>
                    <th><h5>Note sheet No </h5></th>
                    <th><h5>Note sheet Date  </h5></th>
                    <th><h5>Note sheet Details </h5></th>
                    <th><h5>Credit</h5></th>
                    <th><h5>Balance</h5></th>
                </thead>
                @for ($i = 0;$i<count($combineAllNoteSheetInformation);++$i)
                <tr>
                    <td>{{$i+1}}</td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["bookName"]}}</h5></td>
                    <td><h5><a href="{{route('balanceDashboard.notesheetDetails',$combineAllNoteSheetInformation[$i]["notesheet"]["id"])}}">{{$combineAllNoteSheetInformation[$i]["notesheet"]["notesheet_no"]}}</a></h5></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["notesheetDate"]}}</h3></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["reasonForTheNoteSheet"]}}</h5></td> 
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["notesheet"]["amount"]}}</h5></td>
                    <td><h5>{{$combineAllNoteSheetInformation[$i]["cashbalance"]}}</h5></td>
                </tr>
                @endfor
            </table>
        </div>
    </div>
</body>
</html>