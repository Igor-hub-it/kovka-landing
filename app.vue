<template>
  <div>
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script setup lang="ts">
import { useHead } from '#imports'

useHead({
  link: [
    { rel: 'icon', type: 'image/png', href: '/logo.png' }
  ]
})
</script>

