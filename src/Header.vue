<template>
  <header ref="homeheader" class="fullscreen">

      <div class="layer" ref="layer">
        
        <div id="hamburgercontainer" v-bind:style="{ display: this.displaystatus }" v-on:click="hamburgeropen">
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


        <div id="statement" ref="statement">
          <p class="copy">I am a web developer and designer new to the industry. I can build wireframes, prototype, and code a fully responsive, always user-friendly website.</p>
          <p class="copy">you can check out my work or learn more about me...</p>
        </div>


        <nav id="mainnavigation" ref="mainnav">
          <h2 class="hide">Main Navigation</h2>

          <router-link to="/" class="navitem" id="home" ref="homeLink" v-bind:style="{ display: this.displaystatus }" v-on:click.native="homepage">
            home
          </router-link>

          <router-link to="/portfolio" class="navitem" id="portfolio" v-on:click.native="pageleave">
            <div class="arrow downarrow"></div>portfolio
          </router-link>

          <router-link to="/about" class="navitem" id="about" v-on:click.native="pageleave">
            <div class="arrow leftarrow"></div>about
          </router-link>

          <a href="/dist/resume-MariahAlderson.pdf" target="_blank" class="navitem" id="resume" v-bind:style="{ display: this.displaystatus }" ref="resumeLink">resume</a>
          
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
      menuclosed: true,
      windowwidth: 0,
      displaystatus: 'none',
      homeurl: 'http://mariahalderson.com/#/'
    }
  },

  created(){
    window.addEventListener('resize', this.handleResize)
    this.handleResize();
  },

  mounted(){
    this.checkpage();
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
      //handle header animation when logo is clicked
      if(this.homeurl != window.location.href){
        console.log("nothing");
      }else{
        if(!this.scrolled){
          this.displaystatus = 'none';
          this.$refs.statement.style.display="block";
          this.$refs.titles.style.width="100vw";
          this.$refs.layer.style.width="100vw";
          this.$refs.logobox.style.maxWidth="none";
          this.$refs.logobox.style.width="100vw";
          this.$refs.img.style.animation="none";
          this.$refs.titles.style.marginTop="50px";
          this.scrolled = true;
          this.navanimate();
        }else{
          console.log("you can get home through the navigation :)");
        }
      }
    },

    homepage(){
      //set header back to fullscreen when navigating back to home page
      this.$refs.homeheader.classList.add("fullscreen");
      this.displaystatus = 'none';
      this.$refs.logobox.style.width="200px";
      this.$refs.mainnav.classList.remove("beforehamburger");
      this.$refs.mainnav.classList.remove("hamburgernav");
      if(this.windowwidth > 900){
      this.$refs.statement.style.display="block";
      }else{
        this.$refs.statement.style.display="none";
      }
    },

    navanimate(){
      if(this.scrolled){
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
      this.menuclosed= true;
      this.$refs.hamburger.classList.remove("openmenu");
      this.$refs.homeheader.classList.remove("fullscreen");
      this.$refs.layer.style.width="100vw";
      this.$refs.logobox.style.width="90px";
      this.$refs.mainnav.style.height="0px";
      this.$refs.mainnav.classList.add("beforehamburger");
      this.$refs.statement.style.display="none";
      this.displaystatus = 'block';
    },

    checkpage(){
      if(this.homeurl != window.location.href){
        this.pageleave();
        this.$refs.img.removeEventListener('click');
      }else{
        console.log("welcoem to the home page!");
      }
    }

  }

};
</script>


