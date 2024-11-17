<template>
    <div class="h-auto w-full pt-[90px] pb-10 lg:py-48 relative flex justify-center bg-cover bg-center" :style="{ backgroundImage: `url(${backgroundImg})` }">
        <div class="w-5/6 lg:w-3/5 relative flex flex-col justify-center gap-4 lg:gap-12 text-white">
            <p class="text-3xl lg:text-4xl font-medium lg:font-bold">Кованые изделия<br> собственного производства</p>
            <p class="text-lg lg:text-3xl">Скидка 10% на первый заказ</p>
            <div class="flex gap-3 lg:gap-10 flex-col lg:flex-row">
                <a class="lg:hidden" href="https://docs.google.com/spreadsheets/d/1TMbqFRvjjvPXuiLFWGCVd46HqE0HaBE39QppfNPbOno/edit?gid=0#gid=0">
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
                        h-6 w-full lg:w-fit px-16 py-6 flex justify-center 
                        items-center bg-[#FF9000] hover:bg-[#ff9500] duration-200
                        text-[#1E1E1E] text-xl lg:text-2xl font-medium cursor-pointer rounded"
                    >
                        Каталог
                    </div>
                </a>
            </div>
            <img class="hidden lg:block absolute h-[450px] -top-32 -right-10" :src="mainImg" alt="">
        </div>
    </div>
</template>

<script setup lang="ts">
import backgroundImg from '@/assets/img/background1.webp';
import mainImg from '@/assets/img/main-img.webp';

</script>