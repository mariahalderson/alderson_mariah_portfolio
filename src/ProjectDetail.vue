<template id="projectinfotest">
    <section id="project">
        <app-header ref="firstheader"></app-header>
        
        <h2 class="hide">About the project</h2>
        <div class="imgcontainer">
            <img :src="'./src/assets/images/' + projectmock" alt="">
        </div>
        <p class="title">{{projecttitle}}</p>
        <!-- <h2> {{this.$route.params.projectid}} </h2>
        <h2>{{project[this.$route.params.projectid-1].projecttitle}}</h2>
        <h2>{{project[this.$route.params.projectid-1].projecttype}}</h2> -->
        <!-- <h1>router view</h1> -->

        <p class="subtitle">{{projecttag}}</p>
        <p class="subtitle">{{projectposition}}</p>

        <div id="projectbrief">
            <p class="title" v-on:click="logHeader">about the project</p>
            <p class="copy">{{projectdesc}}</p>
        </div>

        <div class="imgcontainer">
            <img :src="'./src/assets/images/' + projectscreens" alt="">
        </div>

        <div id="projectbrief">
            <p class="title">the build</p>
            <p class="copy">{{projectwork}}</p>
        </div>

    </section>

</template>

<script>
//update: I figured out props
export default {
    props: ['projecttitle', 'projecttag', 'projectwork', 'projectdesc', 'projectposition', 'projectmock', 'projectscreens'],
    mounted(){
        this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
        this.$refs.firstheader.$refs.layer.style.width="100vw";
        this.$refs.firstheader.$refs.logobox.style.width="90px";
        },
    methods: {
        // logHeader(){
        //     console.log(this.$refs.firstheader.$refs.homeheader.tagName);
        // }
    }
}
</script>