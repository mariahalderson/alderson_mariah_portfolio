<template id="projectinfotest">
    <section id="project">
        <h2 class="hide">Portfolio Project: {{projecttitlle}}</h2>

        <div id="projectcontainer">

            <div class="imgcontainer">
                <img :src="mockpath" alt="mockup" ref="mockimg">
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
                <!-- <img :src="'./src/assets/images/' + projectscreens" alt="mockup"> -->
                <img :src="screenpath" alt="mockup">
            </div>


            <div id="projectbrief">
                <p class="subtitle">the build</p>
                <p class="copy">{{projectwork}}</p>
            </div>


            <div id="buttoncontainer">
                <!-- <div class="button" ref="codebutton"><p class="buttoncopy">source code</p></div>
                <div class="button" ref="sitebutton"><p class="buttoncopy">visit</p></div> -->
                <router-link to="/portfolio">
                    <div class="button" ref="sitebutton"><p class="buttoncopy">back</p></div>
                </router-link>
            </div>

        </div>

        <app-footer ref="pagefooter"></app-footer>

    </section>

</template>






<script>

export default {
    props: ['projecttitle', 'projecttag', 'projectwork', 'projectdesc', 'projectposition', 'projectmock', 'projectscreens'],
    
    created(){
        window.addEventListener('resize', this.handleResize)
        this.handleResize();
    },

    mounted(){
        this.imagesizer();
    },

    data(){
        return{
            windowwidth: 0,
            smallimage: true,
            mockpath: this.projectmock,
            screenpath: this.projectscreens
        }
    },

    methods: {

        handleResize(){
            this.windowwidth = window.innerWidth;
            this.findsize();
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

        imagesizer(image){
            
            var imgpath = this.projectmock;
            var imgpath2 = this.projectscreens;

            var splitpath = imgpath.split(".");
            var splitpath2 = imgpath2.split(".");
            //save img extension
            var imgtype = splitpath[1];
            var imgtype2 = splitpath2[1];

            //add img size
            if(this.smallimage){
               splitpath[1]="1x." + imgtype;
               splitpath2[1]="1x." + imgtype2;
            }else{
                splitpath[1]="2x." + imgtype;
                splitpath2[1]="2x." + imgtype2;
            }

            //rewrite src
            var jointpath = splitpath.join().replace(',','');
            var jointpath2 = splitpath2.join().replace(',','');

            console.log("joined: " +jointpath);
            console.log("joined: " +jointpath2);

            this.mockpath = "./src/assets/images/"+jointpath;
            this.screenpath = "./src/assets/images/"+jointpath2;
            
            console.log(image);
        }

    }
}

</script>