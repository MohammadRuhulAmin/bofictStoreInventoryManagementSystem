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
            <label > Select Category  </label>
            <!-- <select class="form-control" v-model="form.category_id">
                <option v-for="(item,index) in categories" :key="index" :value="item.id">{{item.name}}</option>
            </select> -->
            <Select2 v-model="form.category_id" :options="categories" ></Select2>
           <!-- :settings="{placeholder:'Select Category'}" -->
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
                   category_id:0
               } 
            }
        },
        computed:{
            ...mapGetters({
                'categories':'getCategories'
            })
        },
        mounted(){
            // Get Categories 
            store.dispatch(actions.GET_CATEGORIES);
        }
    }
</script>

<style scoped>

</style>