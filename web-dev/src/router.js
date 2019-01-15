import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'home',
      component: () => import('./views/Home.vue')
    },
    {
      path: '/articleList',
      name: 'articleList',
      component: () => import('./views/article/ArticleList.vue')
    }
  ]
})
