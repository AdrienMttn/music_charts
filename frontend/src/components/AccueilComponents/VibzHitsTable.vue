<script setup lang="ts">
import { Music } from "@/models/music";
import VibzHitsTableLigne from "@/components/AccueilComponents/VibzHitsTableLigne.vue";

const props = defineProps<{ musics: Music[] }>();
</script>

<template>
  <tbody>
    <VibzHitsTableLigne v-for="music in props.musics" :key="music.getId()" :music="music" />
  </tbody>
</template>