<script setup lang="ts">
import { useRouter } from 'vue-router';
import { onMounted, computed } from "vue";
import { UserStore } from "@/stores/user";
import UserServices from "@/Services/UserServices";
  
const router = useRouter();


const goToHome = () => {
  router.push('/');
};

const goToArtist = () => {
  router.push('/artist');
};

const userStore = UserStore();

onMounted(async () => {
  try {
    await userStore.initUser();
  } catch (err) {
    console.error("Failed to init user", err);
  }
});

const name = computed(() => {
  return userStore.isLogin ? "Profil" : "Connexion";
});

async function Redirection() {
  if (userStore.isLogin) {
    router.push('/profil');
  } else {
    router.push('/login');
  }
}
</script>

<template>
  <header class="w-full flex flex-col sm:flex-row justify-between items-center py-5 px-[5%] box-border text-white gap-[15px] sm:gap-0">
    
    <div class="vibz-logo">
      <button class="vibz-nom" @click="goToHome">Vibz</button>
    </div>

    <nav class="vibz-nav">
      <button>Favoris</button>
      <button @click="Redirection()">{{name}}</button>
      <button @click="goToArtist">Artiste</button>

    </nav>
  </header>
</template> 