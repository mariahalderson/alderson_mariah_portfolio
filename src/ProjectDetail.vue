<template>
    <section id="project">
        <h1>hello</h1>
        <!-- <h2> {{this.$route.params.projectid}} </h2>
        <h2>{{project[this.$route.params.projectid-1].projecttitle}}</h2>
        <h2>{{project[this.$route.params.projectid-1].projecttype}}</h2> -->
        <!-- <h1>router view</h1> -->
    </section>

</template>

<script>
//update: I figured out props
export default {
    props: ['project']
}
</script>