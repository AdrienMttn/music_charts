<script setup lang="ts">
import { RouterView } from "vue-router";
import VibzHeader from "./components/VibzHeader.vue";
import VibzFooter from "./components/VibzFooter.vue";
console.log(import.meta.env.INVIDIOUS);
</script>

<template>
  <div id="app">
    <VibzHeader />

    <RouterView />
    <VibzFooter />
  </div>
</template>

<style scoped></style>
