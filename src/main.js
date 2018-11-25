import Vue from 'vue';
import style from './assets/styles/main.scss';
import App from './App.vue';
import Portfolio from './Portfolio.vue';
import Header from './Header.vue';
import Hero from './Hero.vue';

Vue.component('app-portfolio', Portfolio);
Vue.component('app-header', Header);
Vue.component('app-hero', Hero);

new Vue({
  el: '#app',
  render: h => h(App)
});
