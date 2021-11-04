<!DOCTYPE html>
<html lang="en">
    {{-- 'cameraInformation' =>$cameraInformation,
    'totalCamera' =>$totalCamera, --}}
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
            {{-- <img src="{{public_path('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/> --}}
            <h3>{{$Title }}  ({{$Dept}})</h3>
            <b>Report Name : Camera list of {{$parentLocation}} Location   </b>
            <br>
        </div>
        <table  >
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
            <tr>
                <td> Total Camera  </td>
                <td>{{$totalCamera}}</td>
            </tr>
        </table>
        <h1 align="center">Location:  {{$parentLocation}}</h1>
        <br>
        <table  align="center" style="border-spacing: 0;" border="1px"  >
            <tr>
                <td>SL</td>
                <td>ICT No </td>
                <td>Camera Parent Location </td>
                <td>Specific Camera Location </td>
                <td>Camera Type </td>
                <td>Default IP Address </td>
                <td>Used IP Address</td>
                <td> NVR </td>
                <td>Remarks</td>
            </tr>
            @foreach ($cameraInformation as $key=>$clist )
                <tr> 
                    <td>{{++$key}}</td>
                    <td>{{$clist->ictNo}}</td>
                    <td>{{$clist->cameraParentLoccation}}</td>
                    <td>{{$clist->specificLocationOfCamera}}</td>
                    <td>{{$clist->cameraType}}</td>
                    <td>{{$clist->defaultIpAddress}}</td>
                    <td>{{$clist->usedIpAddress}}</td>
                    <td>{{$clist->nvr}}</td>
                    <td>{{$clist->remarks}}</td>
                </tr>
            @endforeach
        </table>
</body>
</html>