
<script setup lang="ts">
    import { WeeklyTop } from "@/models/weeklytop";
    import { ref, type Ref } from "vue";
    const props = defineProps<{ dateSemaine: WeeklyTop }>();
    const selectBox: Ref<HTMLSelectElement|null> = ref(null);
    // On déclare l'événement que le composant peut envoyer
    const emit = defineEmits(['changeWeek']);

</script>

<template>
  <div class="relative w-full max-w-[300px]">
    
    <select
      ref="selectBox"
      @change="emit('changeWeek', (selectBox.value))"
      class="w-full appearance-none bg-white/5 border border-white/20 text-white py-3 px-4 pr-10 rounded-xl focus:outline-none focus:border-[#FFD6F0] focus:ring-1 focus:ring-[#FFD6F0] transition-all cursor-pointer backdrop-blur-md"
    >
      <option 
        :value="dateSemaine.getDate()" 
        class="bg-[#1a0b2e]" 
        selected
      >
        {{ new Date(dateSemaine.getDate()).toLocaleDateString('fr-FR', { day: '2-digit', month: 'short' }) }} - 
        {{ new Date(new Date(dateSemaine.getDate()).getTime() + 6 * 24 * 60 * 60 * 1000).toLocaleDateString('fr-FR', { day: '2-digit', month: 'short', year: 'numeric' }) }}  
      </option>
      <option value="2026-01-12" class="bg-[#1a0b2e]">12 Janv. - 18 Janv. 2026</option>
      <option value="2026-01-05" class="bg-[#1a0b2e]">05 Janv. - 11 Janv. 2026</option>
      <option value="2026-01-05" class="bg-[#1a0b2e]">05 Janv. - 11 Janv. 2026</option>
      <option value="2025-12-22" class="bg-[#1a0b2e]">22 Déc. - 28 Déc. 2025</option>
      <option value="2025-12-08" class="bg-[#1a0b2e]">08 Déc. - 14 Déc. 2025</option>
    </select>
  </div>
</template>
