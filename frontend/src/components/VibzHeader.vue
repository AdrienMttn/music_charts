<template>
  <header class="w-full flex flex-col sm:flex-row justify-between items-center py-5 px-[5%] box-border text-white gap-[15px] sm:gap-0">
    
    <div class="vibz-logo">
      <router-link 
        to="/" 
        class="text-[1.8rem] font-bold tracking-[3px] no-underline text-white transition-all duration-300 hover:opacity-80"
      >
        Vibz
      </router-link>
    </div>

    <nav class="flex items-center justify-center sm:justify-end gap-[20px] lg:gap-[50px] xl:gap-[clamp(20px,10vw,150px)]">
      
      <router-link 
        to="/favoris" 
        class="no-underline text-white text-[0.9rem] sm:text-[1.8rem] font-semibold whitespace-nowrap transition-colors duration-300 hover:text-[#FFD6F0] [&.router-link-active]:text-[#FFD6F0]"
      >
        Favoris
      </router-link>
      
      <router-link 
        to="/profil" 
        class="no-underline text-white text-[0.9rem] sm:text-[1.8rem] font-semibold whitespace-nowrap transition-colors duration-300 hover:text-[#FFD6F0] [&.router-link-active]:text-[#FFD6F0]"
      >
        Profil
      </router-link>
      
      <router-link 
        to="/artist" 
        class="no-underline text-white text-[0.9rem] sm:text-[1.8rem] font-semibold whitespace-nowrap transition-colors duration-300 hover:text-[#FFD6F0] [&.router-link-active]:text-[#FFD6F0]">
        Artiste
      </router-link>

    </nav>
  </header>
</template> 