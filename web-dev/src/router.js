import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
  routes: [
    { 
      path: '*',
      component: () => import('./views/Home.vue')
    },
    {
      path: '/', // 首页
      name: 'home',
      component: () => import('./views/Home.vue')
    },
    {
      path: '/articleList', // 文章列表页面
      name: 'articleList',
      component: () => import('./views/article/ArticleList.vue')
    },
    {
      path: '/articleDetail', // 文章详情页面
      name: 'articleDetail',
      component: () => import('./views/article/ArticleDetail.vue')
    },
    {
      path: '/funny', // 好玩的东西
      name: 'funny',
      component: () => import('./views/funny/Funny.vue'),
      redirect: '/funny/index',
      children: [
        {
          path: 'index', // funny首页
          name: 'index',
          component: () => import('./views/funny/items/Index.vue')
        },
        {
          path: 'bubble', // 冒泡
          name: 'bubble',
          component: () => import('./views/funny/items/Bubble.vue')
        },
        {
          path: 'snake', // 贪吃蛇
          name: 'snake',
          component: () => import('./views/funny/items/Snake.vue')
        }
      ]
    }
  ]
})
