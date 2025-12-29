import { createRouter, createWebHistory } from 'vue-router'
import artist from '@/views/artist.vue'
import login from '@/views/login.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/artist/:id',
      component: artist
    },
    {
      path: '/login',
      component: login
    }
  ],
})

export default router;
