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
    </div>
    <div>
        <table align="center" style="width: 100%" border="1px">
            <tr>
                <td><h3>#SL</h3></td>
                <td><h3>Book Name </h3></td>
                <td><h3>Book Number </h3></td>
                <td><h3>Book Open Date </h3></td>
                <td><h3>Book Closing Date </h3></td>
                <td><h3>Total Credit</h3></td>
                <td><h3>Total Debit</h3></td>
                <td><h3>Total Balance</h3></td>

            </tr>
            @foreach ($books as $key=>$book )
                <tr>
                    <td>{{$key++}}</td>
                    <td><h3><a href="{{route('balanceDashboard.notesheetsList',$book->id)}}">{{$book->bookName}}</a></h3></td>
                    <td><h3>{{$book->bookNumber}}</h3></td>
                    <td><h3>{{$book->bookOpenDate}}</h3></td>
                    <td><h3>{{$book->bookCloseDate}}</h3></td>
                    <td><h3>-</h3></td>
                    <td><h3>-</h3></td>
                    <td><h3>-</h3></td>
                </tr>
            @endforeach
        </table>
    </div>

</body>
</html>