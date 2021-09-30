<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bangladesh Ordnance Factories</title>
    <style>
        table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
          text-align: center;
        }
        </style>
</head>

<body>
        <div style="text-align:center">
            <img src="{{public_path('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/>
            <h3>{{$Title }}  ({{$Dept}})</h3>
            <b>Report Name : {{$Category}} Category Balance Sheet </b>
            <br>
        </div>
        <table  >
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
            <tr>
                <td>Current   Stock : </td>
                <td>{{$CurrentStock}} </td>
            </tr>
           
        </table>
        <br>
        <table width="100%"  align="center" style="border-spacing: 0;" border="1px"  >
            <tr>
                <td>SL</td>
                <td>Date</td>
                <td>Category</td>
                {{-- <td>Subcategory</td> --}}
                {{-- <td>Brand</td>  --}}
                {{-- <td>Item</td> --}}
                {{-- <td>Type</td> --}}
                <td>Inclusion</td>
                <td>Exclusion</td>
                {{-- <td>Maintanance</td> --}}
                <td>Store Balance</td>
                {{-- <td>Letter / Issue No </td> --}}
                <td>Issued To </td>
                <td>Branch</td>
                <td>Remark</td>
            </tr>
            @foreach ($StockReports as $key=>$slist )
                <tr> 
                    <td>{{++$key}}</td>
                    <td>{{$slist->date}}</td>
                    <td>{{$slist->category}}</td> 
                    {{-- <td>{{$slist->subcategory}}</td> --}}
                    {{-- <td>{{$slist->brand}}</td>  --}}
                    {{-- <td>{{$slist->item}}</td> --}}
                    {{-- <td>{{$slist->type}}</td>  --}}
                    <td>{{$slist->inclusion}}</td>
                    <td>{{$slist->exclusion}}</td>
                    {{-- <td>{{$slist->maintanance}}</td> --}}
                    <td>{{$slist->stockBalance}}</td>
                    {{-- <td>{{$slist->issueNo}}</td> --}}
                    <td>{{$slist->issuedTo}}</td>
                    <td>{{$slist->branch}}</td>
                    <td></td>
                    

                </tr>
            @endforeach
        </table>
</body>
</html>