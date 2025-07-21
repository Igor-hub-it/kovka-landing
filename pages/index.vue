<template>
    <div class="flex flex-col items-center ">
        <FirstBlock />
        <SecondBlock />
        <ThirdBlock />
        <FourthBlock />
        <FivethBlock />
    </div>
</template>

<script setup lang="ts">
import { onMounted } from 'vue'

definePageMeta({
    layout: "main",
})

onMounted(() => {
  (function(m: any, e: Document, t: string, r: string, i: string, k?: HTMLScriptElement, a?: Element){
    (m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)});
    (m[i].l=1*new Date().getTime());
    for (let j = 0; j < e.scripts.length; j++) {if ((e.scripts[j] as HTMLScriptElement).src === r) { return; }}
    k = e.createElement(t) as HTMLScriptElement;
    a = e.getElementsByTagName(t)[0];
    k.async = true;
    k.src = r;
    if (a && a.parentNode) {
      a.parentNode.insertBefore(k, a);
    }
  })(window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

  // @ts-ignore
  window.ym && window.ym(99412552, "init", {
    clickmap:true,
    trackLinks:true,
    accurateTrackBounce:true,
    ecommerce:"dataLayer"
  });
})
</script>