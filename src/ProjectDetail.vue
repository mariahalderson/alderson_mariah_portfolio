<template id="projectinfotest">
    <section id="project">
        <!-- <router-link to="/portfolio">
        <div class="button" id="backbutton"><p class="buttoncopy">X</p></div>
        </router-link> -->
        
            
        <!-- <app-header ref="firstheader"></app-header> -->
        <div id="projectcontainer">
        <div class="imgcontainer">
            <img :src="'./src/assets/images/' + projectmock" alt="">
        </div>

        <h2 class="hide">About the project</h2>
        <p class="title">{{projecttitle}}</p>
        <p class="subtitle">{{projecttag}}</p>
        <p class="subtitle">{{projectposition}}</p>
        
        

        <div id="projectbrief">
            <p class="subtitle">about the project</p>
            <p class="copy">{{projectdesc}}</p>
        </div>

        <div class="imgcontainer">
            <img :src="'./src/assets/images/' + projectscreens" alt="">
        </div>

        <div id="projectbrief">
            <p class="subtitle">the build</p>
            <p class="copy">{{projectwork}}</p>
        </div>

<!-- <div class="vertical"></div> -->
        <div id="buttoncontainer">
            <div class="button" ref="codebutton"><p class="buttoncopy">source code</p></div>
            <div class="button" ref="sitebutton"><p class="buttoncopy">visit</p></div>
        </div>
    </div>

    </section>

</template>

<script>
//update: I figured out props
export default {
    props: ['projecttitle', 'projecttag', 'projectwork', 'projectdesc', 'projectposition', 'projectmock', 'projectscreens'],
    // mounted(){
    //     this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
    //     this.$refs.firstheader.$refs.layer.style.width="100vw";
    //     this.$refs.firstheader.$refs.logobox.style.width="90px";
    //     },
    methods: {
        // logHeader(){
        //     console.log(this.$refs.firstheader.$refs.homeheader.tagName);
        // }
    }
}
</script>