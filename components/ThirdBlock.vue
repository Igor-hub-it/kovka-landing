<template>
    <div 
        id="catalog" 
        class="h-auto w-full py-10 lg:py-20 flex flex-col justify-center items-center gap-3" 
        :style="{ 
            backgroundImage: `url(${backgroundImg})`,
            backgroundSize: 'cover', 
            backgroundRepeat: 'no-repeat', 
            backgroundPosition: 'center' 
        }"
    >
        <div class="w-4/5 lg:w-3/5 flex flex-col justify-center gap-6 lg:gap-10">
            <p class="text-3xl lg:text-5xl font-medium text-white">Наше производство и готовые изделия</p>

            <div class="grid grid-cols-1 lg:grid-cols-2 gap-5 lg:gap-8">
                <!-- Блок 1: Изготавливаемые элементы -->
                <div class="p-5 rounded-2xl border-[3px] border-[#FF9000] bg-black/30 text-white flex flex-col gap-4 h-full">
                    <p class="text-2xl lg:text-3xl font-medium">Изготавливаемые элементы</p>
                    <ul class="list-disc list-inside space-y-1 text-base lg:text-lg">
                        <li>Бублики</li>
                        <li>Волюты</li>
                        <li>Завитки</li>
                        <li>Запятые</li>
                    </ul>
                    <div class="flex flex-wrap items-center gap-3 lg:gap-4 mt-auto w-full overflow-visible">
                        <img :src="el1" alt="Элемент 1" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(el1)">
                        <img :src="el2" alt="Элемент 2" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(el2)">
                        <img :src="el3" alt="Элемент 3" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(el3)">
                    </div>
                </div>

                <!-- Блок 2: Готовые изделия -->
                <div class="p-5 rounded-2xl border-[3px] border-[#FF9000] bg-black/30 text-white flex flex-col gap-4 h-full">
                    
                    <p class="text-2xl lg:text-3xl font-medium">Готовые изделия</p>
                    <ul class="list-disc list-inside space-y-1 text-base lg:text-lg">
                        <li>Балясины</li>
                        <li>Уголки</li>
                        <li>Садовая мебель</li>
                        <li>Декор</li>
                    </ul>
                    <div class="flex flex-wrap items-center gap-3 lg:gap-4 mt-auto w-full overflow-visible">
                        <img :src="product1" alt="Готовое изделие 1" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(product1)">
                        <img :src="product2" alt="Готовое изделие 2" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(product2)">
                        <img :src="product3" alt="Готовое изделие 3" class="w-24 h-24 max-w-full max-h-full flex-shrink-0 object-contain rounded-lg bg-white/10 p-2 cursor-pointer hover:opacity-90 hover:shadow-lg hover:outline hover:outline-2 hover:outline-[#FF9000] transition" @click="openModal(product3)">
                    </div>
                </div>
            </div>
            
            <!-- Modal viewer -->
            <div v-if="isModalOpen" class="fixed inset-0 z-50 bg-black/70 flex items-center justify-center p-4" @click="closeModal">
                <div class="max-w-[90vw] max-h-[85vh]" @click.stop>
                    <img v-if="modalSrc" :src="modalSrc" alt="Просмотр изображения" class="max-w-full max-h-[85vh] rounded-lg shadow-2xl">
                </div>
            </div>
        </div>
    </div>
    </template>

<script setup lang="ts">
import { ref, onMounted, onBeforeUnmount } from 'vue'
import backgroundImg from '@/assets/img/background3.webp';
import el1 from '@/assets/img/el_1.webp'
import el2 from '@/assets/img/el_2.webp'
import el3 from '@/assets/img/el_3.webp'
import product1 from '@/assets/img/product_1.webp'
import product2 from '@/assets/img/product_2.webp'
import product3 from '@/assets/img/product_3.webp'

const isModalOpen = ref(false)
const modalSrc = ref<string | null>(null)

function openModal(src: string) {
    modalSrc.value = src
    isModalOpen.value = true
}

function closeModal() {
    isModalOpen.value = false
    modalSrc.value = null
}

function handleKeydown(e: KeyboardEvent) {
    if (e.key === 'Escape') closeModal()
}

onMounted(() => {
    window.addEventListener('keydown', handleKeydown)
})

onBeforeUnmount(() => {
    window.removeEventListener('keydown', handleKeydown)
})
</script>