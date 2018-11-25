<template>
    <section id="project">

        <h2> {{this.$route.params.projectid}} </h2>
        <h2>{{projecttitle}}</h2>
        <h2>hello</h2>
    </section>

</template>

<script>
export default {
    //props: ['project']
    // props:{
    //     project: {
    //         type: 'array',
    //         required: true
    //     }
    // }
    data(){
        return{
            projecttitle: '',
            projecttype: '',
            projectbrief: ''
        }
    }
}
</script>