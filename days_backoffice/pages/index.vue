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
      <nuxt-link to="/login">
        <p
          class="mt-28 border-gray-700 border-2 p-3 w-44 rounded-lg font-extrabold hover:bg-gray-700 hover:text-white hover:shadow-lg transition duration-500 ease-in-out mx-auto"
        >
          E N T R A R
        </p>
      </nuxt-link>
      <p class="mt-5">
        Ainda não comprou o Days? Adquira
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
/* Sample `apply` at-rules with Tailwind CSS
.container {
@apply min-h-screen flex justify-center items-center text-center mx-auto;
}
*/
</style>
