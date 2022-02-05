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
        }
        </style>
</head>
<body>
        <div style="text-align:center">
            <h3>BOF ICT (CELL)</h3>
            <b> Report Name : Product Quantity Information </b>
            <br>
        </div>
        <table>
            <tr>
                <td>Date : </td>
                <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
            </tr>
        </table>
        <br>
        <table   style="border-spacing: 0;" border="1px">
          <tr> <td><b>Desktop</b></td><td>{{$desktop}}</td></tr>
          <tr><td><b>Laptop</b></td><td>{{$laptop}}</td></tr>
          <tr> <td><b>Printer </b></td><td>{{$printer}}</td></tr>
          <tr><td><b>Work Station PC </b></td><td>{{$workstationpc}}</td></tr>
          <tr><td><b>Mobile Phone  </b></td><td>{{$mobilephone}}</td></tr>
          <tr><td><b>Router  </b></td><td>{{$Router}}</td></tr>
          <tr><td><b>Portable Hard Disk   </b></td><td>{{$portableHardDisk}}</td></tr>
          <tr> <td><b>Internal Hard Disk   </b></td><td>{{$internalHardDisk}}</td></tr>
          <tr><td><b>Fire wall   </b></td><td>{{$firewall}}</td></tr>
          <tr> <td><b>Switch   </b></td><td>{{$switch}}</td></tr>
          <tr> <td><b>Server    </b></td><td>{{$server}}</td></tr>
          <tr> <td><b>Rack    </b></td><td>{{$rack}}</td></tr>
          <tr><td><b>Monitor    </b></td><td>{{$monitor}}</td></tr>
          <tr><td><b>pendrive    </b></td><td>{{$pendrive}}</td></tr>
          <tr><td><b>Pointer    </b></td><td>{{$pointer}}</td></tr>
          <tr><td><b>Webcam    </b></td><td>{{$webcam}}</td></tr>
          <tr> <td><b>Mouse    </b></td><td>{{$mouse}}</td></tr>
          <tr><td><b>SSD    </b></td><td>{{$ssd}}</td></tr>
          <tr><td><b> hddinclosoure </b></td><td>{{$hddinclosoure}}</td></tr>
          <tr> <td><b> motherboard </b></td><td>{{$motherboard}}</td></tr>
          <tr><td><b> projector </b></td><td>{{$projector}}</td></tr>
          <tr><td><b> Projector Screen </b></td><td>{{$projectorScreen}}</td></tr>
          <tr> <td><b> RAM</b></td><td>{{$ram}}</td></tr>
          <tr><td><b> Keyboard </b></td><td>{{$keyboard}}</td></tr>
          <tr> <td><b> DVD CD/ Disk </b></td><td>{{$dvdcddisk}}</td></tr>
          <tr><td><b> UPS </b></td><td>{{$ups}}</td></tr>
          <tr> <td><b> Multisocket </b></td><td>{{$multisocket}}</td></tr>
          <tr><td><b> Power supply </b></td><td>{{$powersupply}}</td></tr>
          <tr> <td><b> CC Camera High Resolution</b></td><td>{{$cccameraHighResulation}}</td></tr>
          <tr> <td><b> Camera IP </b></td><td>{{$cameraip}} </td></tr>
        </table>
</body>
</html>
{{-- 'desktop' => Product::where(['Category'=>'Desktop'])->count(),
            'laptop' => Product::where(['Category'=>'Laptop'])->count(),
            'printer' => Product::where(['Category'=>'Printer'])->count(),
            'workstationpc' => Product::where(['Category'=>'Workstation PC'])->count(),
            'Router' => Product::where(['Category'=>'Router'])->count(),
            'portableHardDisk' => Product::where(['Category'=>'Portable Hard Disk'])->count(),
            'internalHardDisk' => Product::where(['Category' =>'Internal Hard Disk'])->count(),
            'firewall' => Product::where(['Category'=>'Firewall'])->count(),
            'switch' => Product::where(['Category'=>'Switch'])->count(),
            'server' => Product::where(['Category'=>'Server'])->count(),
            'rack' => Product::where(['Category'=>'Rack'])->count(),
            'monitor' => Product::where(['Category'=>'Monitor'])->count(),
            'pendrive' => Product::where(['Category'=>'Pendrive'])->count(),
            'pointer' => Product::where(['Category'=>'Pointer'])->count(),
            'webcam' => Product::where(['Category'=>'Webcamera'])->count(),
            'mouse' => Product::where(['Category'=>'Mouse'])->count(),
            'ssd'  => Product::where(['Category'=>'SSD'])->count(),
            'hddinclosoure' => Product::where(['Category'=>'HDD Inclosoure'])->count(),
            'motherboard' => Product::where(['Category'=>'Mother Board'])->count(),
            'projector' => Product::where(['Category'=>'Projector'])->count(),
            'projectorScreen' => Product::where(['Category'=>'Projector-Screen'])->count(),
            'ram' => Product::where(['Category'=>'RAM'])->count(),
            'keyboard' => Product::where(['Category'=>'Keyboard'])->count(),
            'dvdcddisk' => Product::where(['Category'=>'DVD/CD Disk'])->count(),
            'ups' => Product::where(['Category'=>'UPS'])->count(),
            'multisocket' => Product::where(['Category'=>'Multi Socket'])->count(),
            'powersupply' => Product::where(['Category'=>'Power Supply'])->count(),
            'cccameraHighResulation' => Product::where(['Category'=>'CC Camera (High Resolution)'])->count(),
            'cameraip' => Product::where(['Category'=>'Camera (IP)'])->count(),
            'speaker'  => Product::where(['Category'=>'Speaker (Wired)'])->count(),
            'photocopier' => Product::where(['Category'=>'Photocopier'])->count(),
            'cable' => Product::where(['Category'=>'Cable'])->count(),
            'fan' => Product::where(['Category'=>'Fan(Cabling,Colling-Fan)'])->count(),
            'processor' => Product::where(['Category'=>'Processor'])->count(),
            'phone' => Product::where(['Category'=>'Phone'])->count(),
            'microprocessor' => Product::where(['Category'=>'Microprocessor'])->count(),
            'cordlessPhone' => Product::where(['SubCategory'=>'CordlessPhone'])->count(),
            'onlineups' => Product::where(['SubCategory'=>'Online UPS'])->count(),
            'wirelessPocketMicrophone' => Product::where(['SubCategory'=>'Wireless Pocket Microphone'])->count(),
            'wirelesskeyboard' => Product::where(['SubCategory'=>'Wireless Keyboard'])->count(),
            'mobilephone' => Product::where(['SubCategory'=>'Mobile Phone'])->count(),
            'powercable' => Product::where(['SubCategory'=>'Power Cable'])->count(), --}}