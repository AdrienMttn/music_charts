<template>
  <div class="w-12 h-12 rounded-lg overflow-hidden">
    <div
      class="w-12 h-12 rounded-lg bg-linear-to-r from-gray-500 via-gray-400 to-gray-500 bg-size-[200%_100%] animate-shimmer"
    ></div>
  </div>

  <div class="flex-1 min-w-0">
    <div
      class="w-30 h-4 rounded-lg bg-linear-to-r from-gray-500 via-gray-400 to-gray-500 bg-size-[200%_100%] animate-shimmer"
    ></div>
    <div
      class="w-1/2 h-3 rounded-lg bg-linear-to-r from-gray-500 via-gray-400 to-gray-500 bg-size-[200%_100%] animate-shimmer mt-2"
    ></div>
    <div
      class="w-1/3 h-3 rounded-lg bg-linear-to-r from-gray-500 via-gray-400 to-gray-500 bg-size-[200%_100%] animate-shimmer mt-2"
    ></div>
  </div>
</template>

<style scoped>
@keyframes shimmer {
  0% {
    background-position: -200% 0;
  }
  100% {
    background-position: 200% 0;
  }
}

.animate-shimmer {
  animation: shimmer 2s ease-in-out infinite;
}
</style>
