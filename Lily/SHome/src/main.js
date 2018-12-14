/*import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//es6 引入模块
import Axios from 'axios';
//相当于 const axios=require("axios")
Vue.config.productionTip = false
Axios.defaults.widthCredentials=true;
Vue.prototype.axios=axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')*/


import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store' 
//ES6 引入模块
import axios from 'axios'
//相当于const axios=require("axios")

Vue.config.productionTip = false
axios.defaults.withCredentials=true;
Vue.prototype.axios=axios;
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')


