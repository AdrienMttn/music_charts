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
  <div class="vibz-hero-flex">
    <div class="vibz-content-column">
      <section class="vibz-sous-title-section-hero">
        <h1 class="vibz-sous-title">
          Une sensation vibrante du meilleur titre du mois. <br />
          Laissez-vous emporter par cette mélodie qui définisse la saison !
        </h1>
      </section>
      
      <div class="vibz-buttons-hero">
        <button class="btn-styled" @click="$emit('LireMusic')" >Lecture</button>
        <button class="btn-styled" @click="Redirection">{{name}}</button>
      </div>
    </div>

    <div class="flex-[0.8] flex justify-center items-center w-full">
      <img 
        :src="props.music.getAlbum().getCoverUrl()"
        alt="Artiste Image" 
        class="grayscale w-full rounded-[12px] shadow-[0_20px_40px_rgba(0,0,0,0.3)] transform rotate-[-10deg] max-[1024px]:rotate-[-5deg] "
      />
    </div>
  </div>
</template>

<style scoped>
.vibz-hero-flex {
  display: flex;
  align-items: center;
  justify-content: space-between;
  margin: 40px 8% 0 10%;
  gap: 40px;
}

.vibz-content-column {
  flex: 1.2;
  display: flex;
  flex-direction: column;
  gap: 30px;
}

.vibz-sous-title {
  font-size: clamp(1.2rem, 3.5vw, 2.5rem);
  text-align: left;
  font-weight: 500;
  line-height: 1.2;
  color: white;
}

.vibz-buttons-hero {
  display: flex;
  gap: 20px;
}

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
/* RESPONSIVE : Mode Vertical */
@media (max-width: 1024px) {
  .vibz-hero-flex {
    flex-direction: column-reverse;
    text-align: center;
    margin: 20px 5%;
  }
  .vibz-sous-title { text-align: center; }
  .vibz-buttons-hero { justify-content: center; }
}
</style>