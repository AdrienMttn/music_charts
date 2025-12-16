import { createRouter, createWebHistory } from "vue-router";
import Test from "../views/test.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {path: '/test', component: Test}
  ],
});

export default router;
