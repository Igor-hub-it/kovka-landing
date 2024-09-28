<template>
    <div class="h-auto w-3/4 py-20 flex flex-col justify-center gap-3 border border-red-700">
        <p class="text-5xl font-medium">Почему выбирают нас</p>
        <div class="mt-5 grid grid-cols-2">
            <div class="flex gap-2">
                <p class="text-7xl font-bold">1</p>
                <div class="">
                    <p class="text-2xl">Работаем<br> без посредников</p>
                    <p class="text-base">Собственное производство<br> позволяет сохранять<br> минимальные цены</p>
                </div>
            </div>
            <div class="flex gap-2">
                <p class="text-7xl font-bold">2</p>
                <div class="">
                    <p class="text-2xl">Индивидуальный<br> подход</p>
                    <p class="text-base">Собственное производство<br> позволяет сохранять<br> минимальные цены</p>
                </div>
            </div>
            <div class="flex gap-2">
                <p class="text-7xl font-bold">3</p>
                <div class="">
                    <p class="text-2xl">Поможем<br> с выбором</p>
                    <p class="text-base">Собственное производство<br> позволяет сохранять<br> минимальные цены</p>
                </div>
            </div>
            <div class="flex gap-2">
                <p class="text-7xl font-bold">4</p>
                <div class="">
                    <p class="text-2xl">Отправка<br> по России</p>
                    <p class="text-base">Собственное производство<br> позволяет сохранять<br> минимальные цены</p>
                </div>
            </div>
        </div>
        <Button color="blue" text="Позвонить" />
    </div>
</template>

<script setup lang="ts">
import Button from '~/components/UI/Button.vue';


</script>