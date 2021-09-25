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
            <b>Report Name : Products List of  {{$Subcategory}} SubCategory &    {{$Brand}} Brand </b>
            <br>
        </div>
        <table  >
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
            <tr>
                <td>Subcategory :  </td>
                <td>{{$Subcategory}}</td>
            </tr>
            <tr>
                <td> Brand </td>
                <td>{{$Brand}}</td>
            </tr>
            
            <tr>
                <td>Total Product : </td>
                <td>{{$TotalProduct}}</td>
            </tr>
           
        </table>
        <br>
        <table  align="center" style="border-spacing: 0;" border="1px"  >
            <tr>
                <td>SL</td>
                <td>Name</td>
                <td>Category</td>
                <td>Subcategory</td>
                <td>Type</td>
                <td>Item</td>
                <td>Brand</td>
                <td>Desc</td>
                <td>Depart</td>
                <td>Remarks</td>
            </tr>
            @foreach ($productsList as $key=>$plist )
                <tr> 
                    <td>{{++$key}}</td>
                    <td>{{$plist->name}}</td>
                    <td>{{$plist->category}}</td>
                    <td>{{$plist->subcategory}}</td>
                    <td>{{$plist->type}}</td>
                    <td>{{$plist->item}}</td>
                    <td>{{$plist->brand}}</td>
                    <td>{{$plist->description}}</td>
                    <td>{{$plist->department}}</td>
                    <td></td>

                </tr>
            @endforeach
        </table>
</body>
</html>