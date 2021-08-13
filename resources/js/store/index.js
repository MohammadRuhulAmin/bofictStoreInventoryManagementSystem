import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

// Modules 

import categories from './modules/categories';
import brands from './modules/brands';
import sizes from './modules/sizes';
import products from './modules/products';
import errors from './modules/utils/errors';
import stocks from './modules/stocks';
export default new Vuex.Store({
    modules:{
        categories,
        brands,
        sizes,
        products,
        errors, 
        stocks,
    }
});