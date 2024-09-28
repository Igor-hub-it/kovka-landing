<template>
    <div class="h-[162px] w-full flex justify-center items-center">
        <div class="w-3/4 h-[110px] flex justify-between">
            <div class="h-full flex items-center">
                <img src="" alt="Логотип холодная ковка Арт ковка">
                <p class="">
                    Холодная ковка<br>
                    под заказ
                </p>
            </div>
            <div class="flex flex-col justify-between items-end">
                <div class="flex gap-11 items-center">
                    <div class="flex gap-3">
                        <ClientOnly>
                            <img src="@/assets/img/tg.png" alt="Телеграмм" class="w-6 h-6 cursor-pointer">
                            <img src="@/assets/img/vk.png" alt="Группа ВК" class="w-6 h-6 cursor-pointer">
                            <a
                                :href="`https://wa.me/79520016626`"
                            >
                                <img src="@/assets/img/whatsapp.png" alt="WhatsApp" class="w-6 h-6 cursor-pointer">
                            </a>
                        </ClientOnly>
                    </div>
                    <div class="">
                        <p class="">Звоните:</p>
                        <a href="tel: +7 952 001-66-26" class="font-bold cursor-pointer">+7 952 001-66-26</a>
                    </div>
                </div>
                <div class="flex gap-8">
                    <a href="">О компании</a>
                    <a href="">Каталог</a>
                    <a href="">Отзывы</a>
                    <a href="">Контакты</a>
                </div>
            </div>
        </div>
    </div>
</template>
  
<script setup lang="ts">
import SvgIcon from './UI/SvgIcon.vue';

</script>