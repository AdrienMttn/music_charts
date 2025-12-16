<script setup lang="ts">
import { Music } from '@/models/music';
import MusicServices from '@/Services/MusicServices';
import { ref } from 'vue'; 
const laMusic = new Music("_ekNixoAiAM","Bolide allemand","MPREb_UhI8E0HJjgi");
const Musicid = laMusic.getId();
const AudioLink = ref<string>("");
async function GetAudio(){
    AudioLink.value = await MusicServices.GetAudioUrl(Musicid);
}
GetAudio();
console.log(AudioLink.value);
</script>

<template>
  <h1 class="text-center text-2xl font-bold">MON LECTEUR AUDIO</h1>
    <div class="flex justify-center mt-4">
        <audio :src="AudioLink" controls class="w-75 bg-fuchsia-400 border"></audio> <!-- src audio -->
    </div>
</template>
