import { createRouter, createWebHistory } from "vue-router";
import accueil from "@/views/Accueil.vue";
import artist from "@/views/artist.vue";
import login from "@/views/login.vue";
import Registration from "@/views/registration.vue";
import profile from "@/views/profile.vue";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    {
      path: "/",
      name: "Accueil",
      component: accueil,
    },
    {
      path: "/artist/:id",
      component: artist,
    },
    {
      path: "/login",
      component: login,
    },
    {
      path: "/registration",
      component: Registration,
    },
    {
    path: "/profile",
    component: profile,
    }
  ],
});

export default router;
