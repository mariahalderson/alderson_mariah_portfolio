<template>
  <div id="app">
    <!-- <app-header></app-header>
    <app-hero></app-hero>
    <app-portfolio></app-portfolio> -->
    <app-header ref="firstheader"></app-header>
    <router-view />
  </div>
</template>

<script>
export default {
  name: 'app',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>


