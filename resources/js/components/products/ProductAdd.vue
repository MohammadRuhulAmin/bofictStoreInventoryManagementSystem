<template>
    <!-- general form elements -->
   <form @submit.prevent="submitForm" role="form"  method="post">
   <div class="row">
     <show-error></show-error>
      <div class="card card-primary col-sm-6">
      <div class="card-header">
        <h3 class="card-title">Create a New Product </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      
        <div class="card-body">
          <div class="form-group">
            <label > Select Category <span class="text-danger">*</span> </label>
            <!-- <select class="form-control" v-model="form.category_id">
                <option v-for="(item,index) in categories" :key="index" :value="item.id">{{item.name}}</option>
            </select> -->
            <Select2 v-model="form.category_id" :options="categories" ></Select2>
           <!-- :settings="{placeholder:'Select Category'}" -->
          </div>

          <div class="form-group">
            <label > Select Brand <span class="text-danger">*</span>    </label>
            <!-- <select class="form-control" v-model="form.category_id">
                <option v-for="(item,index) in categories" :key="index" :value="item.id">{{item.name}}</option>
            </select> -->
            <Select2  v-model="form.brand_id" :options="brands"> </Select2>
            <!-- :settings="{placeholder:'Select Category'}" --> 
          </div>
          <div class="form-group">
              <label>SKU <span class="text-danger">*</span>  </label>
              <input type="text" v-model="form.sku" placeholder="SKU" class="form-control">
          </div>
            <div class="form-group">
              <label>Product name  <span class="text-danger">*</span>  </label>
              <input type="text" v-model="form.name" placeholder="Product Name" class="form-control">
            </div>
           
             <div class="form-group">
              <label>Product Image <span class="text-danger">*</span>  </label>
              <input @change="selectImage" type="file"  placeholder="Product Image" class="form-control">
            </div>

            <div class="form-group">
              <label>Cost Prize (Taka) <span class="text-danger">*</span>  </label>
              <input type="number" v-model="form.cost_price" placeholder="Product Cost Price"  class="form-control">
            </div>
            <div class="form-group">
              <label>Retail Price (Taka) <span class="text-danger">*</span>  </label>
              <input type="number" v-model="form.retail_price" placeholder="Product Cost Price"  class="form-control">
            </div>
            <div class="form-group">
              <label>Year <span class="text-danger">*</span>  </label>
              <input type="number" v-model="form.year" placeholder="Product Year Date (Ex:2020)"  class="form-control">
            </div>
            <div class="form-group">
              <label>Product Description  <span class="text-danger">*</span>  </label>
              <input type="text" v-model="form.description" placeholder="Product Description{Max:200}"  class="form-control">
            </div>
            <div class="form-group">
              <label>Product Status  <span class="text-danger">*</span>  </label>
              <select v-model="form.status" class="form-control">
                  <option value="1">
                      Active
                  </option>
                  <option value="0">
                      Inactive
                  </option>
              </select>
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
                   category_id:'',
                   brand_id:'',
                   sku:'',
                   name:'',
                   image:'',
                   cost_price:0,
                   retail_price:0,
                   year:'',
                   description:'',
                   status: 1 , 
                   items:[{
                     size_id:'',
                     location:'',
                     quantity:0
                   }],
               } 
            }
        },
        computed:{
            ...mapGetters({
                'categories':'getCategories',
                'brands':'getBrands',
                'sizes':'getSizes',
            })
        },
        mounted(){
            // Get Categories 
            store.dispatch(actions.GET_CATEGORIES);
            // Get BRANDS
             store.dispatch(actions.GET_BRANDS);
               // Get SIZES
             store.dispatch(actions.GET_SIZES);
        },
         methods:{
           selectImage(e){
             this.form.image = e.target.files[0];
           },
            addItem(){
              let item = {
                      size_id:'',
                     location:'',
                     quantity:0
              }
              this.form.items.push(item);
            },
            deleteItem(index){
             
              this.form.items.splice(index,1);
            },
            submitForm(){
              //  console.log(this.form); // khatni for image 
              let data =  new FormData();
              data.append('category_id',this.form.category_id);
              data.append('brand_id',this.form.brand_id);
              data.append('sku',this.form.sku);
              data.append('name',this.form.name);
              data.append('image',this.form.image);
              data.append('cost_price',this.form.cost_price);
              data.append('retail_price',this.form.retail_price);
              data.append('year',this.form.year);
              data.append('description',this.form.description);
              data.append('status',this.form.status);
              data.append('items',JSON.stringify(this.form.items));

              store.dispatch(actions.ADD_PRODUCT,data);
            }
          },
    }
</script>

<style scoped>

</style>