<script setup lang="ts">
import { Music } from '@/models/music';
import MusicServices from '@/Services/MusicServices';
import { Album } from '@/models/album';
import { Artist } from '@/models/artist';
import { Ref, ref } from 'vue';

const listMusic: Ref<Music[]> = ref([]);
const indexMusic = ref(0);
const laMusic: Ref<Music | undefined> = ref(undefined);
const AudioLink = ref<any | undefined>(undefined);

// État du lecteur
const audioRef = ref<HTMLAudioElement | null>(null); // Référence à l'élément audio
const isPlaying = ref(false); // État de lecture
const currentTime = ref(0); // Temps actuel
const duration = ref(0); // Durée totale

// Récupération des données musicales
async function GetTop() {
  const data = await MusicServices.GetWeeklyTop("2026-01-05","PL4fGSI1pDJn7bK3y1Hx-qpHBqfr6cesNs");
  listMusic.value = data.Classement.map((UneMusic: any) => (
      new Music(
        UneMusic.id,
        UneMusic.titre,
        new Album(
          UneMusic.album.id,
          UneMusic.album.titreAlbum,
          UneMusic.album.CoverUrl,
          UneMusic.album.ReleaseYear,
          // Assuming artist data is available in UneMusic.album.artist
          new Artist(
            UneMusic.album.artist.id,
            UneMusic.album.artist.name,
            UneMusic.album.artist.imageUrl,
            UneMusic.album.artist.description
          )
        ),
        UneMusic.rang,
        UneMusic.rangPrecedent,        
      )
  ));
  GetMusic();
}
async function GetMusic(){
  laMusic.value = listMusic.value[indexMusic.value];
  GetAudio();
}
async function GetAudio() {

  AudioLink.value = await MusicServices.GetAudioUrl(laMusic.value?.getId() || '');
}
GetTop();
;
 

// Lecture/Pause
function togglePlay() { 
  if (!audioRef.value) return;
  
  if (isPlaying.value) {
    audioRef.value.pause();
  } else {
    audioRef.value.play();
  }
  isPlaying.value = !isPlaying.value;
}

// Mise à jour du temps
function onTimeUpdate() { 
  if (audioRef.value) {
    currentTime.value = audioRef.value.currentTime;
  }
}

// Mise à jour de la durée
function onLoadedMetadata() {
  if (audioRef.value) {
    duration.value = audioRef.value.duration;
  }
}

// Changer la position
function seek(e: Event) {
  const target = e.target as HTMLInputElement;
  const time = parseFloat(target.value);
  if (audioRef.value) {
    audioRef.value.currentTime = time;
    currentTime.value = time;
  }
}

// Avancer de 10 secondes
function forward() {
  if (audioRef.value) {
    audioRef.value.currentTime = Math.min(audioRef.value.currentTime + 10, duration.value);
  }
}

// Reculer de 10 secondes
function backward() {
  if (audioRef.value) {
    audioRef.value.currentTime = Math.max(audioRef.value.currentTime - 10, 0);
  }
}

// Piste suivante 
async function nextTrack() {
  indexMusic.value = (indexMusic.value + 1) % listMusic.value.length;
  await GetMusic();
}

// Piste précédente 
async function previousTrack() {
  indexMusic.value = (indexMusic.value - 1 + listMusic.value.length) % listMusic.value.length; // Pour gérer le cas où l'index devient négatif
  await GetMusic();
}

// Formater le temps
function formatTime(time: number): string {
  if (isNaN(time)) return '0:00';
  const mins = Math.floor(time / 60);
  const secs = Math.floor(time % 60);
  return `${mins}:${secs.toString().padStart(2, '0')}`;
}
</script>

<template>
  <div v-if="listMusic.length > 0 && AudioLink">
    <!-- Lecteur audio fixé en bas -->
    <div class="fixed bottom-0 left-0 right-0 bg-gray-800 shadow-2xl border-t border-gray-700 z-50">
      <div class="w-full px-6 py-4">
        <!-- Audio element caché -->
        <audio
          ref="audioRef"
          :src="AudioLink.Url"
          @timeupdate="onTimeUpdate"
          @loadedmetadata="onLoadedMetadata" 
          @ended="nextTrack"
          class="hidden"
          autoplay
        ></audio>

        <!-- Barre de progression -->
        <div class="mb-3">
          <input
            type="range"
            :min="0"
            :max="duration || 0"
            :value="currentTime"
            @input="seek"
            class="w-full h-1 bg-gray-600 rounded-lg appearance-none cursor-pointer accent-fuchsia-500"
          />
        </div>

        <!-- Contrôles et infos -->
        <div class="flex items-center justify-between gap-6">
          <!-- Image de la musique -->
          <div class="w-12 h-12 rounded-lg overflow-hidden"> 
            <img :src="laMusic.getAlbum().getCoverUrl()" alt="Image de la musique" class="w-full h-full object-cover" />
          </div>

          <!-- Titre de la musique -->
          <div class="flex-1 min-w-0">
            <p class="text-white font-semibold truncate">{{ laMusic.getTitle() }}</p>
            <p class="text-gray-400 text-sm">{{ formatTime(currentTime) }} / {{ formatTime(duration) }}</p>
            <p class="text-gray-400 text-sm truncate">{{ laMusic.getAlbum().getArtist().getName() }}</p>
          </div>       
          <!-- Boutons de contrôle -->
          <div class="flex items-center gap-3">
            <!-- Piste précédente -->
            <button
              @click="previousTrack"
              class="text-gray-400 hover:text-white transition p-1.5"
              title="Piste précédente"
            >
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M6 6h2v12H6zm3.5 6l8.5 6V6z" />
              </svg>
            </button>

            <!-- Reculer 10s -->
            <button
              @click="backward"
              class="text-gray-400 hover:text-white transition p-1.5"
              title="Reculer 10s"
            >
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M11.99 5V1l-5 5 5 5V7c3.31 0 6 2.69 6 6s-2.69 6-6 6-6-2.69-6-6h-2c0 4.42 3.58 8 8 8s8-3.58 8-8-3.58-8-8-8zm-1.1 11h-.85v-3.26l-1.01.31v-.69l1.77-.63h.09V16zm4.28-1.76c0 .32-.03.6-.1.82s-.17.42-.29.57-.28.26-.45.33-.37.1-.59.1-.41-.03-.59-.1-.33-.18-.46-.33-.23-.34-.3-.57-.11-.5-.11-.82v-.74c0-.32.03-.6.1-.82s.17-.42.29-.57.28-.26.45-.33.37-.1.59-.1.41.03.59.1.33.18.46.33.23.34.3.57.11.5.11.82v.74zm-.85-.86c0-.19-.01-.35-.04-.48s-.07-.23-.12-.31-.11-.14-.19-.17-.16-.05-.25-.05-.18.02-.25.05-.14.09-.19.17-.09.18-.12.31-.04.29-.04.48v.97c0 .19.01.35.04.48s.07.24.12.32.11.14.19.17.16.05.25.05.18-.02.25-.05.14-.09.19-.17.09-.19.11-.32.04-.29.04-.48v-.97z" />
              </svg>
            </button>

            <!-- Play/Pause -->
            <button
              @click="togglePlay"
              class="w-10 h-10 bg-fuchsia-500 hover:bg-fuchsia-600 rounded-full flex items-center justify-center text-white transition"
            >
              <svg v-if="audioRef && audioRef.paused" class="w-5 h-5 ml-0.5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M8 5v14l11-7z" />
              </svg>
              <svg v-else class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M6 4h4v16H6V4zm8 0h4v16h-4V4z" />
              </svg>
            </button>

            <!-- Avancer 10s -->
            <button
              @click="forward"
              class="text-gray-400 hover:text-white transition p-1.5"
              title="Avancer 10s"
            >
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M12 5V1l5 5-5 5V7c-3.31 0-6 2.69-6 6s2.69 6 6 6 6-2.69 6-6h2c0 4.42-3.58 8-8 8s-8-3.58-8-8 3.58-8 8-8zm-.63 11h-.85v-3.26l-1.01.31v-.69l1.77-.63h.09V16zm4.29-1.76c0 .32-.03.6-.1.82s-.17.42-.29.57-.28.26-.45.33-.37.1-.59.1-.41-.03-.59-.1-.33-.18-.46-.33-.23-.34-.3-.57-.11-.5-.11-.82v-.74c0-.32.03-.6.1-.82s.17-.42.29-.57.28-.26.45-.33.37-.1.59-.1.41.03.59.1.33.18.46.33.23.34.3.57.11.5.11.82v.74zm-.85-.86c0-.19-.01-.35-.04-.48s-.07-.23-.12-.31-.11-.14-.19-.17-.16-.05-.25-.05-.18.02-.25.05-.14.09-.19.17-.09.18-.12.31-.04.29-.04.48v.97c0 .19.01.35.04.48s.07.24.12.32.11.14.19.17.16.05.25.05.18-.02.25-.05.14-.09.19-.17.09-.19.11-.32.04-.29.04-.48v-.97z" />
              </svg>
            </button>

            <!-- Piste suivante -->
            <button
              @click="nextTrack"
              class="text-gray-400 hover:text-white transition p-1.5"
              title="Piste suivante"
            >
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24">
                <path d="M6 18l8.5-6L6 6v12zM16 6v12h2V6h-2z" />
              </svg>
            </button>
          </div>

          <!-- Espace vide pour équilibrer -->
          <div class="flex-1 min-w-0"></div>
        </div>
      </div>
    </div>
  </div>
</template>