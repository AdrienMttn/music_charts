import { createRouter, createWebHistory } from "vue-router";
import accueil from "@/views/Accueil.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: "/",
      name: "Accueil",
      component: accueil,
    },
  ],
});

export default router;
