<template>
    <section id="projects">
        <h2 class="hide">Spotlight Projects</h2>
        <p class="title">projects</p>

        <div id="grid-container">
            <div class="project-tile" v-for="project in projects">
                <img :src="project.projectpath" :alt="project.projecttitle">

                <div class="hover-info">
                    <p class="title">{{project.projecttitle}}</p>
                    <p class="subtitle">{{project.projecttype}}</p>

                    <div class="viewbutton button" :id="project.projectid"><p>learn more</p></div>
                </div>
            </div>
        </div>
        <h1>component linked!</h1>
    </section>
</template>

<script>

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
        }
    }
    
</script>