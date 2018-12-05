<template>
  <header ref="homeheader" class="fullscreen">
    <!-- <div class="layer" ref="layer" v-bind:style="{ width: computedWidth }">
    <div ref="logobox" id="logocontainer" v-bind:style="{ width: computedWidth }"> -->
      <div class="layer" ref="layer">

        <div id="hamburger" ref="hamburger" v-if="nothome" v-on:click="hamburgeropen"><p class="closemenu">X</p></div>

    <router-link to="/">
    <div ref="logobox" id="logocontainer">
      <img ref= "img" src="./assets/images/logo.svg" alt="Mariah Alderson Logo"  v-on:click="windowscroll">
    </div>
    </router-link>

    <div id="maintitles" ref="titles">
      <p class="title">mariah alderson</p>
      <!-- <p class="title"> {{name}}</p> -->
      <p class="subtitle">front-end developer | UX designer</p>
    </div>

    <nav id="mainnavigation" ref="mainnav">
    <router-link to="/portfolio" class="navitem" id="portfolio" v-on:click.native="pageleave">
      <div class="arrow downarrow"></div>portfolio
    </router-link>
    <router-link to="/about" class="navitem" id="about" v-on:click.native="pageleave">
      <div class="arrow leftarrow"></div>about
    </router-link>
    <router-link to="/contact" class="navitem" id="resume" v-on:click.native="pageleave">
      <div class="arrow leftarrow"></div>contact
    </router-link>
    </nav>
    </div>
  </header>
</template>


<script>
export default {
    data(){
        return{
            name: '',
            width: '50vw',
            scrolled: false,
            nothome: false,
            menuclosed: true,
            windowwidth: 0
        }
    },
    created(){
      window.addEventListener('resize', this.handleResize)
      this.handleResize();
  
    },
    beforeDestroy(){
      //this.navclick();
      //window.removeEventListener('click', this.windowscroll);
    },
    computed:{
      computedWidth(event){
        return this.width;
      }
    },
    
  methods: {
    navclick() {
      console.log("click");
      this.$refs.homeheader.classList.remove("fullscreen");
      setTimeout(function(){
        this.$router.push('/portfolio');
      },800);
    },
    handleResize(){
      this.windowwidth = window.innerWidth;
      console.log(this.windowwidth);
    },

    windowscroll(){
      console.log("clicked");
      if(!this.scrolled){
      this.$refs.titles.style.width="100vw";
      this.$refs.layer.style.width="100vw";
      this.$refs.logobox.style.maxWidth="none";
      this.$refs.logobox.style.width="100vw";
      this.$refs.img.style.animation="none";
      this.$refs.titles.style.marginTop="50px";
      this.scrolled = true;
      this.navanimate();
      }
    },

    navanimate(){
      if(this.scrolled){
      console.log("the window has animated");
      setTimeout(()=>{
        this.$refs.mainnav.style.display="flex";
      },800);

      setTimeout(()=>{
        this.$refs.mainnav.style.opacity="1";
      },900);
      
      }
    },

    hamburgeropen(){
      console.log("hamburger");
      this.$refs.hamburger.classList.add("openmenu");
      this.$refs.mainnav.classList.add("hamburgernav");
      if(this.menuclosed){
      this.$refs.mainnav.classList.remove("beforehamburger");
      if(this.windowwidth < 900){
       this.$refs.mainnav.style.height="100vh";
      }else{
        this.$refs.mainnav.style.height="70px";
      }
      this.menuclosed = false;
      }else{
        this.$refs.mainnav.classList.add("beforehamburger");
        this.$refs.mainnav.style.height="0px";
        this.$refs.hamburger.classList.remove("openmenu");
        this.menuclosed = true;
      }

    },

    pageleave(){
      console.log("page leave");
      this.$refs.homeheader.classList.remove("fullscreen");
      this.$refs.layer.style.width="100vw";
      this.$refs.logobox.style.width="90px";
      this.$refs.mainnav.style.height="0px";
      this.$refs.mainnav.classList.add("beforehamburger");
      this.nothome=true;
      this.menuclosed= true;
      if(this.menuclosed){
        this.$refs.hamburger.classList.remove("openmenu");
      }
    },

    getData(e) {
      let targetURL =
        "http://localhost/alderson_mariah_portfolio/api/connect.php?imagename=logo";
      fetch(targetURL) // go get the data and bring it back
        .then(res => res.json()) // turn the result into a plain JS object
        .then(data => {
          console.log(data);

          this.showData(data[0]); // run a function to put the data on the page
        })
        .catch(function(error) {
          console.log(error);
        });
    },

    showData(data) {
      //console.log(data);
      //this.logo = "images/" + data.images_path;
      //document.querySelector("img").src = "images/" + this.logo;
      this.name = data.images_name;
    },

    setdisplay(){
      var mql = window.matchMedia("(min-width: 700px)");
      if(mql.matches){
        console.log("at least 700 pixels");
      }else{
        console.log("less than 700 pixels");
      }
    }
  }
};
</script>


