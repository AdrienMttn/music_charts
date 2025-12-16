<script setup lang="ts">
import VibzHeader from "@/components/VibzHeader.vue";
import VibzFooter from "@/components/VibzFooter.vue";
</script>

<template>
  <VibzHeader />

  <!-- GROS VIBZ CENTRÉ -->
  <section class="vibz-title-section">
    <h1 class="vibz-title">VIBZ</h1>
  </section>

  <!-- IMAGE EN BIAIS -->
  <section class="vibz-hero">
    <img src="/src/assets/tyler-chromakopia.png" alt="Tyler" class="vibz-image-biais" />
  </section>

  <VibzFooter />
</template>

<style scoped>
/* SECTION DU TITRE */
.vibz-title-section {
  display: flex;
  justify-content: center;
  margin-top: 60px;
}

.vibz-title {
  font-size: 6rem;
  font-weight: 900;
  color: white;
  letter-spacing: 6px;
  text-transform: uppercase;
}

/* SECTION DE L'IMAGE */
.vibz-hero {
  display: flex;
  justify-content: center;
  padding: 60px 20px;
}

.vibz-image-biais {
  width: 350px;
  height: auto;
  transform: rotate(-10deg); /* inclinaison */
  border-radius: 12px;
  box-shadow: 0 0 20px rgba(255, 255, 255, 0.2);
}
</style>

