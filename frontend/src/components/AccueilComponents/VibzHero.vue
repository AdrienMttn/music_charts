<script setup lang="ts">
import { Music } from "@/models/music";
import { useRouter } from "vue-router";
import { UserStore } from "@/stores/user";
import { onMounted, computed } from "vue";


const props = defineProps<{ music: Music }>();
const userStore = UserStore();
const router = useRouter();

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
  <div class="flex flex-col-reverse lg:flex-row items-center justify-between mt-10 lg:mt-10 mx-[5%] lg:ml-[10%] lg:mr-[8%] gap-10">
    
    <div class="flex-[1.2] flex flex-col gap-[30px] w-full">
      
      <section>
        <h1 class="text-white font-medium leading-[1.2] text-left lg:text-left max-lg:text-center text-[clamp(1.2rem,3.5vw,2.5rem)]">
          Une sensation vibrante du meilleur titre de la semaine. <br />
          Laissez-vous emporter par cette mélodie qui définisse la saison !
        </h1>
      </section>
      
  <div class="flex gap-5 justify-center-safe">
    <button 
      @click="$emit('LireMusic')" 
      class="py-[14px] px-[32px] min-w-[160px] rounded-[50px] font-['Montserrat',sans-serif] font-bold text-[0.9rem] uppercase bg-[rgba(255,255,255,0.1)] text-white border border-[rgba(255,255,255,0.4)] backdrop-blur-[10px] cursor-pointer transition-all duration-300 ease-out hover:bg-white hover:text-[#64067C] hover:-translate-y-[3px]"
    >
      Lecture
    </button>

    <button 
      @click="Redirection" 
      class="py-[14px] px-[32px] min-w-[160px] rounded-[50px] font-['Montserrat',sans-serif] font-bold text-[0.9rem] uppercase bg-[rgba(255,255,255,0.1)] text-white border border-[rgba(255,255,255,0.4)] backdrop-blur-[10px] cursor-pointer transition-all duration-300 ease-out hover:bg-white hover:text-[#64067C] hover:-translate-y-[3px]"
    >
      {{name}}
    </button>
  </div>
  
    </div>

    <div class="flex-[0.8] flex justify-center items-center w-full">
      <img 
        :src="props.music.getAlbum().getCoverUrl()"
        alt="Artiste Image" 
        class="grayscale w-full rounded-[12px] shadow-[0_20px_40px_rgba(0,0,0,0.3)] transform rotate-[-5deg] lg:rotate-[-10deg] -translate-y-5 lg:-translate-y-20"
      />
    </div>
  </div>
</template>