<template>

    <div class="flex flex-col items-center ">
        <FirstBlock />
        <SecondBlock />
        <ThirdBlock />
        <FourthBlock />
    </div>
</template>

<script setup lang="ts">
import FirstBlock from '~/components/FirstBlock.vue';

definePageMeta({
    layout: "main",
})

</script>