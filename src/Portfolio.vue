<template>
    <section id="projects">
        <!-- <app-header></app-header> -->
        <h2 class="hide">Spotlight Projects</h2>
        <p class="title">projects</p>

        <div id="grid-container">
            <div class="project-tile" v-for="project in projects">
                <img :src="project.projectpath" :alt="project.projecttitle">

                <div class="hover-info">
                    <p class="title">{{project.projecttitle}}</p>
                    <p class="subtitle">{{project.projecttype}}</p>
                    <router-link :to="'/project/'+project.projectid">
                    <div class="viewbutton button" :id="project.projectid"><p>learn more</p></div>
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
        data() {
            return{
                projects: [
                    {projectid: "1", projectpath: "images/#", projecttitle: "project1", projecttype: "development",},
                    {projectid: "2", projectpath: "images/#", projecttitle: "project2", projecttype: "design",},
                    {projectid: "3", projectpath: "images/#", projecttitle: "project3", projecttype: "design",},
                    {projectid: "4", projectpath: "images/#", projecttitle: "project4", projecttype: "development",}
                ]
            }
        },
        components:{
            'app-project-detail': ProjectDetail
        }
    }
    
</script>