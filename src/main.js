import Vue from 'vue';
import VueRouter from 'vue-router';
import style from './assets/styles/main.scss';
import App from './App.vue';
import Portfolio from './Portfolio.vue';
import ProjectDetail from './ProjectDetail.vue';
import About from './About.vue';
import Resume from './Resume.vue';
import Contact from './Contact.vue';
import Header from './Header.vue';
import Hero from './Hero.vue';

Vue.use(VueRouter);

const routes = [
  {path: '/project/:projectid', name: 'project', component: ProjectDetail, props: true},
  {path: '/', name: 'home', component: Hero},
  {path: '/portfolio', name: 'portfolio', component: Portfolio},
  {path: '/about', component: About},
  {path: '/resume', component: Resume},
  {path: '/contact', name: 'contact', component: Contact}
];

const router = new VueRouter({
  routes,
  //mode: 'history' 
})

Vue.component('app-portfolio', Portfolio);
Vue.component('app-about', About);
//Vue.Component('app-resume', Resume);
Vue.component('app-contact', Contact);
Vue.component('app-header', Header);
Vue.component('app-hero', Hero);
Vue.component('app-project-details', ProjectDetail);
Vue.component('app-myresume', Resume);

new Vue({
  el: '#app',
  router, 
  render: h => h(App)
});