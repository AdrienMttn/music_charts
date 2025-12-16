<script setup lang="ts">
import { RouterLink, RouterView } from "vue-router";
</script>

<template>
  <RouterLink to="/test" class="underline decoration-blue-500">
    allez à Test Audio</RouterLink>
    <br>
  </br>
  <RouterLink to="/">allez à Home</RouterLink>
  <br>
  <RouterView />
</template>

<style scoped></style>
