<template>
    <!-- general form elements -->
   <form @submit.prevent="submitForm" role="form"  method="post">
   <div class="row">
     <show-error></show-error>
      <div class="card card-primary col-sm-6">
      <div class="card-header">
        <h3 class="card-title">Return Product Manage </h3>
      </div>
      
        <div class="card-body">
            <div class="form-group">
                <lable>Product</lable>
                <Select2 @change="selectedProduct"  v-model="form.product_id":options="products" :settings="{placeholder:'Select Product'}" ></Select2>
            </div>
            <div class="form-group">
                <label>Date <span class="text-danger">*</span> </label>
                <input type="date" class="form-control" v-model="form.date">
            </div>
           
        </div>
        <!-- /.card-body -->  
        <div class="card-footer">
            <button type="submit"  class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
     

    

      </div>
      
   
          <div class="col-sm-6" >
         <div class="card card-primary card-outline">
           <div class="card-header">
              <h3 class="card-title"> Product Size </h3>
            </div>
           <div class="card-body">
              <table class="table table-sm">
                  <tr v-for="(item,index) in form.items" :key="index">
                      <td>{{item.size}}</td>
                      <td><input class="form-control" v-model="item.quantity" placeholder="Quantity"></td>
                  </tr>
              </table>
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
    export default{
        components:{
            Select2,
            ShowError
          },
         
          data(){
            return {
               form:{
                   data:'',
                   product_id:'',
                   items:[]
                   
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
         methods:{
             selectedProduct(id){ // select2 component will return the product id  
             this.form.items = [];
                 let product = this.products.filter(product=>product.id == id)
                // console.log(product);
                product[0].product_stocks.map(stock=>{
                    let item = {
                        size:stock.size.size,
                        size_id:stock.size_id,
                        quantity: ''
                    }
                    this.form.items.push(item);
                })

             },
                submitForm(){
                    store.dispatch(actions.SUBMIT_RETURN_PRODUCT,this.form)
                   
                },
         },
       
          
       
          
    }
</script>

<style scoped>

</style>