
<script>
   
   
   


      
 
</script>

{{-- function allProductsList(){
    $.ajax({
        type:"GET",
        dataType:"json",
        url:"{{route('products.allProducts')}}",
        //start 
        success:function(response){
        console.log(response)
        var productList = "";
        $.each(response,function(key,value){
            
            productList  += "<tr>"
                productList  += "<td>" + value.id + "</td>"
                productList  += "<td>" +'<img src="{{asset('storage')}}/'+value.image+'"  width="64px">' + "</td>"
                productList  += "<td>" + value.department + "</td>"
                productList  += "<td>" + value.name + "</td>"
                productList  += "<td>" + value.category + "</td>"
                productList  += "<td>" + value.subcategory + "</td>"
                productList  += "<td>" + value.brand + "</td>"
                productList  += "<td>" + value.type + "</td>"
                productList  += "<td>" + value.item + "</td>"
                productList +="<td>"+ "<button class='btn btn-sm btn-primary mr-2' onclick='editEmployeeInformation("+value.id+")'> <i class='fas fa-edit'></i></button>" 
                productList += "<button class='btn btn-sm btn-danger mr-2' onclick='deleteEmployee("+value.id+")'><i class='fas fa-trash-alt'></i> </button>" +"</td>"
                productList += "</tr>";
        })
        $('#productTableBody').html(productList)
    
    },


        //end
        
    })
}
allProductsList() --}}