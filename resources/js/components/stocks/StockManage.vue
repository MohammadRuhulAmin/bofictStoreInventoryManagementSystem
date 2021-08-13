<template>
    <!-- general form elements -->
   <form @submit.prevent="submitForm" role="form"  method="post">
   <div class="row">
     <show-error></show-error>
      <div class="card card-primary col-sm-6">
      <div class="card-header">
        <h3 class="card-title">Stock Manage </h3>
      </div>
      
        <div class="card-body">
            <div class="form-group">
                <lable>Product</lable>
                <Select2 v-model="form.product_id":options="products" :settings="{placeholder:'Select Product'}" ></Select2>
            </div>
        </div>
        <!-- /.card-body -->  
        <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
     

    

      </div>
      
   
          <div class="col-sm-6" >
         <div class="card card-primary card-outline">
           <div class="card-header">
              <h3 class="card-title"> Product Size </h3>
            </div>
           <div class="card-body">
             <div class="row mb-1" v-for="(item,index) in form.items" :key="index">
              <div class="col-sm-4">
                 <select class="form-control" v-model="item.size_id">
                 <option>Select Size</option>
                 <option v-for="(size,index) in sizes" :value="size.id" :key="index">{{size.size}}</option>
               </select>
              </div>
              <div class="col-sm-3">
                <input type="text" class="form-control" v-model="item.location" placeholder="location" >
              </div>
              <div class="col-sm-3">
                <input type="number" class="form-control" v-model="item.quantity" placeholder="Quantity">
              </div>
              <div class="col-sm-2">
                <button type="button" @click="deleteItem(index)" class="btn btn-danger btn-sm "><i class="fa fa-trash "></i></button>
              </div>

             </div>
               <button @click="addItem()" type="button" class="btn btn-primary btn-sm mt-3" ><i class="fa fa-plus">Add Item</i></button>
           </div>
        
         </div>
       </div>
  

    
    
   
   
   </div>
  
    </form>

    
    <!-- /.card -->
</template>
<script>
import ShowError from '../utils/ShowError.vue';
import store from '../../store'
import * as actions from '../../store/action-types';
import { mapGetters} from 'vuex';
import Select2 from 'v-select2-component';
import Input from '../../../../vendor/laravel/jetstream/stubs/inertia/resources/js/Jetstream/Input.vue';
    export default{
        components:{
            Select2,
            ShowError
          },
         
          data(){
            return {
               form:{
                   product_id:'',
                   items:[{
                     size_id:'',
                     quantity:0
                   }],
               } 
            }
        },
        computed:{
            ...mapGetters({
                'products':'getProducts',
            })
        },
        mounted(){

               // Get Products
             store.dispatch(actions.GET_PRODUCTS);
        },
         methods:{},
          
       
          
    }
</script>

<style scoped>

</style>