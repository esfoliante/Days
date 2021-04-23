<template>
  <div
    class="min-h-screen flex justify-center items-center text-center mx-auto"
  >
    <div>
      <Logo />
      <h1 class="text-4xl mt-10 text-gray-700 px-6 md:px-0">
        <span class="font-bold">Bem vindo(a)</span> ao futuro das escolas
        inteligentes
      </h1>
      <p class="mt-10 md:mt-20 px-5 md:px-72 lg:px-96 text-xl">
        <span class="font-bold">Days</span> é um sistema de gestão escolar que
        tem como foco principal melhorar a experiência na escola tornando-a mais
        inteligente e mais agradável ao aluno. <br />
        Abrace a tecnologia, abrace a inovação, abrace o
        <span class="font-bold">Days</span>.
      </p>
      <nuxt-link to="/buy-form">
        <p
          class="mt-28 md:mt-32 border-gray-700 border-2 p-3 w-44 rounded-lg font-extrabold hover:bg-gray-700 hover:text-white hover:shadow-lg transition duration-500 ease-in-out mx-auto"
        >
          C O M P R A R
        </p>
      </nuxt-link>
      <p class="mt-5">
        Já comprou o Days? Entre
        <a href="http://buy.days.test" target="_blank" class="underline">aqui</a
        >!
      </p>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({});
</script>

<style>
</style>
