<template id="projectinfotest">
    <section id="project">
        <!-- <router-link to="/portfolio">
        <div class="button" id="backbutton"><p class="buttoncopy">X</p></div>
        </router-link> -->
        
            
        <!-- <app-header ref="firstheader"></app-header> -->
        <div id="projectcontainer">
        <div class="imgcontainer">
            <img :src="mockpath" alt="" ref="mockimg">
        </div>

        <h2 class="hide">About the project</h2>
        <p class="title">{{projecttitle}}</p>
        <p class="subtitle">{{projecttag}}</p>
        <p class="subtitle">{{projectposition}}</p>
        
        

        <div id="projectbrief">
            <p class="subtitle">about the project</p>
            <p class="copy">{{projectdesc}}</p>
        </div>

        <div class="imgcontainer">
            <img :src="'./src/assets/images/' + projectscreens" alt="">
        </div>

        <div id="projectbrief">
            <p class="subtitle">the build</p>
            <p class="copy">{{projectwork}}</p>
        </div>

<!-- <div class="vertical"></div> -->
        <div id="buttoncontainer">
            <div class="button" ref="codebutton"><p class="buttoncopy">source code</p></div>
            <div class="button" ref="sitebutton"><p class="buttoncopy">visit</p></div>
        </div>
    </div>

    </section>

</template>

<script>
//update: I figured out props
export default {
    props: ['projecttitle', 'projecttag', 'projectwork', 'projectdesc', 'projectposition', 'projectmock', 'projectscreens'],
    
    created(){
        window.addEventListener('resize', this.handleResize)
        this.handleResize();
    },
    mounted(){
    //     this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
    //     this.$refs.firstheader.$refs.layer.style.width="100vw";
    //     this.$refs.firstheader.$refs.logobox.style.width="90px";
    this.imagesizer();
         },
    data(){
        return{
            windowwidth: 0,
            smallimage: true,
            mockpath: this.projectmock
        }
    },
    methods: {
        handleResize(){
            this.windowwidth = window.innerWidth;
            this.findsize();
            //this.imagesizer();
        },
        findsize(){
            if(this.windowwidth < 700){
                this.smallimage = true;
            }if(this.windowwidth > 700){
                this.smallimage = false;
            }
            
            //only run image sizer at breakpoints
            if(this.windowwidth > 650 && this.windowwidth < 700){
                this.imagesizer();
            }if(this.windowwidth > 701 && this.windowwidth < 750){
                this.imagesizer();
            }
        },
        imagesizer(){
            //var imgpath = this.$refs.mockimg.src;
            var imgpath = this.projectmock;
            console.log(imgpath);
            var splitpath = imgpath.split(".");
            //save img extension
            var imgtype = splitpath[1];

            //add img size
            if(this.smallimage){
               splitpath[1]="1x." + imgtype;
            }else{
                splitpath[1]="2x." + imgtype;
            }
            console.log("split: " +splitpath);

            //rewrite src
            var jointpath = splitpath.join().replace(',','');
            this.mockpath = "./src/assets/images/"+jointpath;
            //this.$refs.mockimg.src = this.mockimg;
           console.log(jointpath);
        }
    }
}
</script>