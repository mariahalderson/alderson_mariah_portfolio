<template>
    <section id="about">

        <app-header ref="firstheader"></app-header>

        <div id="aboutheader">
            <div id="aboutimg">
                <img src="./assets/images/about-portrait.jpg" alt="">
            </div>
            
            <div id="abouttitles">
                <p class="title">mariah alderson</p>
                <p class="subtitle">lorem ipsum dolor sit amet</p>
            </div>
        </div>

        <div id="aboutintro">
            <p class="copy">I am a front-end web developer based in London, Ontario. Sometimes I dabble in UX/UI Design as well, ensuring a smooth user experience from design to development.</p>

            <div class="imgcontainer">
                <img src="./assets/images/map-svg.png" alt="">
            </div>
        </div>

        <div id="aboutskills">
            <p class="subtitle">specialties</p>
            <p class="copy">click to learn more</p>

            <div id="iconcontainer">
                <!--use loop-->
                <div class="icon" v-for="skill in skills">
                    <img :src="'./src/assets/images/' + skill.skills_icon" alt="">
                    <p class="copy">{{skill.skills_name}}</p>
                </div>
            </div>
        </div>

        <hr>

        <div id="whatido">
            <p class="subtitle">what i do</p>

            <p class="copy">I love creating websites that are fully responsive and user friendly to suit the needs of any business or individual. This site was built by myself from scratch, using a variety of skills that I have been growing since I started learning at Fanshawe College. I took this development opportunity to teach myself Vue.js, and have had a lot of fun along the way.</p>

            <p class="copy">In my spare time, my unrelated hobbies include long hikes with my dog, concert-going, weight lifting, and super amateur photography. </p>
        </div>

        <div id="contactme">
            <p class="copy">If you are interested in working together, feel free to let me know.</p>
            <div class="button">
                <p class="buttoncopy">contact me</p>
            </div>
        </div>

    </section>
</template>

<script>
export default {
    created(){
        this.getData();
    },
    mounted(){
        this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
        this.$refs.firstheader.$refs.layer.style.width="100vw";
        this.$refs.firstheader.$refs.logobox.style.width="90px";
     },
     data(){
         return{
            skills: []
         }
     },
     methods:{
         getData(){
             let targeturl = "http://localhost/alderson_mariah_portfolio/api/connect.php?skills=all";

             fetch(targeturl) 
            .then(res => res.json()) 
            .then(data => {
                console.log(data);
                this.skills = data;
            })
            .catch(function(error) {
            console.log(error);
             });
         }
     }
}
</script>