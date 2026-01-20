<script setup lang="ts">
import { useRouter } from "vue-router";
import { onMounted, computed } from "vue";
import { UserStore } from "@/stores/user";

const router = useRouter();

const goToHome = () => {
  router.push("/");
};

const goToArtist = () => {
  router.push("/artist");
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
    router.push("/profile");
  } else {
    router.push("/login");
  }
}
</script>

<template>
  <header
    class="w-full flex flex-col sm:flex-row justify-between items-center py-5 px-[5%] box-border text-white gap-[15px] sm:gap-0"
  >
    <div class="p-0 font-inherit">
      <button 
        class="bg-none border-none text-white text-[1.8rem] font-bold tracking-[3px] cursor-pointer transition-all duration-300 hover:text-[#FFD6F0]" 
        @click="goToHome"
      >
        Vibz
      </button>
    </div>

    <nav class="flex flex-row items-center justify-center w-full sm:w-auto gap-[20px] md:gap-[50px] lg:gap-[clamp(20px,10vw,150px)]">
      <button class="bg-none border-none text-white text-[0.9rem] sm:text-[1.8rem] font-semibold cursor-pointer transition-all duration-300 whitespace-nowrap hover:text-[#FFD6F0]">
        Favoris
      </button>
      <button 
        @click="Redirection()" 
        class="bg-none border-none text-white text-[0.9rem] sm:text-[1.8rem] font-semibold cursor-pointer transition-all duration-300 whitespace-nowrap hover:text-[#FFD6F0]"
      >
        {{ name }}
      </button>
      <button 
        @click="goToArtist" 
        class="bg-none border-none text-white text-[0.9rem] sm:text-[1.8rem] font-semibold cursor-pointer transition-all duration-300 whitespace-nowrap hover:text-[#FFD6F0]"
      >
        Artiste
      </button>
    </nav>
  </header>
</template>
