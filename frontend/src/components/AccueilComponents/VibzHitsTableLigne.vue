<script setup lang="ts">
import { Music } from "@/models/music";

const props = defineProps<{ music: Music }>();
</script>

<template>
<tr>
      <td class="px-5 py-3 text-white font-black text-lg">
        <div class="flex items-center gap-2">
          <span class="min-w-[25px]">{{ props.music.getRank() }}</span>
          
          <span v-if="props.music.getPreviousRank() > props.music.getRank() && props.music.getPreviousRank() !== 0" 
                class="text-[#00ff88] font-bold text-sm">
            ▲
          </span>
          
          <span v-else-if="props.music.getPreviousRank() < props.music.getRank() && props.music.getPreviousRank() !== 0" 
                class="text-[#ff3333] font-bold text-sm">
            ▼
          </span>

          <span v-else-if="props.music.getPreviousRank() === 0" 
                class="text-blue-400 text-[10px] font-bold tracking-tighter">
            NEW
          </span>

          <span v-else 
                class="w-2.5 h-2.5 bg-white rounded-full ml-1">
          </span>
        </div>
      </td>

      <td class="px-5 py-3">
        <img 
          :src="props.music.getAlbum().getCoverUrl()" 
          class="w-[50px] h-[50px] rounded-[6px] object-cover shadow-lg" 
          alt="Cover"
        />
      </td>

      <td class="px-5 py-3 text-white font-bold">{{ props.music.getTitle() }}</td>
      <td class="px-5 py-3 text-white/80">{{ props.music.getAlbum().getArtist().getName() }}</td>
      <td class="px-5 py-3 text-white/60">{{ props.music.getAlbum().getTitle() }}</td>
      <td class="px-5 py-3 text-white/40 italic text-sm">{{ props.music.getAlbum().getReleaseYear() }}</td>
    </tr>
</template>