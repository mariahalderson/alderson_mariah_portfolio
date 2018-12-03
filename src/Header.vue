<template>
  <header ref="homeheader" class="fullscreen">
    <!-- <div class="layer" ref="layer" v-bind:style="{ width: computedWidth }">
    <div ref="logobox" id="logocontainer" v-bind:style="{ width: computedWidth }"> -->
      <div class="layer" ref="layer">
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
    <router-link to="/portfolio" class="navitem" id="portfolio">
      <div class="arrow downarrow"></div>portfolio
    </router-link>
    <router-link to="/about" class="navitem" id="about">
      <div class="arrow leftarrow"></div>about
    </router-link>
    <router-link to="/resume" class="navitem" id="resume">
      <div class="arrow leftarrow"></div>resume
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
            scrolled: false
        }
    },
    created(){
      //window.addEventListener('click', this.windowscroll);
      if(matchMedia){
          const mq = window.matchMedia("(min-width: 900px)");
          if(mq.matches){
            this.width = "50vw";
          }else{
            this.width = "100vw";
          }
        }
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
      // var pageheader = document.querySelector("header");
      // var scrollheight = pageheader.offsetHeight;
      // var homepage = document.querySelector("#landing");
      // var porttext = document.querySelector("#portfolio");
      // //var portarrow = document.querySelector("#portfolio .arrow");

      // //portarrow.style.transform="rotate(180deg)";
      // // portarrow.style.borderBottom="15px solid $bckgd-color";
      // // portarrow.style.borderTopColor="transparent";
      // // portarrow.style.borderTop="";

      // pageheader.classList.toggle("fullscreen");
      // setTimeout(function() {
      //   if (pageheader.classList.contains("fullscreen")) {
      //     //window.scrollTo(0,scrollheight);
      //     homepage.style.height = "100vh";
      //     porttext.innerHTML = "<div class='arrow downarrow'></div>portfolio";
      //     porttext.style.marginLeft = "-42px";
      //     homepage.style.backgroundSize = "auto";
      //     document.querySelector("#projects").style.backgroundAttachment =
      //       "scroll";
      //     setTimeout(function() {
      //       window.scrollTo(0, 0);
      //       document.body.style.overflowY = "hidden";
      //     }, 300);
      //   } else {
      //     homepage.style.backgroundSize = "cover";
      //     homepage.style.height = "0px";
      //     document.body.style.overflowY = "scroll";
      //     setTimeout(function() {
      //       document.querySelector("#projects").style.backgroundAttachment =
      //         "fixed";
      //       document.body.overflowY = "scroll";
      //     }, 300);
      //     porttext.innerHTML = "<div class='arrow downarrow'></div>home";
      //     porttext.style.marginLeft = "-27px";
      //   }
      // }, 200);
    },

    windowscroll(){
      console.log("clicked");
      //this.$refs.layer.width="100vw";
      //this.width="100vw";
      //this.$refs.logobox.style.transform="none";
      this.$refs.titles.style.width="100vw";
      this.$refs.layer.style.width="100vw";
      this.$refs.logobox.style.maxWidth="none";
      this.$refs.logobox.style.width="100vw";
      this.$refs.img.style.animation="none";
      this.$refs.titles.style.marginTop="50px";
      this.scrolled = true;
      this.navanimate();
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
    }
  }
};
</script>


