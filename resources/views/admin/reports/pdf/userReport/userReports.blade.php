<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bangladesh Ordnance Factories</title>
    <style>
        td {
                border: 1px solid #ddd;
                 /* padding: 10px; */
                 width: 50%;
          }
          /* table td {
           
            overflow: hidden;
            display: inline-block;
            white-space: nowrap;
        } */
    </style>
</head>
<body>
        <div style="text-align:center">
            <b>{{$Title }}  ({{$Dept}})</b>
            <b> Products issued  List  </b>
            <br>
            <table>
                <tr>
                    <td>Date : </td>
                    <td> {{\Carbon\Carbon::now()->format('d-m-Y')}}</td>
                </tr>
            </table>
            <br>
        </div>
        <table style="width:100% ;border-spacing: 0;" border="1px">
            <tr>
                <td>Name  </td>
                <td class="text-success">{{$productUserInfo->name}}</td>
            </tr>
            <tr>
                <td>Bof Id </td>
                <td>{{$productUserInfo->bofid}}</td>
            </tr>
            <tr>
                <td> Designation  </td>
                <td><span class="badge badge-success">{{$productUserInfo->designation  }}</span></td>
            </tr>

            <tr>
                <td>Total Products Used  </td>
                <td><span class="badge badge-info">{{$totalProductUsed}}</span></td>
            </tr>   
          </table>
          
          <h3>Products List </h3>
            @for ($i = 0;$i<count($informationDetails);$i++)
            <table align="center" style="border-spacing: 0; width:100%" border="1px">
                    <tr>
                        <td>
                            Product Id : 

                        </td>
                        <td>
                            {{$informationDetails[$i]['productId']}}
                        </td>
                    </tr>
                    <tr>
                        <td>Issue Date : </td>
                        <td>{{$informationDetails[$i]['productIssueDate']}}</td>
                    </tr>
                    <tr>
                        <td> Return Date  : </td>
                        <td>
                            @if (!empty($informationDetails[$i]['productReturnDate']) )
                            {{$informationDetails[$i]['productReturnDate']}}
                            @elseif (empty($informationDetails[$i]['productReturnDate']))
                                Not Returned Yet 
                            @endif
                        </td>
                    </tr>

                    @if (!empty($informationDetails[$i]['productDetail'][0]["category"]))
                    <tr>
                        <td>Category </td>
                        <td>{{$informationDetails[$i]['productDetail'][0]["category"]}}</td>
                    </tr>
                    @endif
                    @if (!empty($informationDetails[$i]['productDetail'][0]["subcategory"]))
                    <tr>
                        <td>Subcategory </td>
                        <td>{{$informationDetails[$i]['productDetail'][0]["subcategory"]}}</td>
                    </tr>
                    @endif
                    
                    @if (!empty($informationDetails[$i]['productDetail'][0]["brand"]))
                        <tr>
                            <td>Brand </td>
                            <td>{{$informationDetails[$i]['productDetail'][0]["brand"]}}</td>
                        </tr>
                    @endif
                    @if (!empty($informationDetails[$i]['productDetail'][0]["item"]))
                        <tr>
                            <td>Item </td>
                            <td>{{$informationDetails[$i]['productDetail'][0]["item"]}}</td>
                        </tr>
                    @endif
                    @if ($informationDetails[$i]['productDetail'][0]["type"])
                    <tr>
                        <td>Type </td>
                        <td>{{$informationDetails[$i]['productDetail'][0]["type"]}}</td>
                    </tr>
                    @endif
                    @if ($informationDetails[$i]['productDetail'][0]["department"])
                    <tr>
                        <td> Department </td>
                        <td>{{$informationDetails[$i]['productDetail'][0]["department"]}}</td>
                    </tr>
                    @endif
                </table>
            @endfor
            

        
                        
                
              
           
            
        
   
   
   
  
   
       
</body>
</html>


{{-- <td>{{$combineAllWeeklyInformation_shift_1[$i]['dayName']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['date']}}</td>
<td><img width="64px" src="{{url('storage/'.$combineAllWeeklyInformation_shift_1[$i]['employeeImage']->image)}}"/></td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['employeeName']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['employeeDesignation']->designation}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['location']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['employeeTask']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['startTime']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['endTime']}}</td>
<td>{{$combineAllWeeklyInformation_shift_1[$i]['totalTime']}}</td>
</tr> --}}


  {{-- @foreach($productInfo as $pif)
                    <br>
                    <table style="width:100% ;border-spacing: 0;" border="1px" >
                        @if($pif->category !== null)
                            <tr>
                                <td> Category  </td>
                                <td>{{$pif->category}}</td>
                            </tr>
                       @endif 
                       @if($pif->subcategory !==null)
                        <tr>
                            <td> Sub Category  </td>
                            <td>{{$pif->subcategory}}</td>
                        </tr>
                      @endif 
                      @if($pif -> type !== null)
                      <tr>
                          <td> Type  </td>
                          <td>{{$pif->type}}</td>
                      </tr>
                      @endif 
                      @if($pif->item !==null)
                      <tr>
                          <td> item   </td>
                          <td>{{$pif->item}}</td>
                      </tr>
                      @endif 
                      @if($pif->brand !== null)
                      <tr>
                          <td> Brand  </td>
                          <td >{{$pif->brand}}</td>
                      </tr>
                      @endif 
                      @if($pif->department !== null)
                      <tr>
                          <td> Department  </td>
                          <td>{{$pif->department}}</td>
                      </tr>
                      @endif
                      <tr>
                          {{-- <td> Repairement Life cycle </td> --}}
                          {{-- <td><a href="{{route('assignProductWithUsers.repairmentHistoryProduct',$pif->id)}}" class=" btn btn-sm btn-warning"> <i class="fas fa-info"></i> Details </a></td>  --}}
                      {{-- </tr>
                  </table>
            
            @endforeach --}}
   