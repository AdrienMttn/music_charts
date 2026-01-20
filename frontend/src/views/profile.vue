<script setup lang="ts">
import { UserStore } from "@/stores/user"; 

const userStore = UserStore();
</script>


<template>
  <div
    v-if="userStore.user"
    class="flex flex-col min-h-screen p-4 md:p-6 lg:p-8"
  >

    <!-- Carte Profil -->
    <div class="rounded-3xl bg-white/10 p-4 md:p-6">
      <!-- Haut -->
      <div class="flex gap-4 md:gap-6">

        <!-- Avatar → NOM -->
        <div
          class="flex h-20 w-20 md:h-24 md:w-24 items-center justify-center rounded-full bg-white/40 text-xs md:text-sm font-bold text-center px-2"
        >

        </div>

        <!-- Top music (inchangé) -->
        <div
          class="flex flex-1 items-center justify-center rounded-2xl bg-white/20 text-xs md:text-sm font-semibold"
        >
          TOP MUSIC FAV
        </div>
      </div>

      <!-- Description -->
      <div
        class="mt-4 inline-block rounded-full bg-white/20 px-6 py-2 font-semibold text-sm md:text-base"
      >
        {{ userStore.user.getDescription() || "Aucune description" }}
      </div>
    </div>

    <!-- Icônes SOUS la carte -->
    <div class="mt-5 flex justify-around">
      <!-- Username -->
      <div class="h-20 w-20 rounded-full bg-white/20 flex items-center justify-center text-center text-xs font-bold px-2">
        {{ userStore.user.getUsername() }}
      </div>

      <!-- Nb musiques écoutées -->
      <div class="h-20 w-20 rounded-full bg-white/20 flex items-center justify-center font-bold">
        🎵 {{ userStore.user.getNbMusicListen() }}
      </div>

      <!-- Likes (pas encore branché) -->
      <div class="h-20 w-20 rounded-full bg-white/20 flex items-center justify-center">
        ❤
      </div>
    </div>

    <!-- Titre de la section -->
    <h3 class="mt-8 mb-4 text-xl md:text-2xl font-bold text-center">
      MES TITRES / AVIS
    </h3>

    <!-- Carte principale Playlists -->
    <div
      class="flex-1 min-h-0 mt-6 rounded-3xl bg-gradient-to-b from-purple-600/70 to-purple-900 p-4 flex gap-4"
    >
      
      <!-- Bloc Titre à gauche -->
      <div
        class="flex-1 rounded-4xl bg-purple-500/70 p-4 text-white font-bold flex items-center justify-center"
      >
        TITRE
      </div>

      <!-- Bloc Avis à droite -->
      <div
        class="flex-1 rounded-4xl bg-purple-500/70 p-4 text-white font-bold flex items-center justify-center"
      >
        AVIS
      </div>

    </div>
  </div>
</template>