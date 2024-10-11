<template>
    <div class="fixed lg:static h-12 lg:h-[162px] w-full flex justify-center items-center z-30 bg-white">
        <div class="w-full lg:w-3/4 h-[50px] lg:h-[110px] px-8 lg:px-0 flex justify-between items-center lg:items-stretch">
            <div class="h-full flex items-center">
                <img class="h-12 lg:h-36" src="@/assets/img/logo.png" alt="Логотип холодная ковка Арт ковка">
                <div class="ml-3">
                    <p class="text-xl font-semibold">Art-Kovka</p>
                    <p class="hidden lg:block text-sm font-medium leading-5">
                        Холодная ковка<br>
                        под заказ
                    </p>
                    <p class="hidden lg:block mt-2 text-xs italic">
                        Произведено в <br>
                        Алтайском Крае
                    </p>
                </div>
            </div>
            <div class="hidden lg:flex flex-col justify-between items-end">
                <div class="flex gap-11 items-center">
                    <div class="flex gap-3 items-end">
                        <!-- <p>Мы в соц. сетях:</p> -->
                        <a href="https://web.telegram.org/k/#1711641153"><img src="@/assets/img/tg.png" alt="Телеграмм" class="w-9 h-9 cursor-pointer"></a>
                        <a href="https://vk.com/art_kovka22"><img src="@/assets/img/vk.png" alt="Группа ВК" class="w-9 h-9 cursor-pointer rounded"></a>
                        <a href="https://wa.me/79520016626"><img src="@/assets/img/whatsapp.png" alt="WhatsApp" class="w-9 h-9 cursor-pointer rounded"></a>
                    </div>
                    <div class="">
                        <p class="">Звоните:</p>
                        <a href="tel: +7 952 001-66-26" class="font-bold cursor-pointer">+7 952 001-66-26</a>
                    </div>
                </div>
                <div class="flex gap-8">
                    <a @click="scrollTo('about-us')" class="cursor-pointer">О компании</a>
                    <a @click="scrollTo('catalog')" class="cursor-pointer">Каталог</a>
                    <a @click="scrollTo('reviews')" class="cursor-pointer">Отзывы</a>
                    <a @click="scrollTo('footer')" class="cursor-pointer">Контакты</a>
                </div>
            </div>
            <div @click="changeNavBarState" class="flex flex-col h-fit gap-1 lg:hidden z-30">
                <div 
                    :class="[
                        'h-1 w-7 bg-[#404040] rounded transition-transform duration-300',
                        isVisibleNavBar ? 'transform rotate-45 translate-y-2' : ''
                    ]">
                </div>
                <div 
                    :class="[
                        'h-1 w-7 bg-[#404040] rounded transition-opacity duration-300',
                        isVisibleNavBar ? 'opacity-0' : 'opacity-100'
                    ]">
                </div>
                <div 
                    :class="[
                        'h-1 w-7 bg-[#404040] rounded transition-transform duration-300',
                        isVisibleNavBar ? 'transform -rotate-45 -translate-y-2' : ''
                    ]">
                </div>
            </div>
        </div>
        <div 
            class="fixed top-0 h-full w-screen bg-white z-20 transition-all duration-300"
            :class="[!isVisibleNavBar ? 'right-full' : 'right-0']"
        >
            <div class="flex flex-col gap-8 text-3xl pl-12 pt-24">
                <a @click="scrollTo('about-us')" class="cursor-pointer">О компании</a>
                <a @click="scrollTo('catalog')" class="cursor-pointer">Каталог</a>
                <a @click="scrollTo('reviews')" class="cursor-pointer">Отзывы</a>
                <a @click="scrollTo('footer')" class="cursor-pointer">Контакты</a>
                <div class="flex gap-4">
                    <a href="https://web.telegram.org/k/#1711641153"><img src="@/assets/img/tg.png" alt="Телеграмм" class="w-9 h-9 cursor-pointer"></a>
                    <a href="https://vk.com/art_kovka22"><img src="@/assets/img/vk.png" alt="Группа ВК" class="w-9 h-9 cursor-pointer rounded"></a>
                    <a href="https://wa.me/79520016626"><img src="@/assets/img/whatsapp.png" alt="WhatsApp" class="w-9 h-9 cursor-pointer rounded"></a>
                </div>
                <a href="tel: +7 952 001-66-26">+7 952 001-66-26</a>
                <a href="mailto:art-kovka22@mail.ru">art-kovka22@mail.ru</a>
            </div>
        </div>
    </div>
</template>
  
<script setup lang="ts">

const isVisibleNavBar = ref(false)

const scrollTo = ((target: string) => {
      const element = document.getElementById(target);
      if (element) {
        element.scrollIntoView({ behavior: 'smooth' });
        isVisibleNavBar.value = false
      }
    }
) 

const changeNavBarState = (() => {
    isVisibleNavBar.value = !isVisibleNavBar.value
})
</script>