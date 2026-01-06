<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
import VibzHeader from "./components/VibzHeader.vue";
import VibzFooter from "./components/VibzFooter.vue";
</script>

<template>
  <div id="app">
    <VibzHeader />
    
    <RouterView />
    <VibzFooter />
  </div>
</template>

