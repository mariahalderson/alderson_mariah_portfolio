<template>
  <header ref="homeheader" class="fullscreen">
    <div id="logocontainer">
      <img src="./assets/images/logo.svg" alt="Mariah Alderson Logo">
    </div>

    <div id="maintitles">
      <p class="title">mariah alderson</p>
      <!-- <p class="title"> {{name}}</p> -->
      <p class="subtitle">front-end developer | UX designer</p>
    </div>

    <!-- <nav id="main navigation"> -->
    <router-link to="/portfolio" class="navitem" id="portfolio">
      <div class="arrow downarrow"></div>portfolio
    </router-link>
    <a class="navitem" id="about" v-on:click="getData">
      <div class="arrow leftarrow"></div>about
    </a>
    <a class="navitem" id="resume">
      <div class="arrow leftarrow"></div>resume
    </a>
    <!-- </nav> -->
  </header>
</template>


<script>
export default {
    data(){
        return{
            name: ''
        }
    },
    beforeDestroy(){
      this.navclick();
    },
    
  methods: {
    navclick() {
      var pageheader = this.$refs.homeheader;pageheader.classList.remove("fullscreen");
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


