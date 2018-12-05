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
  {path: '/', component: Resume},
  {path: '/portfolio', name: 'portfolio', component: Portfolio},
  {path: '/about', component: About},
  {path: '/resume', component: Resume},
  {path: '/contact', component: Contact}
  //each route is an object in an array with a defined path and component to be loaded
  //{path: '/users', component: Users},
  //{path: '/users/:userid', component: Users} //:userid is dynamic data from link
  //{{ $this.route.params.userid }} will output :userid from url
  //watch:{ '$route' (to, from){method with changing data} } in export default
];

const router = new VueRouter({
  //pass routes into vue router
  routes,
  //mode: history //removes hashtag from url
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
  router, //add router to main vue instance
  render: h => h(App)
});
//<router-view></router-view> marks where components routed should display
//<router-link></router-link> sets url for reloading components
//<router-link to="/">Home</router-link>
//<router-link :to="variable">dynamic url</router-link>
