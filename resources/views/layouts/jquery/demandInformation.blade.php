<script>
    $(document).ready(function() {
        var i = 1;
       $('#addDynamicItemQuantityInput').click(function(){
        event.preventDefault();
           i++;
           $('#dynamic_fieldInput').append(
            `<div class='row' id='row_${i}'>
                        
        <div class='col-sm-3'> <input type='text' placeholder='Item Name' name='itemList[]'  class='form-control'> </div>
        <div class='col-sm-3'> <input type='number' placeholder='Quantity' name='quantityList[]'  class='form-control'> </div>
        <div class='col-sm-3'> <input type='text' placeholder='Perpous of Use ' name='perpousList[]'  class='form-control'> </div>
        <div class='col-sm-1'>
        <button type="button" name="remove" id='${i}'  class="btn btn-danger btn_remove"><i class='fas fa-trash'></i></button>   

           </div>`);
       })
      
       $(document).on('click','.btn_remove',function(){
           var deleteButtonId = $(this).attr("id")
           console.log("row_"+deleteButtonId)
           $('#row_'+deleteButtonId).remove();
       })
       
      
        
    });


</script>

{{-- <script>
    $(document).ready(function() {
        
        

        var i = 1;
       $('#addDynamicTaskInput').click(function(){
        event.preventDefault();
           i++;
           $('#dynamic_fieldInput').append(
            `<div class='row' id='row_${i}'>
                        <div class='col-sm-4'>
            <select class='form-control' id='selectTask' name='taskList[]'>
            @foreach ($tasks as $task )
                <option>{{$task->taskName}} </option>
            @endforeach
            </select>
        </div>
        <div class='col-sm-3'> <input type='date' name='dateList[]'  class='form-control'> </div>
        <div class='col-sm-1'><select class='form-control' name='locationList[]' ><option>Factory</option><option>NOC</option></select>  </div>
        <div class='col-sm-1'> <select class='form-control' name='shiftList[]' ><option>OT-1</option> <option>OT-2</option></select></div>
        <div class='col-sm-1'> <input type='time' name='startTimeList[]'  class='form-control'> </div>
        
        <div class='col-sm-1'>
        <input type='time' name='endTimeList[]'  class='form-control'>
        </div>
        <div class='col-sm-1'>
        <button type="button" name="remove" id='${i}'  class="btn btn-danger btn_remove"><i class='fas fa-trash'></i></button>   

           </div>`);
       })
      
       $(document).on('click','.btn_remove',function(){
           var deleteButtonId = $(this).attr("id")
           console.log("row_"+deleteButtonId)
           $('#row_'+deleteButtonId).remove();
       })
       
      
        
    });


</script> --}}