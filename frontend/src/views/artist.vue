<script setup lang="ts">
import { useRoute } from 'vue-router'

const route = useRoute()
// On accède à la variable définie dans le path du router
const artistId = route.params.id

console.log('Artist ID from route:', artistId)






// dddd
import AlbumComponent from '@/components/ArtistComponents/AlbumComponents.vue'
import { Album as AlbumModel } from '@/models/album'

const imageUrl = 'https://lh3.googleusercontent.com/XouB33j0TSegjTSyqqQPp1IkyFcDD58jCN2WkNqI8p8Psktap1v4Q_gGzch5XZKBU9US4KynEFkCtQc=w2880-h1200-p-l90-rj'
const albumImageUrl = 'https://lh3.googleusercontent.com/XD2LrVCu9Y_EwxkKpkVFcXXbJa14w_Z_AFGOuJ5fY935mlAEsowjxAXA_9m5PDNEDTOOU3dZDVTBuEVq=w544-h544-l90-rj'
const albumImageUrl2 = 'https://lh3.googleusercontent.com/h_WsCpmm9cCXmmg6uNvvjd2tJrPdDJJR84D8YCKeFPGDnV4cApK8aVfqOm7je9Yk7Aicp0bxon-7oFcm=w544-h544-l90-rj'

// Crée des instances de la classe Album (match le constructeur: id, title, coverUrl, releaseYear, artistId)
const album = new AlbumModel('1', 'Ceinture Noire', albumImageUrl2, 2018, 'gims');
  
</script>

<template>
  <div class="bg-[#64067C]">

    <div :style="{ backgroundImage: `url(${imageUrl})` }" 
         class="h-screen bg-cover bg-center bg-no-repeat relative flex items-end justify-center overflow-hidden opacity-75 ">
      <div class="w-full bg-gradient-to-t from-black/70 to-transparent px-8 py-6 text-white text-center ">
        <h1 class="text-4xl md:text-6xl font-bold mb-4 p-10">GIMS</h1>
        <p class="text-xl max-w-4xl mx-auto leading-relaxed">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
      </div>
    </div>
    
    <div class="bg-[#64067C] p-8 ">
      <div class="bg-linear-to-t from-[#DF89D7B2] to-[#794B754D] p-8 rounded-3xl h-fit">
    <h1 class="text-3xl font-bold text-center mb-4 ">Albums</h1>
    
    <div class="w-4/5 mx-auto p-6 h-fit">
        <AlbumComponent :unAlbum="album"/>
    </div>
  </div>
    </div>
  </div>
</template>