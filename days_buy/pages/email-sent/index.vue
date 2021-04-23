<template>
  <div
    class="min-h-screen flex justify-center items-center text-center mx-auto my-5"
  >
    <div>
      <Logo />
      <h1 class="text-4xl mt-10 text-gray-700 px-6 md:px-0">
        <span class="font-bold">Obrigado</span> por comprar o Days
      </h1>
      <p class="mt-10 md:mt-20 px-5 md:px-72 lg:px-96 text-xl leading-10">
        Agora vai receber um e-mail da conta
        <span class="bg-gray-500 bg-opacity-30 p-2 rounded-md"
          >no-reply@days.com</span
        >
        com todas as informações necessárias para ativar o seu produto, tais
        como o código para ativação e uma password temporária criada
        automáticamente pelo sistema.
      </p>
      <nuxt-link to="/">
        <p
          class="mt-14 md:mt-32 lg:mt-32 hover:text-green-500 transition duration-600 ease-in-out mx-auto"
        >
          V O L T A R
        </p>
      </nuxt-link>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({});
</script>

<style>
</style>
