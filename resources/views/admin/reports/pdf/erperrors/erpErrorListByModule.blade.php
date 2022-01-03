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
          text-align: justify;
            text-justify: inter-word;
        }
        </style>
</head>

<body>
        <div style="text-align:center">
            <h3>{{$Title }}  ({{$Dept}})</h3>
            <b>Report Name : Modification List of {{$Module}}  </b>
            <br>
        </div>
        <table >
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
            <tr>
                <td>Total Error  </td>
                <td>{{$totalError}}</td>
            </tr>
        </table>
        <br>
        @for ($i = 0;$i<$totalError;$i++)
        <table  style="border-spacing: 0;" border="1px">
            <tr>
                <td>Index</td><td>{{$i}}</td>
            </tr>
            <tr>
                <td style="width: 30%">Status</td>
                <td>{{$erpProblem[$i]->status}}</td>
            </tr>
            <tr>
                <td>Module</td>
                <td>{{$erpProblem[$i]->module}}</td>
            </tr>
            <tr>
                <td>Problem Link /  Form Link   </td>
                <td><a href="{{$erpProblem[$i]->form_link}}">{{$erpProblem[$i]->form_link}}</a></td>
            </tr>
            <tr>
                <td>Problem Description / Suggation Description </td>
                <td>{{$erpProblem[$i]->problemDescription}}</td>
            </tr>
            <tr>
                <td>Problem Found  Date </td>
                <td>{{$erpProblem[$i]->problemFindingDate}}</td>
            </tr>
            <tr>
                <td>Problem Solution Date </td>
                <td>{{$erpProblem[$i]->problemSolutionDate}}</td>
            </tr>
            <tr>
                <td>Problem Detected  By </td>
                <td>{{$erpProblem[$i]->problem_detected_by}}</td>
            </tr>
            <tr>
                <td>Remarks</td>
                <td>{{$erpProblem[$i]->remarks}}</td>
            </tr>
            <tr>
                <td>Suggation</td>
                <td>{{$erpProblem[$i]->suggation}}</td>
            </tr>
        </table>
        <br><br>
        @endfor
        
</body>
</html>