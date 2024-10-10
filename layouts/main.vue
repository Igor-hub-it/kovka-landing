<template>
  <div class="">
    <HeaderVue/>
        <slot/>
    <FooterVue/>
  </div>
</template>

<script setup lang="ts">
import FooterVue from "~/components/Footer.vue";
import HeaderVue from "~/components/Header.vue";


</script>