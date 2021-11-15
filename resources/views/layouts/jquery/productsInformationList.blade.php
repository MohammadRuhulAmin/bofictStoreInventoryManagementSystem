<script>
    $(document).ready(function(){
        searchProductsInformation()
        function searchProductsInformation(query = ''){
            $.ajax({
                url:"{{route('QuickAccess.searchAnyProduct')}}",
                method:'GET',
                data:{query:query},
                dataType:'json',
                success:function(response){
                   // console.log(response)
                    $('#tbody-productsTable').html(response.productsInformation)
                    $('#totalRecords').text(response.totalProductInformation)
                }
            })
        }
        $(document).on('keyup','#search_product',function(){
            var query = $(this).val()
            searchProductsInformation(query)
        })
    })
</script>