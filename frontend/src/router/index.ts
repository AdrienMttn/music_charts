import { createRouter, createWebHistory } from 'vue-router'
import artist from '@/views/artist.vue'
import Registration from '@/views/registration.vue';

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: '/artist/:id',
      component: artist
    },
    {
      path: '/registration',
      component: Registration
    }
  ],
})

export default router;
