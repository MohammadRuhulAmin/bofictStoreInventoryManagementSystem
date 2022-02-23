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
        <div class=" clearfix">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('balanceDashboard.index')}}"> Home </a></li>
              <li class="breadcrumb-item active">  Notesheet List  </a></li>
              {{-- <li class="breadcrumb-item active"> </li> --}}
            </ol>
        <div>
            <table align="center" style="width: 100%" border="1px">
                <thead class="bg-primary text-white">
                    <th><h5>#SL</h5></th>
                    <th><h5>BOOK</h5></th>
                    <th><h5>Note sheet No </h5></th>
                    <th><h5>Note sheet Date  </h5></th>
                    <th><h5>Note sheet Details </h5></th>
                    <th><h5> </h5></th>
                    <th><h5>Total Credit</h5></th>
                    <th><h5>Total Debit</h5></th>
                    <th><h5>Total Balance</h5></th>
    
                </thead>
                @foreach ($notesheetList as $key=>$nList )
                    <tr>
                        <td>{{$key++}}</td>
                        <td><h5>{{$nList->bookName}}</h5></td>
                        <td><h5><a href="{{route('balanceDashboard.notesheetDetails',$nList->id)}}">{{$nList->notesheet_no}}</a></h5></td>
                        <td><h5>{{$nList->notesheetDate}}</h5></td>
                        <td><h5>{{$nList->reasonForTheNoteSheet}}</h3></td>
                        <td><h5></h5></td>
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