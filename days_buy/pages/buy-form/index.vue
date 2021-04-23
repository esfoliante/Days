<template>
  <div
    class="min-h-screen flex justify-center items-center text-center mx-auto my-5"
  >
    <div>
      <Logo />
      <h1 class="text-4xl mt-10 text-gray-700 px-6 md:px-0">
        Por favor preencha este pequeno formulário
      </h1>
      <div class="flex flex-col mx-auto w-2/3 mt-10">
        <input
          type="text"
          placeholder="Introduza o nome da escola..."
          class="shadow appearance-none border border-gray-500 rounded-md w-full py-3 px-3 text-gray-700 leading-tight focus:outline-none focus:border-green-100 focus:shadow-outline"
        />
        <input
          type="text"
          placeholder="Introduza o NIF da escola..."
          class="mt-5 shadow appearance-none border border-gray-500 rounded-md w-full py-3 px-3 text-gray-700 leading-tight focus:outline-none focus:border-green-100 focus:shadow-outline"
        />
        <input
          type="email"
          placeholder="Introduza o seu e-mail..."
          class="mt-5 shadow appearance-none border border-gray-500 rounded-md w-full py-3 px-3 text-gray-700 leading-tight focus:outline-none focus:border-green-100 focus:shadow-outline"
        />
      </div>
      <nuxt-link to="/email-sent">
        <p
          class="mt-28 md:mt-32 border-gray-700 border-2 p-3 w-44 rounded-lg font-extrabold hover:bg-gray-700 hover:text-white hover:shadow-lg transition duration-500 ease-in-out mx-auto"
        >
          E N V I A R
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
