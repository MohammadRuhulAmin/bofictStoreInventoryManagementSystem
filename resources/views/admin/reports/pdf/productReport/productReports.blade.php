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
            <h3>{{$Title }}  ({{$Dept}})</h3>
            <b>Report Name :  </b>
            <br>
            <table >
                <tr>
                    <td>Date : </td>
                    <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
                </tr>
            </table>
            <br>
        </div>
      
                <table   style="width:100%; border-spacing: 0;" border="1px">
                    <tr>
                        <td> Name </td>
                        <td>{{$product->name}}</td>
                        
                    </tr>
                    <tr>
                        <td>Category  </td>
                        <td>{{$product->category}}</td>
                      
                    </tr>
                    <tr>
                        <td>Subcategory   </td>
                        <td>{{$product->subcategory}}</td>
                       
                    </tr>
                    <tr>
                        <td> Brand</td>
                        <td>{{$product->brand}}</td>
                       
                    </tr>
                    <tr>
                        <td>Type</td>
                        <td>{{$product->type}}</td>
                       
                    </tr>
                    <tr>
                        <td>Item </td>
                        <td>{{$product->item}}</td>
                       
                    </tr>
                    <tr>
                        <td> Department  </td>
                        <td>{{$product->department}}</td>
                        
                    </tr>
                    <tr>
                        <td> Description </td>
                        <td>{{$product->description}}</td>
                        
                    </tr>
                    
               </table>
               <h3>Users List of  {{$product->name}} </h3>
                <table  style="width:100% ;border-spacing: 0;" border="1px" >
                    <tr>
                        <td>BOF ID</td>
                        <td>Name</td>
                        <td>Designation</td>
                    </tr>
                    @foreach ($productUserList as $plist )
                        <tr>
                            <td>{{$plist->bofid}}</td>
                            <td>{{$plist->name}}</td>
                            <td>{{$plist->designation}}</td>
                        </tr>
                    @endforeach
                </table>
                <h3>Repairment History of   {{$product->name}} </h3>
                @foreach($complaintsOfProduct as $cop)
                <br>
                        <table   style="width:100%; border-spacing: 0;" border="1px" >
                          <tr>
                              <td> Complaint Date : </td>
                              <td>{{$cop->date}}</td>
                          </tr>
                          <tr>
                              <td> Complaint Time : </td>
                              <td>{{$cop->time}}</td>
                          </tr>
                          <tr>
                              <td> Person Complaint  </td>
                              <td>{{$cop->complaintName}}</td>
                          </tr>
                          <tr>
                              <td> Person Designation  </td>
                              <td>{{$cop->complaintDesignation}}</td>
                          </tr>
                          <tr>
                              <td> Complaint Description </td>
                              <td class="text-danger text-break">{{$cop->complaintDescription}}</td>
                          </tr>
                          <tr>
                              <td> Receiver of The Complaint  </td>
                              <td >{{$cop->complaintReceiverName}}</td>
                          </tr>
                          <tr>
                              <td>  Technician Name   </td>
                              <td >{{$cop->complaintSolverTechnicianName}}</td>
                          </tr>
                          <tr>
                              <td>  Product Received Date :    </td>
                              <td >{{$cop->complaintSolutionDate}}</td>
                          </tr>
                          <tr>
                              <td> Solution  Description :       </td>
                              <td class="text-info">{{$cop->complaintSolutionDescription}}</td>
                          </tr>
                          <tr>
                              <td> IC       </td>
                              <td>{{$cop->ic}}</td>
                          </tr>
                          <tr>
                              <td> OIC       </td>
                              <td>{{$cop->oic}}</td>
                          </tr>
                      </table>
                @endforeach
            
        
   
   
   
  
   
       
</body>
</html>
