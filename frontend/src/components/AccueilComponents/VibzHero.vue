<script setup lang="ts">
import { Music } from "@/models/music";


const props = defineProps<{ music: Music }>();
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
        <button class="btn-styled">▶ Lecture</button>
        <router-link to="/login" class="btn-styled no-underline flex items-center justify-center"> Connexion </router-link>
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

<style scoped>
/* On garde exactement ton style de bouton complexe ici pour ne pas le dénaturer */
.btn-styled {
  padding: 14px 32px;
  min-width: 160px;
  border-radius: 50px;
  font-family: 'Montserrat', sans-serif;
  font-weight: 700;
  font-size: 0.9rem;
  text-transform: uppercase;
  background: rgba(255, 255, 255, 0.1); 
  color: white;
  border: 1px solid rgba(255, 255, 255, 0.4);
  backdrop-filter: blur(10px);
  cursor: pointer;
  transition: all 0.3s ease;
}

.btn-styled:hover {
  background: white;
  color: #64067C;
  transform: translateY(-3px);
}
</style>