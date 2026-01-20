<script setup lang="ts">
import { Music } from "@/models/music";
import VibzHitsTableLigne from "@/components/AccueilComponents/VibzHitsTableLigne.vue";


const props = defineProps<{ musics: Music[] }>();
</script>

<template>
  <tbody>
    <VibzHitsTableLigne v-for="(music, indexMusic) in props.musics" :key="music.getId()" :music="music" @click="$emit('LireMusicParIndex', indexMusic)"/>
  </tbody>
</template>