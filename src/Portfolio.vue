<template>
    <section id="projects">
        <!-- <app-header></app-header> -->
        <h2 class="hide">Spotlight Projects</h2>
        <p class="title">projects</p>

        <div id="grid-container">
            <div class="project-tile" v-for="project in projects">

                <img :src="'./src/assets/images/'+project.proj_thumb" :alt="project.proj_thumb">

                <div class="hover-info">
                    <p class="title">{{project.proj_name}}</p>
                    <p class="subtitle">{{project.proj_tagline}}</p>
                    <!-- <router-link :to="'/project/'+project.projectid"> -->
                    <router-link :to="{ name: 'project', params: {projectid: project.proj_id, projecttitle: project.proj_name, projecttag: project.proj_tagline, projectposition: project.proj_position, projectdesc: project.proj_brief, projectwork: project.proj_role } }">
                    <!-- <router-link :to="{ name: 'project', params: {projectid: project.proj_id, projectinfo: project[project.proj_id] } }"> -->
                    <div class="viewbutton button" :id="project.proj_id"><p>learn more</p></div>
                    </router-link>
                </div>
            </div>
        </div>
        <!-- <router-view :project="projects">
        </router-view> -->
    </section>
</template>

<script>
    import ProjectDetail from './ProjectDetail.vue';

    export default {
        created(){
            this.getProjects();
        },
        data() {
            return{
                // projects: [
                //     {projectid: "1", projectpath: "images/#", projecttitle: "project1", projecttype: "development",},
                //     {projectid: "2", projectpath: "images/#", projecttitle: "project2", projecttype: "design",},
                //     {projectid: "3", projectpath: "images/#", projecttitle: "project3", projecttype: "design",},
                //     {projectid: "4", projectpath: "images/#", projecttitle: "project4", projecttype: "development",}
                // ]
                projects: []
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
            }
        }
    }
    
</script>