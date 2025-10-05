<template>
    <div 
        class="h-auto w-full pt-[90px] pb-10 lg:py-48 relative flex justify-center bg-cover bg-center z-0" 
        :style="{ 
            backgroundImage: `url(${backgroundImg})`,
            backgroundSize: 'cover', 
            backgroundRepeat: 'no-repeat', 
            backgroundPosition: 'center' 
        }"
    >
        <div class="w-5/6 lg:w-3/5 relative flex flex-col justify-center gap-4 lg:gap-12 text-white">
            <p class="text-3xl lg:text-4xl font-medium lg:font-bold z-20">Кованые изделия<br> собственного производства</p>
            <p class="w-2/5 lg:w-full lg:max-w-[45%] text-lg lg:text-3xl z-20">Более 1000 отправленных заказов в 2025 году!</p>
            <div class="flex gap-3 lg:gap-10 flex-col lg:flex-row">
                <a class="lg:hidden mt-20" href="https://docs.google.com/spreadsheets/d/1TMbqFRvjjvPXuiLFWGCVd46HqE0HaBE39QppfNPbOno/edit?gid=0#gid=0">
                    <div class="
                        h-6 w-full lg:w-fit px-16 py-6 flex justify-center 
                        items-center bg-[#FF9000] hover:bg-[#ff9500] duration-200
                        text-[#1E1E1E] text-xl lg:text-2xl font-medium cursor-pointer rounded"
                    >
                        Каталог
                    </div>
                </a>
                <a class="hidden lg:block" href="https://docs.google.com/spreadsheets/d/1TMbqFRvjjvPXuiLFWGCVd46HqE0HaBE39QppfNPbOno/edit?gid=1117172338#gid=1117172338">
                    <div class="
                        h-6 w-full lg:w-fit px-28 py-6 flex justify-center 
                        items-center bg-[#FF9000] hover:bg-[#ff9500] duration-200
                        text-[#1E1E1E] text-xl lg:text-2xl font-medium cursor-pointer rounded"
                    >
                        Каталог
                    </div>
                </a>
            </div>
            <div class="flex items-center gap-3 lg:gap-4">
                <a href="https://www.ozon.ru/seller/art-kovka-2865165/?miniapp=seller_2865165" target="_blank" rel="noopener noreferrer">
                    <img :src="ozonImg" alt="Ozon" class="w-12 h-12 rounded-lg hover:opacity-80 transition-opacity duration-200">
                </a>
                <a href="https://www.wildberries.ru/seller/250022049?sort=popular&page=1" target="_blank" rel="noopener noreferrer">
                    <img :src="wbImg" alt="Wildberries" class="w-12 h-12 rounded-lg hover:opacity-80 transition-opacity duration-200">
                </a>
                <a href="https://market.yandex.ru/business--artkovka/216343313" target="_blank" rel="noopener noreferrer">
                    <img :src="marketImg" alt="Яндекс.Маркет" class="w-12 h-12 rounded-lg hover:opacity-80 transition-opacity duration-200">
                </a>
                <div class="flex items-center gap-2 text-white">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" class="w-4 h-4 lg:w-5 lg:h-5 text-[#FF9000] fill-current rotate-180">
                        <path d="M13.172 12l-4.95-4.95a1 1 0 111.414-1.414l6.364 6.364a1 1 0 010 1.414l-6.364 6.364a1 1 0 11-1.414-1.414L13.172 12z"/>
                    </svg>
                    <span class="text-sm lg:text-base font-medium">Заказывай тут</span>
                </div>
            </div>
            <img class="hidden lg:block absolute h-[550px] -top-32 -right-10" :src="mainImg" alt="">
            <img class="block lg:hidden absolute h-52 top-28 right-0 z-10" :src="mainImgMobile1" alt="">
            <img class="block lg:hidden absolute h-44 top-36 -left-12 z-10" :src="mainImgMobile2" alt="">
            <img class="block lg:hidden absolute h-28 top-8 right-12 -z-10" :src="mainImgMobile3" alt="">
        </div>
    </div>
</template>

<script setup lang="ts">
import backgroundImg from '@/assets/img/background1.webp';
import mainImg from '@/assets/img/main-img.webp';
import mainImgMobile1 from '@/assets/img/main-mobile-img1.webp';
import mainImgMobile2 from '@/assets/img/main-mobile-img2.webp';
import mainImgMobile3 from '@/assets/img/main-mobile-img3.webp';
import ozonImg from '@/assets/img/ozon.webp';
import wbImg from '@/assets/img/wb.webp';
import marketImg from '@/assets/img/market.webp';

</script>