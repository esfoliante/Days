<template>
  <div
    class="min-h-screen min-w-screen flex justify-center items-center text-center mx-auto"
  >
    <div>
      <Logo />
      <div class="w-46">
        <h1 class="text-3xl mt-10 text-gray-700 px-6 md:px-0">
          Faça <span class="font-bold">login</span> para ter acesso a um novo
          mundo de inovação escolar
        </h1>
      </div>
      <div class="mt-16 w-4/5 md:w-2/5 flex flex-col mx-auto">
        <form action="">
          <input
            type="email"
            placeholder="Introduza o seu e-mail..."
            class="shadow appearance-none border border-gray-500 rounded-md w-full py-3 px-3 text-gray-700 leading-tight focus:outline-none focus:border-green-100 focus:shadow-outline"
          />
          <input
            type="password"
            placeholder="Introduza a sua password..."
            class="mt-5 shadow appearance-none border border-gray-500 rounded-md w-full py-3 px-3 text-gray-700 leading-tight focus:outline-none focus:border-green-100 focus:shadow-outline"
          />
          <nuxt-link to="/">
            <p
              class="mt-4 text-sm hover:text-green-500 transition duration-600 ease-in-out text-left"
            >
              Esqueceu-se da password?
            </p>
          </nuxt-link>
          <nuxt-link to="/login">
            <p
              class="mt-16 border-gray-700 border-2 p-3 w-44 rounded-lg font-extrabold hover:bg-gray-700 hover:text-white hover:shadow-lg transition duration-500 ease-in-out mx-auto"
            >
              L O G I N
            </p>
          </nuxt-link>
          <nuxt-link to="/">
            <p
              class="mt-5 hover:text-green-500 transition duration-600 ease-in-out mx-auto"
            >
              V O L T A R
            </p>
          </nuxt-link>
        </form>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Vue from "vue";

export default Vue.extend({});
</script>

<style>
</style>