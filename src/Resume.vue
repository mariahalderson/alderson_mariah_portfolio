<template>
<section id="resume">
    <h2 class="hide">Mariah's resume</h2>
    
    <p class="title">resume</p>
    <p class="copy">please feel free to take a peek or download my general resume. If you have any further questions or concerns about anything that cannot be found in my resume, please shoot me an email.</p>
    
    <div class="buttoncontainer">

        <a href="./src/assets/resume-MariahAlderson.pdf" target="_blank">
        <div class="button">
            <p class="buttoncopy">view resume</p>
        </div>
        </a>

        <div class="button" v-on:click="$router.push({name: 'contact'})">
            <p class="buttoncopy">contact me</p>
        </div>
        
    </div>
    
</section>
</template>