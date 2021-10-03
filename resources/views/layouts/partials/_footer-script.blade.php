
<script src="{{asset('js/app.js')}}"></script>

<script src="{{asset('admin/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{asset('admin/dist/js/adminlte.min.js')}}"></script>

{{-- datatables --}}
<script src="{{asset('admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/jszip/jszip.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>

{{-- bootstrap tree view --}}

{{-- sweet alert --}}
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
    $('div.alert').not('.alert-important').delay(3000).fadeOut(350);
    $('.datatable').DataTable({
        "responsive":true,
        "autoWidth":false,
    });
    $('.sa-delete').on('click',function(){
        let form_id = $(this).data('form-id');
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this imaginary file!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
            })
            .then((willDelete) => {
            if (willDelete) {
               $('#'+form_id).submit();
            } else {
                swal("Your imaginary file is safe!");
            }
        });
    });
</script>



<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

<script type="text/javascript">
  
      $("#selectCategory").select2({
            placeholder: "Select Category",
            allowClear: true
        });
</script>

<script type="text/javascript">
  
    $("#selectSubCategory").select2({
          placeholder: "Select Sub category",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectType").select2({
          placeholder: "Select Type",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectItem").select2({
          placeholder: "Select an Item ",
          allowClear: true
      });
</script>
<script type="text/javascript">
  
    $("#selectBrand").select2({
          placeholder: "Select Brand",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectDepartment").select2({
          placeholder: "Select a Department",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectComplaintDate").select2({
          placeholder: "Select a complaint date",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectProductName").select2({
          placeholder: "Select a Product Name",
          allowClear: true
      });
</script>
<script type="text/javascript">
  
    $("#selectTechnician").select2({
          placeholder: "Select The Name of the Technician",
          allowClear: true
      });
</script>

<script type="text/javascript">
  
    $("#selectProductUserId").select2({
          placeholder: "Select the User with specific id",
          allowClear: true
      });
</script>
<script type="text/javascript">
  
    $("#selectProductId").select2({
          placeholder: "Select the Product id",
          allowClear: true
      });
</script>
<script type="text/javascript">
    $("#selectAccessoryName").select2({
        placeholder:"Select Accessory  Item ",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#selectAccessoryFirstProperty").select2({
        placeholder:"Select Accessory First Property if needed ",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#selectAccessorySecondProperty").select2({
        placeholder:"Select Accessory Second Property if needed ",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#selectAccessoryThirdProperty").select2({
        placeholder:"Select Accessory Third Property if needed ",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#selectProductForProductReport").select2({
        placeholder:"Select Product Id for Report",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#selectUserForUserReport").select2({
        placeholder:"Select Product Id for Report",
        allowClear:true 
    })
</script>
<script type="text/javascript">
    $("#SelectCategory").select2({
        placeholder:"Select Category ",
        allowClear:true 
    })
</script> 


@stack('scripts')


