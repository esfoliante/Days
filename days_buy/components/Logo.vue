<template>
  <img src="/logo.svg" alt="Icon" class="AppLogo" />
</template>

<style>
.AppLogo {
  animation: 1s appear;
  margin: auto;
  width: 30vw;
}

@media only screen and (max-width: 600px) {
  .AppLogo {
    width: 70vw;
  }
}

@keyframes appear {
  0% {
    opacity: 0;
  }
}
</style>
