import { createRouter, createWebHistory } from 'vue-router'
import artist from '@/views/artist.vue'

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/artist/:id',
      component: artist
    }
  ],
})

export default router
