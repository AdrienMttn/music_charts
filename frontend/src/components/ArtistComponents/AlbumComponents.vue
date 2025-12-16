<script setup lang="ts">
import { Album } from '@/models/album';
const props = defineProps<{unAlbum: Album}>();
</script>

<template>
  <div class="flex items-center gap-4 bg-blue">
    <img 
      :src="unAlbum?.getCoverUrl()" 
      class="w-24 h-24 rounded-lg object-cover"
    />
    <p class="text-lg font-semibold">{{ unAlbum?.getTitle() }}</p>
    <p class="text-lg font-semibold">{{ unAlbum?.getReleaseYear() }}</p>
  </div>
</template>