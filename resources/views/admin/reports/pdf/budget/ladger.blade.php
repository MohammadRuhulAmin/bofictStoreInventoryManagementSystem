<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="bn" xml:lang="bn">
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
{{-- 'budgetDescription' =>$budgetDescription,
          'notesheetDescription' =>$notesheetDescription, 
          'notesheetDetails' => $notesheetDetails --}}
<body>
        <div style="text-align:center">
            {{-- <img src="{{public_path('bof-logo/bof-logo.png')}}" style = "width: 100px; height :100px"/> --}}
            <h3>Bangladesh Ordnance Factories (ICT ,CELL) </h3>
            <b>  </b>
            <br>
        </div>
        <table>
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
        </table>
        <table>
            <tr>
                <td>Budget Description  : </td>
                <td>{{$budgetDescription}}</td>
            </tr>
            <tr>
                <td>Notesheet : </td>
                <td>{{$notesheetDescription}}</td>
            </tr>
        </table>
        <br>
        <table  align="center" style="border-spacing: 0;" border="1px"  >
          
        </table>
</body>
</html>