
import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
Vue.use(Router)
export default new Router({
  routes: [
    {
      path: '/',
      name: 'HelloWorld',
      component: HelloWorld
    },
    {
      path: '/img',
      name: 'imagenes',
      component: () => import('../components/Imagenes.vue')
    },
    {
      path: '/report',
      name: 'reposte',
      component: () => import('../components/Reporte.vue')
    }
  ]
})
