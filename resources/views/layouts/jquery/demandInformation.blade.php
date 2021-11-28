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
