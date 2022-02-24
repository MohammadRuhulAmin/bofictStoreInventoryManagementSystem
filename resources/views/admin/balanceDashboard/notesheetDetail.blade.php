<html>
<head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <meta name="csrf-token" content="{{csrf_token()}}">
</head>
<body>
    <div class="m-3">
        <div style="text-align: center">
            <h1 style="text-align: center">BOF ICT CELL</h1>
            <h3 style="text-align: right"><a href="{{route('users.logout')}}">Log out</a></h3>
        </div>
        <div class="clearfix">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{route('balanceDashboard.index')}}"> Book </a></li>
              <li class="breadcrumb-item active"> Notesheet List </a></li>
              <li class="breadcrumb-item active"> Balance sheet  </li>
            </ol>
        <div >
            <h5 > Authorizer : OIC ICT CELL   {{ session()->put('book_id',$notesheetDetails[0]["book_id"])}}</h5>
            <h5> Authorization Date : {{  now()->toDateTimeString() }}{{ session()->put('notesheet_id',$notesheetDetails[0]["notesheet_id"])}}</h5>
        </div>
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"></h3>
            </div>
            <div class="card-body">
                <table align="center" class="table table-sm border" style="width: 100%" border="4px">
                    <thead class="bg-primary text-white">
                     
                        <th> <input type="checkbox"  id="check_all"  style="width: 40px; height: 40px;" > </th>
                        <th><h5>#SL</h3></th>
                        <th><h5>PV/RV </h3></th>
                        <th><h5>Date </h5></th>
                        <th><h5>Details </h5></th>
                        <th><h5>Credit </h5></th>
                        <th><h5>Debit</h5></th>
                        <th><h5>Balance</h5></th>
                        <th><h5>ERP Indent Voucher NO</h3></th>
                        <th><h5>ERP Entry Date</h5></th>
                        <th><h5>Comments</h5></th>
                        {{-- <td><h3>IC</h3></td> --}}
                        <th><h5>OIC</h5></th>
                    </thead>
                    @foreach ($notesheetDetails as $key=>$notesheetDetail )
                    @if ($notesheetDetail->oic === NULL)
                        <tr style="background-color: #FF7F7F; border:3px;" id="{{$notesheetDetail->id}}">
                            <td><input type="checkbox"  style="width: 40px; height: 40px;" class="checkbox"    data-id="{{$notesheetDetail->id}}"   ></td>
                            <td><h5>{{++$key}}</h5></td>
                            <td><h5>{{$notesheetDetail->PVRV}}</h5></td>
                            <td><h5>{{$notesheetDetail->date}}</h5></td>
                            <td><h5>{{$notesheetDetail->details}}</h5></td>
                            <td><h5>{{$notesheetDetail->credit}}</h5></td>
                            <td><h5>{{$notesheetDetail->debit}}</h5></td>
                            @if ($notesheetDetail->cashbalance == 0)
                                    <td style="color: green"><h3>NILL</h3></td>
                            @else
                                    <td><h5>{{$notesheetDetail->cashbalance}}</h5></td>
                            @endif
                            <td><h5>{{$notesheetDetail->erp_indent_voucher_no}}</h5></td>
                            <td><h5>{{$notesheetDetail->erp_entry_date}}</h5></td>
                            <td><h5>{{$notesheetDetail->comments}}</h5></td>
                            <td><h5>{{$notesheetDetail->oic}}</h5></td>
                            
                        </tr>
                    @else
                        <tr style="background-color: #90EE90" id="{{$notesheetDetail->id}}">
                            <td><input type="hidden" name="{{$notesheetDetail->id}}" id="" ></td>
                            <td>{{++$key}}</td>
                            <td><h5>{{$notesheetDetail->PVRV}}</h5></td>
                            <td><h5>{{$notesheetDetail->date}}</h5></td>
                            <td><h5>{{$notesheetDetail->details}}</h5></td>
                            <td><h5>{{$notesheetDetail->credit}}</h5></td>
                            <td><h5>{{$notesheetDetail->debit}}</h5></td>
                            <td><h5>{{$notesheetDetail->cashbalance}}</h5></td>
                            <td><h5>{{$notesheetDetail->erp_indent_voucher_no}}</h5></td>
                            <td><h5>{{$notesheetDetail->erp_entry_date}}</h5></td>
                            <td><h5>{{$notesheetDetail->comments}}</h5></td>
                            <td><h5>{{$notesheetDetail->oic}}</h5></td>
                        </tr>
                    @endif
                        
                    @endforeach
                </table>
            </div>
          
            <div class="card-footer"> 
                <button class="btn btn-warning" id="authorization_link" > Click For Authorization </button>
            </div>
        </div>
    
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function(){
           
          $('#check_all').on('click',function(){
              if($(this).is(":checked",true)){
                  $('.checkbox').prop('checked',true);
              }
              else{
                  $('.checkbox').prop('checked',false);
              }
          });
          $('.checkbox').on('click',function(){
              if($('.checkbox:checked').length == $('.checkbox').length){
                  $('#check_all').prop('checked',true);
              }
              else{
                  $('#check_all').prop('checked',false);
              }
          });
          $('#authorization_link').on('click',function(e){
              var idsArr = [];
              $('.checkbox:checked').each(function(e){
                  idsArr.push($(this).attr('data-id'));
              });
              if(idsArr.length  ==  0)alert("Please select a Row for authorization");
              else{
                  if(confirm("Are You Sure, Do you want to authorize the Data? ")){
                      var strIds = idsArr.join(",");
                      $.ajax({
                          url:"{{route('balanceDashboard.authorization')}}",
                          type:'POST',
                          headers:{'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')},
                          data: 'ids='+strIds,
                          success:function(data){
                            console.log(data);
                            location.reload();
                          },
                          error:function(error){
                              console.log(error)
                          }
                      });
                  }
              }
          });
      
        });
        // https://www.youtube.com/watch?v=ab4xFUUHM9g&t=1706s
      </script>
</body>
</html>
