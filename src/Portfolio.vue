<template>
    <section id="projects">
        <!-- <app-header ref="firstheader"></app-header> -->
        <h2 class="hide">Spotlight Projects</h2>
        <p class="title">projects</p>
       

        <div id="grid-container">
             <!-- <a href="./src/assets/resume-MariahAlderson.pdf">resume</a> -->
           
            <div class="project-tile view-tenth" v-for="project in projects">

                <img :src="'./src/assets/images/'+project.proj_thumb" :alt="project.proj_thumb">

                <div class="hover-info mask">
                    <p class="title">{{project.proj_name}}</p>
                    <p class="subtitle">{{project.proj_tagline}}</p>
                    <!-- <router-link :to="'/project/'+project.projectid"> -->
                    <router-link :to="{ name: 'project', params: {projectid: project.proj_id, projecttitle: project.proj_name, projecttag: project.proj_tagline, projectposition: project.proj_position, projectdesc: project.proj_brief, projectwork: project.proj_role, projectmock: project.proj_mock, projectscreens: project.proj_screens } }">
                    <!-- <router-link :to="{ name: 'project', params: {projectid: project.proj_id, projectinfo: project[project.proj_id] } }"> -->
                        <div class="viewbutton button" :id="project.proj_id"><p>learn more</p></div>
                    </router-link>
                </div>
            </div>
        </div>

    </section>
</template>

<script>
    import ProjectDetail from './ProjectDetail.vue';

    export default {
        created(){
            this.getProjects();
        },
        // mounted(){
        // this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
        // this.$refs.firstheader.$refs.layer.style.width="100vw";
        // this.$refs.firstheader.$refs.logobox.style.width="90px";
        // },
        data() {
            return{
                projects: [],
                singleproject: []
            }
        },
        components:{
            'app-project-detail': ProjectDetail
        },
        methods: {
            getProjects(){
                let targetURL = "http://localhost/alderson_mariah_portfolio/api/connect.php?projects=all";

                fetch(targetURL) 
                .then(res => res.json()) 
                .then(data => {
                    console.log(data);
                    this.projects = data;
                })
                .catch(function(error) {
                console.log(error);
                });
            },
            getsingleproject(e){
                var singleid = e.currentTarget.id;
                console.log(singleid);
                this.singleproject = this.projects[singleid-1];
                console.log(this.singleproject);
                this.$refs.projectpopup.style.display="block";
            },
            closeproject(){
                this.$refs.projectpopup.style.display="none";
            }
        }
    }
    
</script>