<template>
    <div class="h-auto w-5/6 lg:w-3/4 py-8 lg:py-20 flex flex-col justify-center gap-3">
        <div class="flex flex-col justify-center gap-3">
            <div id="reviews" class="">
                
            </div>
            <p class="text-3xl lg:text-5xl font-medium">Реальные отзывы<br>наших клиентов</p>
            <div v-for="review of reviewList" :key="review.src" class="">
                <img class=" max-h-64 w-auto" :src="review.src" alt="">
            </div>
            <!-- <div class="flex justify-between">
                <img src="" alt="Отзыв клиента">
                <img src="" alt="Отзыв клиента">
                <img src="" alt="Отзыв клиента">
            </div> -->
            <!-- <Button color="blue" text="Оставить отзыв" /> -->
        </div>
    </div>
</template>

<script setup lang="ts">
import image1 from '@/assets/img/review_1.png'
import image2 from '@/assets/img/review_2.png'
import image3 from '@/assets/img/review_3.png'

const reviewList = [
    { text: 'Бублики (асимметрия)', src: image1, price: '' },
    { text: 'Волюта', src: image2, price: '' },
    { text: 'Бублики', src: image3, price: '' },
    // { text: 'Запятые', src: image4, price: '' },
    // { text: 'Длинные бублики', src: image5, price: '' },
    // { text: 'Волюта (асимметрия)', src: image6, price: '' },
    // { text: 'Профильные трубы', src: image7, price: '' },
]

</script>