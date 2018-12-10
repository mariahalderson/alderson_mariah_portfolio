<template>
    <section id="about-section">
        <h2 class="hide">About Mariah</h2>

        <div id="aboutheader">
            <div id="aboutimg">
                <img src="/dist/about-portrait.svg" alt="Mariah Alderson and her dog">
            </div>
            
            <div id="abouttitles">
                <p class="title">mariah alderson</p>
                <p class="subtitle">get to know me a little better</p>
            </div>
        </div>



        <div id="aboutintro">

            <div class="imgcontainer" data-wow-delay="0.5s">
                <img src="./assets/images/map-svg.png" alt="Map Icon of London, Ontario">
            </div>

            <p class="copy">I am a front-end web developer and UI Designer based in London, Ontario. My usual goal when I work is ensuring a smooth user experience from design to development. I have been growing my skills for the past year at Fanshawe College through a range of fun and challenging projects. Last summer I was lucky enough to start working with <a href="http://www.reactr.ca" target="_blank">Reactr</a>, where I have had the pleasure of working on real-life and client projects. Through them, I have really been able to expand my experience and fill my incessant need to constantly be learning.</p>

            <p class="copy">When I'm not busy coding or prototyping, I can be found spending about 85% of my time exploring new trails with my dog, Maxie. She's a German Shepherd, and she has the energy of 1000 athletes, but she's the best. I love to go to concerts when I can, and try to spend my mornings weight lifting and my days drinking my bodyweight in coffee.</p>

        </div>



        <div id="aboutskills">
            <p class="subtitle">specialties</p>
            <p class="copy">click to learn more</p>

            <div id="iconcontainer"  class="wow fadeInUp" data-wow-delay="0.5s">
                <!--lightbox-->
                <div id="skilldesc" ref="skillsbox">
                    <div class="button" v-on:click="closebox"><p class="buttoncopy">X</p></div>
                    <img :src="'/dist/' + boxskill.skills_icon" alt="" ref="activeicon">
                    <div id="skillcopy" ref="activecopy">
                        <p class="title">{{boxskill.skills_name}}</p>
                        <p class="copy">{{boxskill.skills_desc}}</p>
                    </div>

                    <div id="othericons" ref="iconlist">
                        <div class="boxicon" v-for="iconpath in iconpaths" :id="iconpath.id" v-on:click="openbox">
                            <img :src="'/dist/' + iconpath.path" alt="">
                        </div>
                    </div>

                </div>

                <!--skills loop-->
                <div class="icon" v-for="skill in skills" :id="skill.skills_id" v-on:click="openbox">
                    <img :src="'/dist/' + skill.skills_icon" alt="">
                    <p class="copy">{{skill.skills_name}}</p>
                </div>
            </div>
        </div>

        

        <div id="whatido">
            <p class="subtitle">what i do</p>

            <p class="copy">I love creating websites that are fully responsive and user friendly to suit the needs of any business or individual. This site was built by myself from scratch, using a variety of skills that I have been growing since I started learning at Fanshawe College. I took this development opportunity to teach myself Vue.js, and have had a lot of fun along the way.</p>

        </div>



        <hr>



        <div id="contactme">
            <p class="subtitle">get in touch</p>
            <p class="copy">If you are interested in working together, feel free to let me know.</p>
            <div class="button" v-on:click="$router.push({name: 'contact'})">
                <p class="buttoncopy">contact me</p>
            </div>
        </div>

        <app-footer></app-footer>

    </section>
</template>





<script>

export default {

    created(){
        this.getData();
    },
  
    data(){
         return{
            skills: [],
            boxskill: [],
            iconpaths: []
         }
    },

     methods:{

         getData(){
             let targeturl = "/api/connect.php?skills=all";

             fetch(targeturl) 
            .then(res => res.json()) 
            .then(data => {
                console.log(data);
                this.skills = data;
            })
            .catch(function(error) {
            console.log(error);
             });
         },

         openbox(e){
             let skillnum = e.currentTarget.id;
             //set elements for transition
             this.$refs.activeicon.style.opacity="0";
             this.$refs.activecopy.style.opacity="0";
             this.$refs.iconlist.style.opacity="0";
             setTimeout(()=>{
             //set icon that matches clicked id to active
             this.boxskill = this.skills[skillnum-1];
             //reset icon paths
             this.iconpaths = [];
             
             
             //add path and id for each skill icon EXCEPT active
             for(var i=0; i<this.skills.length; i++){
                 if(i == skillnum-1){
                     continue;
                 }else{
                     this.iconpaths.push({path: this.skills[i].skills_icon, id: this.skills[i].skills_id});
                 }
             }
            //open lightbox
             if(this.$refs.skillsbox.style.display="none"){
             this.$refs.skillsbox.style.display="flex";
             }

                //end transition
                this.$refs.activeicon.style.opacity="1";
                this.$refs.activecopy.style.opacity="1";
                this.$refs.iconlist.style.opacity="1";
            },300);
         },

         closebox(){
             this.$refs.skillsbox.style.display="none";
         }

     }
}

</script>