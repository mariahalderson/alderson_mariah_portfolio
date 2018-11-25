<template>
    <header class="fullscreen">
        
        <div id="logocontainer">
            <img src="./assets/images/logo.svg" alt="Mariah Alderson Logo">
        </div>

        <div id="maintitles">
            <p class="title">mariah alderson</p>
            <p class="subtitle">front-end developer   |   UX designer</p>
        </div>
        
        <!-- <nav id="main navigation"> -->
        <a class="navitem" id="portfolio" v-on:click="navclick"><div class="arrow downarrow"></div>portfolio</a>
        <a class="navitem" id="about"><div class="arrow leftarrow"></div>about</a>
        <a class="navitem" id="resume"><div class="arrow leftarrow"></div> resume</a>
        <!-- </nav> -->
            
    </header>
</template>


<script>

    export default{
        methods:{
            navclick(){
            var pageheader = document.querySelector("header");
            var scrollheight = pageheader.offsetHeight;
            var homepage = document.querySelector("#landing");
            var porttext=document.querySelector("#portfolio");
            //var portarrow = document.querySelector("#portfolio .arrow");

            
            //portarrow.style.transform="rotate(180deg)";
            // portarrow.style.borderBottom="15px solid $bckgd-color";
            // portarrow.style.borderTopColor="transparent";
            // portarrow.style.borderTop="";
            
            pageheader.classList.toggle("fullscreen");
            setTimeout(function(){
            if(pageheader.classList.contains("fullscreen")){
            
              //window.scrollTo(0,scrollheight);
              homepage.style.height="100vh";
              porttext.innerHTML="<div class='arrow downarrow'></div>portfolio";
              porttext.style.marginLeft="-42px";
              homepage.style.backgroundSize="auto";
              document.querySelector("#projects").style.backgroundAttachment="scroll";
              setTimeout(function(){
                window.scrollTo(0,0);
                document.body.style.overflowY="hidden";
               },300);
            }else{
              homepage.style.backgroundSize="cover";
              homepage.style.height="0px";
              document.body.style.overflowY="scroll";
              setTimeout(function(){
              document.querySelector("#projects").style.backgroundAttachment="fixed";
              document.body.overflowY="scroll";
              },300);
              porttext.innerHTML="<div class='arrow downarrow'></div>home";
              porttext.style.marginLeft="-27px";
              
      
            }},200);

          
          
          }

        }

    }

</script>
    

