

require('./bootstrap');


import Vue from 'vue';

// window.Vue = require('vue');
Vue.component('example-component',require('./components/ExampleComponents.vue').default);
const app = new Vue({
    el:'#app',
});

