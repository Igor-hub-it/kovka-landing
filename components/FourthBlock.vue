<template>
    <div 
        id="steps" 
        class="h-auto w-full lg:w-full py-10 lg:py-20 flex justify-center"
        :style="{ backgroundImage: `url(${backgroundImg})` }"
    >
        <div class="w-5/6 lg:w-3/5 flex flex-col justify-between gap-3">
            <p class="mb-10 text-3xl lg:text-5xl font-medium">Этапы работы</p>
            <div class="relative">
                <div class="h-[500px] w-[6px] bg-black"></div>
                <div class="absolute -left-7 -top-7 w-16 h-16 flex justify-center items-center bg-[#262628] border border-black rounded-full">
                    <p class="text-4xl font-bold text-white">1</p>
                </div>
                <div class="absolute -left-7 top-52 w-16 h-16 flex justify-center items-center bg-[#262628] border border-black rounded-full">
                    <p class="text-4xl font-bold text-white">2</p>
                </div>
                <div class="absolute -left-7 bottom-0 w-16 h-16 flex justify-center items-center bg-[#262628] border border-black rounded-full">
                    <p class="text-4xl font-bold text-white">3</p>
                </div>
                <div class="absolute top-0 left-9 w-5 h-[6px] bg-black"></div>
                <div class="absolute top-60 left-9 w-5 h-[6px] bg-black"></div>
                <div class="absolute bottom-7 left-9 w-5 h-[6px] bg-black"></div>
                <div class="absolute -top-7 left-11 px-5 py-2 rounded bg-[#262628] border border-black text-white">
                    Выбираете нужные<br>
                    элементы в каталоге
                </div>
                <div class="absolute -top-2 left-[260px] lg:left-[247px] font-bold">или</div>
                <div class="absolute top-12 right-0 lg:right-auto lg:-top-7 lg:left-72 px-5 py-2 rounded bg-[#262628] border border-black text-white">
                    Помогаем подобрать нужную<br>
                    композицию или набор элементов
                </div>
                <div class="absolute top-52 left-11 p-5 rounded bg-[#262628] border border-black text-white">
                    Подготавливаем заказ и присылаем вам фото для подтверждения
                </div>
                <div class="absolute bottom-0 left-11 p-5 rounded bg-[#262628] border border-black text-white">
                    Вы оформляете доставку или забираете заказ самостоятельно
                </div>
            </div>
            <a href="tel: +7 952 001-66-26" class="mt-5 lg:mt-20 w-full lg:w-fit">
                <div class="h-6 px-9 py-8 flex justify-center 
                    items-center bg-[#2C2C2C] hover:bg-[#101010] duration-200
                    text-white cursor-pointer rounded text-xl font-medium"
                >
                    Уточнить детали
                </div>
            </a>
        </div>
    </div>
</template>

<script setup lang="ts">
import backgroundImg from '@/assets/img/background2.webp';

// Массив данных для карточек

</script>
