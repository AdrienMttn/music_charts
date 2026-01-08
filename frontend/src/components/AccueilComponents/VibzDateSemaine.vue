<script setup lang="ts">
    import { WeeklyTop } from "@/models/weeklytop";
    const props = defineProps<{ dateSemaine: WeeklyTop }>();
       
</script>

<template>
    <div class="relative w-full max-w-[300px]">
    <select 
      class="w-full appearance-none bg-white/5 border border-white/20 text-white py-3 px-4 pr-10 rounded-xl focus:outline-none focus:border-[#FFD6F0] focus:ring-1 focus:ring-[#FFD6F0] transition-all cursor-pointer backdrop-blur-md "
    >
      <option value="" class="bg-[#1a1a1a]">05 Jav. - 11 Jav. 2026 </option>
      <option value="" class="bg-[#1a1a1a]">22 Déc. - 28 Déc. 2025</option>
      <option value="" class="bg-[#1a1a1a]">15 Déc. - 21 Déc. 2025</option>
      <option value="" class="bg-[#1a1a1a]">08 Déc. - 14 Déc. 2025</option>
    </select>
    
  </div>
</template>
