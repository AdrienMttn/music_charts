<script setup lang="ts">
import { Artist } from '@/models/artist';
import router from '@/router';
const props = defineProps<{unArtist: Artist}>();

</script>

<template>
    <div class="bg-base-100 w-96 shadow-lg border border-gray-300 rounded-xl m-4 flex flex-col hover:shadow-xl transition-shadow duration-300">
  <figure>
    <img
        class="w-full rounded-t-xl object-cover"
      :src="unArtist.getImageUrl()"
    />
  </figure>
  <div class="flex flex-col flex-grow">
    <h2 class="flex justify-center font-bold text-xl p-2">{{ unArtist.getName() }}</h2>
    <p class="font-bold line-clamp-7 px-2">{{ unArtist.getDescription() || 'Aucune Description' }}</p>
    <div class="flex justify-center mt-auto pb-4">
      <button @click="router.push('/artist/' + unArtist.getId())" class="btn btn-primary bg-transparent border rounded-lg p-2 pl-6 pr-6 transition-all duration-300 hover:bg-white hover:text-[#64067C] hover:-translate-y-1">voir</button>
    </div>
  </div>
</div>

</template>
