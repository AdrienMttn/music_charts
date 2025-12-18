<script setup lang="ts">
import VibzHeader from "@/components/VibzHeader.vue";
import VibzFooter from "@/components/VibzFooter.vue";
</script>

<template>
  <div class="vibz-container">
    <VibzHeader />

    <section class="vibz-title-section">
      <h1 class="vibz-title">VIBZ</h1>
    </section>

    <section class="vibz-hero">
      <img src="/src/assets/tyler-chromakopia.png" alt="Tyler" class="vibz-image-biais" />
    </section>
    
    <section class="vibz-sous-title-section">
      <h1 class="vibz-sous-title">Une sensation vibrante du meilleur titre du mois. Laissez-vous emporter par cette mélodie qui définisse la saison !</h1>
    </section>
    <VibzFooter />
  </div>
</template>

<style scoped>
/* STRUCTURE DE BASE */
.vibz-container {
  overflow-x: hidden; /* Évite le scroll horizontal dû à la rotation de l'image */
  width: 100%;
}

.vibz-title-section {
  display: flex;
  justify-content: center;
  margin-top: 40px;
}

.vibz-sous-title-section {
  display: flex;
  justify-content: left;
  margin-top: 40px;
}

.vibz-sous-title {
  font-size: clamp(1.2rem, 4vw, 2.5rem); 
  color: white;
  letter-spacing: clamp(2px, 1vw, 6px);
  text-align: left;
  font-weight: 500; /* Un peu moins gras que le titre pour le contraste */
  line-height: 1.2; /* Pour que les lignes ne soient pas trop collées si le texte est long */
}

.vibz-title {
  font-size: clamp(3rem, 15vw, 3rem); /* Taille fluide : min 3rem, max 6rem */
  font-weight: 100;
  color: white;
  letter-spacing: 6px;
  text-transform: uppercase;
  text-align: center;
}

.vibz-hero {
  display: flex;
  justify-content: center;
  padding: 40px 20px;
}

.vibz-image-biais {
  width: 100%;
  max-width: 350px; /* Taille max sur desktop */
  height: auto;
  transform: rotate(-10deg);
  border-radius: 12px;
  box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
}

/* --- RESPONSIVE --- */

/* Tablettes et Mobiles (Large) */
@media (max-width: 768px) {
  .vibz-title-section {
    margin-top: 30px;
  }
  
  .vibz-image-biais {
    max-width: 280px; /* On réduit l'image sur tablette */
    transform: rotate(-5deg); /* On réduit un peu l'angle pour gagner de la place */
  }
}

/* Petits Mobiles */
@media (max-width: 480px) {
  .vibz-title {
    letter-spacing: 3px; /* On réduit l'espacement pour éviter les coupures */
  }

  .vibz-image-biais {
    max-width: 220px; /* Image plus petite sur téléphone */
  }
  
  .vibz-hero {
    padding: 20px;
  }
  .vibz-sous-title {
    text-align: center; /* Souvent plus joli de centrer le texte sur mobile */
    letter-spacing: 2px;
  }
}
</style>

