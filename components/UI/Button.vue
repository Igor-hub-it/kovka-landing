<template>
    <div 
        class="h-6 w-fit px-10 py-5 flex justify-center items-center cursor-pointer rounded border border-red-600"
        :class="color === 'blue' ? 'text-red-600' : 'text-green-700'"
    >
        <p>{{  text  }}</p>
    </div>
</template>
  
<script setup lang="ts">

const props = defineProps<{
    color: 'blue' | 'gray',
    text: string,
}>()


</script>