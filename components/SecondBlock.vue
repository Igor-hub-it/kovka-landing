<template>
    <div 
        id="about-us" 
        class="h-auto w-full lg:w-full py-10 lg:py-20 flex justify-center"
        :style="{ backgroundImage: `url(${backgroundImg})` }"
    >
        <div class="w-5/6 lg:w-3/5 flex flex-col justify-between gap-3">
            <p class="text-3xl lg:text-5xl font-medium">Почему выбирают нас</p>
            <div 
                class="lg:mt-5 grid grid-cols-1 lg:grid-cols-2 gap-3 relative"
                style="grid-auto-rows: minmax(150px, auto);"
            >
                <!-- Карточки -->
                <div 
                    v-for="(item, index) in items" 
                    :key="index" 
                    :class="[ 
                        'w-full p-4 bg-[#FFD8A6] rounded-3xl shadow-lg flex flex-col gap-3', 
                        'relative', 
                        index % 2 !== 0 ? 'lg:top-1/2' : '' 
                    ]"
                >
                    <div class="flex flex-col justify-between gap-3">
                        <p class="text-2xl font-medium leading-7" v-html="item.title"></p>
                        <p class="text-base leading-5" v-html="item.description"></p>
                    </div>
                    <!-- Иконка -->
                    <img :src="item.icon" class="absolute top-4 right-4 w-16 h-16" alt="icon">
                </div>
            </div>
            <a href="tel: +7 952 001-66-26" class="w-full lg:w-fit lg:mt-20">
                <div class="h-6 py-8 lg:px-10 flex justify-center items-center
                    text-center bg-[#2C2C2C] hover:bg-[#101010] duration-200
                    text-white cursor-pointer rounded text-xl lg:text-2xl font-medium">
                    Получить консультацию
                </div>
            </a>
        </div>
    </div>
</template>
н

<script setup lang="ts">
import backgroundImg from '@/assets/img/background2.webp';
import hands from '@/assets/icons/hands.svg'
import crown from '@/assets/icons/crown.svg'
import loop from '@/assets/icons/loop.svg'
import delivery from '@/assets/icons/delivery.svg'

// Массив данных для карточек
const items = [
    {
        title: "Работаем<br> без посредников",
        description: "Собственное производство <br>позволяет сохранять <br>минимальные цены",
        icon: hands,
    },
    {
        title: "Индивидуальный<br> подход",
        description: "Обработаем, сварим, <br>покрасим изделия <br>при необходимости",
        icon: crown,
    },
    {
        title: "Поможем<br> с выбором",
        description: "Подберём элементы или <br>составим композицию <br>под ваш запрос",
        icon: loop,
    },
    {
        title: "Отправка<br> по России",
        description: "Отправим заказ в любой<br> уголок страны",
        icon: delivery,
    },
];
</script>
