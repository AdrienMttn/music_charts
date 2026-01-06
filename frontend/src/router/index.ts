import { createRouter, createWebHistory } from 'vue-router';
import artist from '@/views/artist.vue';
import login from '@/views/login.vue';
import Registration from '@/views/registration.vue';
import Lecteur from '@/views/Lecteur.vue';

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
    },
    {
      path: '/registration',
      component: Registration
    },
    {
      path : '/lecteur',
      component : Lecteur
    }
  ],
})

export default router;
