<template>
    <div 
        id="reviews" 
        :style="{ 
            backgroundImage: `url(${backgroundImg})`,
            backgroundSize: 'cover', 
            backgroundRepeat: 'no-repeat', 
            backgroundPosition: 'center' 
        }" 
        class="relative w-full flex justify-center"
    >
        <div class="h-auto w-5/6 lg:w-3/5 py-8 lg:py-20 flex flex-col justify-center gap-3">
            <div class="flex flex-col justify-center gap-5 lg:gap-10">
                <p class="text-3xl lg:text-5xl font-medium text-white">О нас</p>
                <div class="p-4 flex flex-col gap-4 lg:gap-7 bg-[#FF9000] rounded-2xl">
                    <p class="text-2xl lg:text-4xl font-medium">Art Ковка</p>
                    <p class="lg:w-2/3">
                        Это <span class="font-medium">производство</span> декоративных изделий <span class="font-medium">методом
                        холодной ковки</span>
                         для вашего дома, дачи или уличной территории.
                    </p>
                    <p class="lg:w-1/2">
                        <span class="font-medium">Собственное производство</span> позволяет снизить цены
                        до минимума, а также работать с индивидуальными
                        размерами под ваши потребности.
                    </p>
                    <p class="lg:w-1/3">
                        <span class="font-medium">Мы предлагаем</span> как отдельные элементы,
                        так и комплексные решения
                        с доставкой по всей России.
                    </p>
                </div>
            </div>
            <div class="w-full lg:w-3/5 block">
                <swiper
                    :modules="[Autoplay]"
                    :slides-per-view="1"
                    :space-between="50"
                    :zoom="true"
                    :autoplay="{ 
                        delay: 3500,
                        disableOnInteraction: false 
                    }"
                >
                    <swiper-slide v-for="review of reviewList" :key="review.src">
                        <img class="w-full rounded" :src="review.src" alt="">
                    </swiper-slide>
                </swiper>
            </div>
        </div>
        <img class="hidden lg:block absolute bottom-0 right-20 h-[650px]" src="@/assets/img/final_1.png" alt="">
    </div>
</template>

<script setup lang="ts">
import 'swiper/css';
import 'swiper/css/zoom';
import 'swiper/css/autoplay';

import { Swiper, SwiperSlide } from 'swiper/vue';
import { Autoplay } from 'swiper/modules';

import backgroundImg from '@/assets/img/background3.webp';
import image1 from '@/assets/img/review_1.png'
import image2 from '@/assets/img/review_2.png'
import image3 from '@/assets/img/review_3.png'

const reviewList = [
    { text: '1', src: image1 },
    { text: '2', src: image2 },
    { text: '3', src: image3 },
]

</script>