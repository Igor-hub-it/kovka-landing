<template>
    <div id="catalog" class="h-auto w-full py-20 flex flex-col justify-center items-center gap-3 border bg-[#F3FAFC]">
        <!-- <div class="w-3/4 flex flex-col justify-center gap-3">
            <p class="text-5xl font-medium">Линейка товаров</p>
            <div class="mt-5 grid grid-cols-3 grid-rows-3 gap-5">
                <div v-for="product of productList" :key="product.text" class="">
                    <div class="w-full border border-black rounded">
                        <img class="min-h-64 max-h-64 w-full" :src="product.src" alt="">
                        <div class="p-2 bg-white rounded">
                            <p class="text-lg font-medium">{{ product.text }}</p>
                            <p>от 3{{ product.price }}&#8381; за шт</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="h-6 w-fit px-10 py-5 flex justify-center items-center cursor-pointer rounded bg-white text-[#404040] border-[2px] border-[#404040] font-bold">
                Весь каталог
            </div>
        </div> -->
    </div>
</template>

<script setup lang="ts">
import Button from '~/components/UI/Button.vue';
import image1 from '@/assets/img/category1.webp'
import image2 from '@/assets/img/category2.webp'
import image3 from '@/assets/img/category3.webp'
import image4 from '@/assets/img/category4.webp'
import image5 from '@/assets/img/category5.webp'
import image6 from '@/assets/img/category6.webp'
import image7 from '@/assets/img/category7.webp'

const productList = [
    { text: 'Бублики (асимметрия)', src: image1, price: '' },
    { text: 'Волюта', src: image2, price: '' },
    { text: 'Бублики', src: image3, price: '' },
    { text: 'Запятые', src: image4, price: '' },
    { text: 'Длинные бублики', src: image5, price: '' },
    { text: 'Волюта (асимметрия)', src: image6, price: '' },
    { text: 'Профильные трубы', src: image7, price: '' },
]
</script>