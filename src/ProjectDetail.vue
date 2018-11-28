<template>
    <section id="project">
        <app-header ref="firstheader"></app-header>
        <h2 class="hide">Abou the project</h2>
        <div class="imgcontainer">
            <img src="" alt="">
        </div>
        <h1>{{projecttitle}}</h1>
        <!-- <h2> {{this.$route.params.projectid}} </h2>
        <h2>{{project[this.$route.params.projectid-1].projecttitle}}</h2>
        <h2>{{project[this.$route.params.projectid-1].projecttype}}</h2> -->
        <!-- <h1>router view</h1> -->

        <p class="subtitle">Company Website Redesign</p>
        <p class="subtitle">Front-End Developer</p>

        <div id="projectbrief">
            <p class="title" v-on:click="logHeader">about the project</p>
            <p class="copy"></p>
        </div>

        <div class="imgcontainer">
            <img src="" alt="">
        </div>

        <div id="projectbrief">
            <p class="title">the build</p>
            <p class="copy"></p>
        </div>

    </section>

</template>

<script>
//update: I figured out props
export default {
    props: ['projecttitle'],
    mounted(){
        this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
    },
    methods: {
        logHeader(){
            console.log(this.$refs.firstheader.$refs.homeheader.tagName);
        }
    }
}
</script>