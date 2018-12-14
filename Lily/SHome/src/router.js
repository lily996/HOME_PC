import Vue from 'vue'
import Router from 'vue-router'
import Home from './views/Home.vue'
import Index from './views/Index'
import Details from './views/Details'
import Products from './views/Products'
import Register from './views/Register'
import Login from './views/Login'
import Cart from './views/Cart'
import NotFound from './views/NotFound'

//ES6

Vue.use(Router)

export default new Router({
 // mode: 'history',
  base: process.env.BASE_URL,
  routes: [
    { path: '/', component: Home, children:[
        { path:"/", component: Index },
        { path:"/index",component: Index },
        { path:"/details/:lid", component: Details,props:true },
        { path:"/products", component: Products },
        { path:"/register", component: Register } ,
        { path:"/login/:back",name:"login" ,component: Login,props:true },
        { path:"/cart",name:'cart',component:Cart}
    ]},
    
  
    { path: '/*', component:NotFound }
  ]
})
