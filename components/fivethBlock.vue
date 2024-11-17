<template>
    <div id="reviews" :style="{ backgroundImage: `url(${backgroundImg})` }" class="relative w-full flex justify-center">
        <div class="h-auto w-5/6 lg:w-3/5 py-8 lg:py-20 flex flex-col justify-center gap-3">
            <div class="flex flex-col justify-center gap-5 lg:gap-10">
                <p class="text-3xl lg:text-5xl font-medium text-white">О нас</p>
                <div class="p-4 flex flex-col gap-4 lg:gap-7 bg-[#FF9000] rounded-2xl">
                    <p class="text-2xl lg:text-4xl font-medium">Art Ковка</p>
                    <p class="">
                        Это <span class="font-medium">производство</span> декоративных изделий <span class="font-medium">методом<br>
                        холодной ковки</span>
                         для вашего дома, дачи или уличной территории.
                    </p>
                    <p>
                        <span class="font-medium">Собственное производство</span> позволяет снизить цены<br>
                        до минимума, а также работать с индивидуальными<br>
                        размерами под ваши потребности.
                    </p>
                    <p>
                        <span class="font-medium">Мы предлагаем</span> как отдельные элементы,<br>
                        так и комплексные решения<br>
                        с доставкой по всей России.
                    </p>
                </div>
                <div v-for="review of reviewList" :key="review.src" class="">
                    <img class="max-h-64 w-full lg:w-3/5" :src="review.src" alt="">
                </div>
            </div>
        </div>
        <img class="hidden lg:block absolute bottom-0 right-20 h-[650px]" src="@/assets/img/final_1.png" alt="">
    </div>
</template>

<script setup lang="ts">
import backgroundImg from '@/assets/img/background3.webp';

import image1 from '@/assets/img/review_1.png'
import image2 from '@/assets/img/review_2.png'
import image3 from '@/assets/img/review_3.png'

const reviewList = [
    { text: 'Бублики (асимметрия)', src: image1, price: '' },
    // { text: 'Волюта', src: image2, price: '' },
    // { text: 'Бублики', src: image3, price: '' },
    // { text: 'Запятые', src: image4, price: '' },
    // { text: 'Длинные бублики', src: image5, price: '' },
    // { text: 'Волюта (асимметрия)', src: image6, price: '' },
    // { text: 'Профильные трубы', src: image7, price: '' },
]

</script>