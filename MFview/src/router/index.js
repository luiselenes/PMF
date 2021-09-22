import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Imagenes from '@/Imagenes'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'App',
      component: App
    },
    {
      path : 'img',
      name:'Imagenes',
      component: Imagenes
    }
  ]
})
