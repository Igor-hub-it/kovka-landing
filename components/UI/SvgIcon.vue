<template>
    <div class="">
        <svg v-if="name" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" v-bind="attrs">
          <use :href="computedHref"/>
        </svg>
    </div>
</template>
  
<script setup lang="ts">
import {computed} from 'vue'
  
const props = defineProps<{
name?: string
size?: number | string
width?: number | string
height?: number | string
activeColor?: string
}>()

console.log(props.activeColor)
  
const attrs = computed(() => {
    return {
        width: props.size || props.width || props.height,
        height: props.size || props.height || props.width,
        class: 'fill-current shrink-0',
        style: props.activeColor ? `fill: ${props.activeColor}` : 'fill: red'
    }
})

const computedHref = computed(() => `#icon-${props.name}`)
</script>