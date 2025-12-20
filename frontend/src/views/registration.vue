<script setup lang="ts">
import { ref, type Ref } from 'vue'
import { useRoute } from "vue-router";

const route = useRoute()
</script>

<template>
  <div class="relative min-h-screen w-full bg-gradient-to-b from-[#850451] from-40% to-[#64067C] flex items-center justify-center">
    
    <button @click="$router?.back()" class="absolute top-6 left-6 flex items-center gap-2 text-white hover:opacity-80 transition-opacity">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
        <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 19.5L3 12m0 0l7.5-7.5M3 12h18" />
      </svg>
      <span class="text-xl font-semibold">Retour</span>
    </button>

    <div class="bg-white rounded-2xl shadow-2xl p-6 pt-2 size-auto w-fit">
      <p class="text-gray-800 font-medium flex justify-center">Inscription</p>
      <p class="text-gray-800 flex justify-start">Email :</p>
        <input type="text" name="email" class=" bg-gray-300 rounded-md p-1 w-11/12 mb-4" />
      <p class="text-gray-800 flex justify-start">Nom d'utilisateur :</p>
        <input type="text" name="username" class=" bg-gray-300 rounded-md p-1 w-11/12 mb-4" />
      <p class="text-gray-800 flex justify-start">Mot de passe :</p>
        <input type="password" name="password" class=" bg-gray-300 rounded-md p-1 w-11/12 mb-4" />
      <p class="text-gray-800 flex justify-start">Confirmer le mot de passe :</p>
        <input type="password" name="confirm_password" class=" bg-gray-300 rounded-md p-1 w-11/12 mb-4" />
        <div class="flex justify-center mt-4">
          <button class="bg-[#64067C] text-white rounded-md px-4 py-2 hover:bg-[#850451] transition-colors">S'inscrire</button>
        </div>
    </div>
    

  </div>
</template>
