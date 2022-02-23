<html>
<head>
<style>
     table{
        text-align: center;

    
    }
</style>
</head>
<body>
    <div style="text-align: center">
        <h1 style="text-align: center">BOF ICT CELL</h1>
        <h3 style="text-align: right"><a href="{{route('users.logout')}}">Log out</a></h3>
    </div>
    <div>
        <table align="center" style="width: 100%" border="1px">
            <tr>
                <td><h3>#SL</h3></td>
                <td><h3>BOOK</h3></td>
                <td><h3>Note sheet No </h3></td>
                <td><h3>Note sheet Date  </h3></td>
                <td><h3>Note sheet Details </h3></td>
                <td><h3> </h3></td>
                <td><h3>Total Credit</h3></td>
                <td><h3>Total Debit</h3></td>
                <td><h3>Total Balance</h3></td>

            </tr>
            @foreach ($notesheetList as $key=>$nList )
                <tr>
                    <td>{{$key++}}</td>
                    <td><h3>{{$nList->bookName}}</h3></td>
                    <td><h3><a href="{{route('balanceDashboard.notesheetDetails',$nList->id)}}">{{$nList->notesheet_no}}</a></h3></td>
                    <td><h3>{{$nList->notesheetDate}}</h3></td>
                    <td><h3>{{$nList->reasonForTheNoteSheet}}</h3></td>
                    <td><h3></h3></td>
                    <td><h3>-</h3></td>
                    <td><h3>-</h3></td>
                    <td><h3>-</h3></td>
                </tr>
            @endforeach
        </table>
    </div>

</body>
</html>