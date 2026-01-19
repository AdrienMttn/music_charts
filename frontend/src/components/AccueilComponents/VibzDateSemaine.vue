<script setup lang="ts">
import { WeeklyTop } from "@/models/weeklytop";
import { ref, onMounted } from "vue";


const props = defineProps<{ weeklyTop: WeeklyTop, availableDates: any[] }>();
const emit = defineEmits(['changeWeek']);
const isOpen = ref(false);

// met en forme une date "YYYY-MM-DD" en format "DD Month YYYY" en français
const PremierDate = (dateStr: string) => {
    if (!dateStr) return "";
    const date = new Date(dateStr);
    return date.toLocaleDateString('fr-FR', { 
        day: '2-digit', 
        month: 'long', 
        year: 'numeric' 
    });
};;

// Fonction déclenchée quand on choisit une date dans la liste
const selectDate = (date: string) => {
    emit('changeWeek', date);
    isOpen.value = false;
};
</script>

<template>
  <div class="relative w-full max-w-[300px]">
    <div 
      @click="isOpen =! isOpen"
      class="w-full flex items-center justify-between bg-white/10 border border-white/20 text-white py-2.5 px-6 rounded-full cursor-pointer backdrop-blur-md hover:bg-white/20 transition-all select-none"
    >
      <span class="text-sm font-medium">
        Semaine du {{ PremierDate(props.weeklyTop.getWeekDate()) }}
      </span>
      <svg 
        class="h-4 w-4 text-[#FFD6F0] transition-transform duration-300" 
        :class="isOpen ? 'rotate-180' : ''" 
        viewBox="0 0 20 20" fill="currentColor"
      >
        <path d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" />
      </svg>
    </div>

    <div 
      v-if="isOpen"
      class="absolute z-50 w-full mt-2 bg-[#e91e63] border border-white/20 rounded-[24px] shadow-2xl overflow-hidden animate-in fade-in zoom-in duration-150"
    >
      <div class=" max-h-60 md:overflow-y-auto [&::-webkit-scrollbar]:w-2 [&::-webkit-scrollbar-thumb]:bg-white/20 [&::-webkit-scrollbar-thumb]:rounded-full">
        <div 
          v-for="item in availableDates"
          :key="item.dateSemaine"
          @click="selectDate(item.dateSemaine)"
          class="px-6 py-2.5 text-white hover:bg-white/10 cursor-pointer transition-colors duration-200"
        >
          Semaine du {{ PremierDate(item.dateSemaine) }}
        </div>
      </div>
    </div>

    <div 
      v-if="isOpen" @click="isOpen = false" class="fixed inset-0 z-40"></div>
  </div>
</template>


