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
                <td><h3>PV/RV </h3></td>
                <td><h3>Date </h3></td>
                <td><h3>Details </h3></td>
                <td><h3>Credit </h3></td>
                <td><h3>Debit</h3></td>
                <td><h3>Balance</h3></td>
                <td><h3>ERP Indent Voucher NO</h3></td>
                <td><h3>ERP Entry Date</h3></td>
                <td><h3>Comments</h3></td>
                {{-- <td><h3>IC</h3></td> --}}
                <td><h3>OIC</h3></td>
            </tr>
            @foreach ($notesheetDetails as $key=>$notesheetDetail )
            @if ($notesheetDetail->oic === NULL)
                <tr style="background-color: #FF7F7F;">
                    <td>{{++$key}}</td>
                    <td><h3>{{$notesheetDetail->PVRV}}</h3></td>
                    <td><h3>{{$notesheetDetail->date}}</h3></td>
                    <td><h3>{{$notesheetDetail->details}}</h3></td>
                    <td><h3>{{$notesheetDetail->credit}}</h3></td>
                    <td><h3>{{$notesheetDetail->debit}}</h3></td>
                    @if ($notesheetDetail->cashbalance == 0)
                            <td style="color: green"><h3>NILL</h3></td>
                    @else
                            <td><h3>{{$notesheetDetail->cashbalance}}</h3></td>
                    @endif
                    <td><h3>{{$notesheetDetail->erp_indent_voucher_no}}</h3></td>
                    <td><h3>{{$notesheetDetail->erp_entry_date}}</h3></td>
                    <td><h3>{{$notesheetDetail->comments}}</h3></td>
                    {{-- <td><h3>{{$notesheetDetail->ic}}</h3></td> --}}
                    <td><h3>{{$notesheetDetail->oic}}</h3></td>
                    
                </tr>
            
            @else
                <tr style="background-color: #90EE90">
                    <td>{{++$key}}</td>
                    <td><h3>{{$notesheetDetail->PVRV}}</h3></td>
                    <td><h3>{{$notesheetDetail->date}}</h3></td>
                    <td><h3>{{$notesheetDetail->details}}</h3></td>
                    <td><h3>{{$notesheetDetail->credit}}</h3></td>
                    <td><h3>{{$notesheetDetail->debit}}</h3></td>
                    <td><h3>{{$notesheetDetail->cashbalance}}</h3></td>
                    <td><h3>{{$notesheetDetail->erp_indent_voucher_no}}</h3></td>
                    <td><h3>{{$notesheetDetail->erp_entry_date}}</h3></td>
                    <td><h3>{{$notesheetDetail->comments}}</h3></td>
                    {{-- <td><h3>{{$notesheetDetail->ic}}</h3></td> --}}
                    <td><h3>{{$notesheetDetail->oic}}</h3></td>
                    
                </tr>
            @endif
                
            @endforeach
        </table>
    </div>

</body>
</html>