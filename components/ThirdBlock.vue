<template>
    <div 
        id="catalog" 
        class="h-auto w-full py-10 lg:py-20 flex flex-col justify-center items-center gap-3" 
        :style="{ backgroundImage: `url(${backgroundImg})` }"
    >
        <div class="w-4/5 lg:w-3/5 flex flex-col justify-center gap-3">
            <p class="text-3xl lg:text-5xl font-medium text-white">Товары</p>
            <div class="block lg:hidden">
                <swiper
                    :slides-per-view="1"
                    :space-between="50"
                    class="w-[100%] block lg:hidden"
                >
                <swiper-slide v-for="product of productList" :key="product.text">
                    <div class="w-full h-72 relative border-[4px] border-[#FF9000] rounded">
                        <img class="p-6 max-h-52 w-auto" :src="product.src" alt="">
                        <div class="absolute bottom-3 px-3 text-white rounded">
                            <p class="text-lg font-medium">{{ product.text }}</p>
                            <p>от {{ product.price }}&#8381; за шт</p>
                        </div>
                    </div>
                    <img class="w-12 absolute bottom-1 right-1 z-10 rounded-tl-lg" src="@/assets/gif/swipe-left.gif" alt="">
                    </swiper-slide>
                </swiper>
            </div>
            <div class="hidden mt-5 lg:grid grid-cols-3 grid-rows-3 gap-5">
                <div v-for="product of productList" :key="product.text" class="">
                    <div class="relative w-full h-60 border-[4px] border-[#FF9000] rounded text-white">
                        <img class="p-6 max-h-40 w-auto" :src="product.src" alt="">
                        <div class="absolute bottom-3 px-3 rounded">
                            <p class="text-lg font-medium">{{ product.text }}</p>
                            <p>от {{ product.price }}&#8381; за шт</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="lg:hidden" href="https://docs.google.com/spreadsheets/d/1TMbqFRvjjvPXuiLFWGCVd46HqE0HaBE39QppfNPbOno/edit?gid=0#gid=0">
                <div class="
                    h-6 w-full lg:w-fit lg:mt-6 px-10 py-8 lg:px-10 flex justify-center items-center 
                    cursor-pointer rounded bg-white text-[#000000] border-[2px]
                    border-[#404040] text-xl lg:text-2xl font-medium"
                >
                    Весь каталог
                </div>
            </a>
            <a class="hidden lg:block" href="https://docs.google.com/spreadsheets/d/1TMbqFRvjjvPXuiLFWGCVd46HqE0HaBE39QppfNPbOno/edit?gid=1117172338#gid=1117172338">
                <div class="
                    h-6 w-full lg:w-fit lg:mt-6 px-10 py-8 lg:px-10 flex justify-center items-center 
                    cursor-pointer rounded bg-white text-[#000000] border-[2px]
                    border-[#404040] text-xl lg:text-2xl font-medium"
                >
                    Весь каталог
                </div>
            </a>
        </div>
    </div>
</template>

<script setup lang="ts">
import { Swiper, SwiperSlide } from 'swiper/vue';
import 'swiper/css';

// Import Swiper styles
import image1 from '@/assets/img/booba.webp'
import image2 from '@/assets/img/val.webp'
import image3 from '@/assets/img/boobs.webp'
import image4 from '@/assets/img/zap.webp'
import image5 from '@/assets/img/boobd.webp'
import image6 from '@/assets/img/vala.webp'
import image7 from '@/assets/img/fon.webp'
import image8 from '@/assets/img/line.webp'

import backgroundImg from '@/assets/img/background3.webp';

const productList = [
    { text: 'Бублики (асимметрия)', src: image1, price: '95' },
    { text: 'Волюта', src: image2, price: '80' },
    { text: 'Бублики', src: image3, price: '70' },
    { text: 'Запятые', src: image4, price: '40' },
    { text: 'Длинные бублики', src: image5, price: '155' },
    { text: 'Волюта (асимметрия)', src: image6, price: '120' },
    { text: 'Фонаики', src: image7, price: '160' },
    { text: 'Профильные трубы', src: image8, price: '154' },
]
</script>