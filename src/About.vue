<template>
    <section id="about">
        <h2 class="hide">About Mariah</h2>

        <div id="aboutheader">
            <div id="aboutimg">
                <img src="./assets/images/about-portrait.jpg" alt="Mariah Alderson">
            </div>
            
            <div id="abouttitles">
                <p class="title">mariah alderson</p>
                <p class="subtitle">lorem ipsum dolor sit amet</p>
            </div>
        </div>



        <div id="aboutintro">
            <p class="copy">I am a front-end web developer based in London, Ontario. Sometimes I dabble in UX/UI Design as well, ensuring a smooth user experience from design to development.</p>

            <div class="imgcontainer" data-wow-delay="0.5s">
                <img src="./assets/images/map-svg.png" alt="Map Icon of London, Ontario">
            </div>
        </div>



        <div id="aboutskills">
            <p class="subtitle">specialties</p>
            <p class="copy">click to learn more</p>

            <div id="iconcontainer"  class="wow fadeInUp" data-wow-delay="0.5s">
                <!--lightbox-->
                <div id="skilldesc" ref="skillsbox">
                    <div class="button" v-on:click="closebox"><p class="buttoncopy">X</p></div>
                    <img :src="'./src/assets/images/' + boxskill.skills_icon" alt="" ref="activeicon">
                    <div id="skillcopy" ref="activecopy">
                        <p class="title">{{boxskill.skills_name}}</p>
                        <p class="copy">{{boxskill.skills_desc}}</p>
                    </div>

                    <div id="othericons" ref="iconlist">
                        <div class="boxicon" v-for="iconpath in iconpaths" :id="iconpath.id" v-on:click="openbox">
                            <img :src="'./src/assets/images/' + iconpath.path" alt="">
                        </div>
                    </div>

                </div>

                <!--skills loop-->
                <div class="icon" v-for="skill in skills" :id="skill.skills_id" v-on:click="openbox">
                    <img :src="'./src/assets/images/' + skill.skills_icon" alt="">
                    <p class="copy">{{skill.skills_name}}</p>
                </div>
            </div>
        </div>

        

        <div id="whatido">
            <p class="subtitle">what i do</p>

            <p class="copy">I love creating websites that are fully responsive and user friendly to suit the needs of any business or individual. This site was built by myself from scratch, using a variety of skills that I have been growing since I started learning at Fanshawe College. I took this development opportunity to teach myself Vue.js, and have had a lot of fun along the way.</p>

            <p class="copy">In my spare time, my unrelated hobbies include long hikes with my dog, concert-going, weight lifting, and super amateur photography. </p>
        </div>



        <hr>



        <div id="contactme">
            <p class="subtitle">get in touch</p>
            <p class="copy">If you are interested in working together, feel free to let me know.</p>
            <div class="button" v-on:click="$router.push({name: 'contact'})">
                <p class="buttoncopy">contact me</p>
            </div>
        </div>


        <app-footer ref="pagefooter"></app-footer>

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