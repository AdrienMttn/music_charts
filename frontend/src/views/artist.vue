<script setup lang="ts">
import { useRoute } from 'vue-router'
import { ref, type Ref } from 'vue'
import { Artist } from '@/models/artist'
import MusicServices from '@/Services/MusicServices'
import { Album } from '@/models/album'
import AlbumComponent from '@/components/ArtistComponents/AlbumComponents.vue'

const route = useRoute()
// On accède à la variable définie dans le path du router


const artist: Ref<Artist|null> = ref(null)

async function InitArtist()
{
    if(route.params.id){
        const res = await MusicServices.GetArtist(route.params.id);
        artist.value = new Artist(res.artist.id, res.artist.name, res.artist.imageUrl, res.artist.description );
        res.artist.Albums.forEach((unAlbum :any) => {
            artist.value?.addAlbum(new Album(unAlbum.id, unAlbum.titreAlbum, unAlbum.CoverUrl, unAlbum.RealeaseYear,res.artist.id ));
        });

    }
    
}

InitArtist()
</script>

<template>
  <div class="bg-[#64067C]">

    <div :style="{ backgroundImage: `url(${artist?.getImageUrl()})` }" 
         class="h-screen bg-cover bg-center bg-no-repeat relative flex items-end justify-center overflow-hidden opacity-75 ">
      <div class="w-full bg-gradient-to-t from-black/70 to-transparent px-8 py-6 text-white text-center ">
        <h1 class="text-4xl md:text-6xl font-bold mb-4 p-10">{{artist?.getName()}}</h1>
        <p class="text-xl max-w-4xl mx-auto leading-relaxed">{{ artist?.getDescription() }}</p>
      </div>
    </div>
    
    <div class="bg-[#64067C] p-8 ">
      <div class="bg-linear-to-t from-[#DF89D7B2] to-[#794B754D] p-8 rounded-3xl h-fit">
    <h1 class="text-3xl font-bold text-center mb-4 ">Albums</h1>
    
    <div class="w-4/5 mx-auto p-6 h-fit ">
      <div v-for="album in artist?.getAlbums()" :key="album.getId()" class="mb-6">
        <AlbumComponent :unAlbum="album"/>
      </div>
    </div>
  </div>
    </div>
  </div>
</template>