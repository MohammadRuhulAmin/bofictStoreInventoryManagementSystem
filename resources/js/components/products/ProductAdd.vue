<template>
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create a New Product </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="" method="post">
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
              <input type="file"  placeholder="Product Image" class="form-control">
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
      </form>
    </div>
    <!-- /.card -->
</template>
<script>
import store from '../../store'
import * as actions from '../../store/action-types';
import { mapGetters} from 'vuex';
import Select2 from 'v-select2-component';
    export default{
        components:{Select2},
        data(){
            return {
               form:{
                   category_id:0,
                   brand_id:0,
                   sku:'',
                   name:'',
                   image:'',
                   cost_price:0,
                   retail_price:0,
                   year:'',
                   description:'',
                   status: 1 , 
               } 
            }
        },
        computed:{
            ...mapGetters({
                'categories':'getCategories',
                'brands':'getBrands',
            })
        },
        mounted(){
            // Get Categories 
            store.dispatch(actions.GET_CATEGORIES);
            // Get BRANDS
             store.dispatch(actions.GET_BRANDS);
        }
    }
</script>

<style scoped>

</style>