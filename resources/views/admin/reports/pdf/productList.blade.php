<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bangladesh Ordnance Factories</title>
</head>
<body>
        <div style="text-align:center">
            <img src="{{public_path('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/>
            <h3>{{$title}}</h3>
            <b> {{$OIC}}</b><br>
            <b>{{$IC}}</b>

        </div>
        <br> 
        <br>
        <table  align="center" style="border-spacing: 0;" border="1px" >
            <tr>
                <td>#</td>
                <td>Name</td>
                <td>Category</td>
                <td>Subcategory</td>
                <td>Type</td>
                <td>Item</td>
                <td>Brand</td>
                <td>Desc</td>
                <td>Depart</td>
            </tr>
            @foreach ($productsList as $key=>$plist )
                <tr>
                    <td>{{$key++}}</td>
                    <td>{{$plist->name}}</td>
                    <td>{{$plist->category}}</td>
                    <td>{{$plist->subcategory}}</td>
                    <td>{{$plist->type}}</td>
                    <td>{{$plist->item}}</td>
                    <td>{{$plist->brand}}</td>
                    <td>{{$plist->description}}</td>
                    <td>{{$plist->department}}</td>

                </tr>
            @endforeach
        </table>
</body>
</html>