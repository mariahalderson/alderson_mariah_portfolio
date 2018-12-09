<template>
  <div id="app">
    <app-header ref="firstheader"></app-header>
    <router-view />
    <footer>
      <div id="footerlogo">
        <img src="src/assets/images/logo.svg">
        <div id="names">
        <p class="title">mariah alderson</p>
        <p class="copy">front-end developer   |   UI designer</p>
        </div>
      </div>

      <div id="contactinfo">
        <div id="socials">
          <i class="fab fa-github"></i>
          <i class="fab fa-codepen"></i>
          <i class="fab fa-linkedin-in"></i>
        </div>
        <div id="location">
          <p class="copy">dev.mariahalderson@gmail.com</p>
          <p class="copy">London, ON</p>
      </div>
      </div>
    </footer>
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



