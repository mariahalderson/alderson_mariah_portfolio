<template>
  <header ref="homeheader" class="fullscreen">

      <div class="layer" ref="layer">
        
        <div id="hamburgercontainer" v-on:click="hamburgeropen"  v-if="nothome">
          <div id="hamburger" ref="hamburger">
            <p class="closemenu">X</p>
          </div>
        </div>

    
        <div ref="logobox" id="logocontainer">
          <img ref= "img" src="./assets/images/logo.svg" alt="Mariah Alderson Logo"  v-on:click="windowscroll">
        </div>
  

        <div id="maintitles" ref="titles">
          <p class="title">mariah alderson</p>
          <p class="subtitle">front-end developer | UX designer</p>
        </div>


        <div id="statement" ref="statement" v-if="scrolled">
          <p class="copy">I am a web developer and designer new to the industry. I can build wireframes, prototype, and code a fully responsive, always user-friendly website.</p>
          <p class="copy">you can check out my work or learn more about me...</p>
        </div>


        <nav id="mainnavigation" ref="mainnav">
          <h2 class="hide">Main Navigation</h2>

          <router-link to="/" class="navitem" id="home" v-if="nothome" v-on:click.native="homepage">
            home
          </router-link>

          <router-link to="/portfolio" class="navitem" id="portfolio" v-on:click.native="pageleave">
            <div class="arrow downarrow"></div>portfolio
          </router-link>

          <router-link to="/about" class="navitem" id="about" v-on:click.native="pageleave">
            <div class="arrow leftarrow"></div>about
          </router-link>

          <a href="./src/assets/resume-MariahAlderson.pdf" target="_blank" class="navitem" id="resume" v-if="nothome">resume</a>
          
          <router-link to="/contact" class="navitem" id="nav-contact" v-on:click.native="pageleave">
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
    // this.findurl();
  },
  mounted(){
    this.findurl();
  },

  computed:{
    computedWidth(event){
    return this.width;
    }
  },
    
  methods: {

    handleResize(){
      this.windowwidth = window.innerWidth;
    },

    windowscroll(){
      console.log("clicked");
      //handle header animation when logo is clicked
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

    homepage(){
      //set header back to fullscreen when navigating back to home page
      this.$refs.homeheader.classList.add("fullscreen");
      this.nothome=false;
      this.$refs.logobox.style.width="200px";
      this.$refs.mainnav.classList.remove("beforehamburger");
      this.$refs.mainnav.classList.remove("hamburgernav");
      this.$refs.statement.style.display="block";
    },

    navanimate(){
      if(this.scrolled){
        console.log("the window has animated");
        setTimeout(()=>{
          this.$refs.mainnav.style.display="flex";
          this.$refs.statement.style.opacity="1";
          this.$refs.statement.style.transform="translateY(0px)";
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
      //handle header shape when navigating away from home page
      console.log("page leave");
      this.$refs.homeheader.classList.remove("fullscreen");
      this.$refs.layer.style.width="100vw";
      this.$refs.logobox.style.width="90px";
      this.$refs.mainnav.style.height="0px";
      this.$refs.mainnav.classList.add("beforehamburger");
      this.$refs.statement.style.display="none";
      this.nothome=true;
      this.menuclosed= true;

      if(this.menuclosed){
        this.$refs.hamburger.classList.remove("openmenu");
      }
    },

    findurl(){
      console.log(window.location.href);
      if(window.location.href != "http://localhost:8080/#/"){
        this.pageleave();
      }

    }

  }

};
</script>


