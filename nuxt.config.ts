// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2024-04-03',
  devtools: { enabled: true },
  css: ['~/assets/styles/vendor/tailwind.css', '~/assets/styles/vendor/swiper.css'],

  ssr: true, // включаем server-side рендеринг, чтобы Nuxt сделал pre-render при сборке

  nitro: {
    preset: 'static', // включаем SSG режим
  },

  postcss: {
    plugins: {
      tailwindcss: {},
      autoprefixer: {},
    },
  },

  // (необязательно) можно заранее указать, какие страницы генерировать
  // особенно полезно, если есть динамические маршруты (например, /blog/[slug])
  // prerender: {
  //   routes: ['/about', '/contact']
  // }
})