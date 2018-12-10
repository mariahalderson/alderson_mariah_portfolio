<template>
    <section id="contact">
        <h2 class="hide">Contact Me</h2>

        <div id="contactcontainer">
            <p class="title">contact</p>
            <p class="copy">Feel free to contact me here for inquiries at any time, and I will be sure to get back to you as soon as possible.</p>

            <div id="statusmessage" ref="messagebckgd">
                <p class="copy" ref="messagecontainer"></p>
            </div>
            
            <div id="formcontainer">
                <form action="http://localhost/alderson_mariah_portfolio/api/form.php" method="POST">
                    <label for="name" type="text">name:</label>
                    <input name="name" class="formfield" v-model="form.name">

                    <label for="email" type="email">email:</label>
                    <input name="email" class="formfield" v-model="form.email">

                    <label for="subject" type="text">subject:</label>
                    <input name="subject" class="formfield" v-model="form.subject">

                    <label for="message" type="text">message:</label>
                    <textarea name="message" class="formfield" v-model="form.message"></textarea>
                    <button type="submit" class="button">submit</button>
                </form>
            </div>

        </div>

        <app-footer ref="pagefooter"></app-footer>
    </section>
</template>





<script>
     export default{
        data(){
            return{
                form:{
                    name: "",
                    email: "",
                    subject: "",
                    message: "",
                    //successurl: "true",
                    //errorurl: "error",
                    sendmessage: "test"
                }
            }
        },

        mounted(){
            this.messageactions();
        },

        methods: {
            submithandle(){
                console.log(this.form.name + this.form.email + this.form.subject + this.form.message);
            },

            messageactions(){
                var successmsg = "true";
                var errormsg = "error";
                if(window.location.href.indexOf(successmsg) > -1){
                    console.log("message sent");
                    this.$refs.messagecontainer.innerHTML = "message sent successfully!";
                    this.$refs.messagebckgd.classList.add("success");
                }else if(window.location.href.indexOf(errormsg) > -1){
                    console.log("message error");
                    this.$refs.messagecontainer.innerHTML = "oops! something went wrong";
                    this.$refs.messagebckgd.classList.add("error");
                }else{
                    console.log("??? i dont know");
                }
             },

             successmsg(){
                 this.$refs.messagecontainer.innerHTML = this.successmessage;
                 this.$refs.messagebckgd.style.opacity = "1";
                 this.$refs.messagebckgd.classList.add("success");
             },

             errormsg(){
                 this.$refs.messagecontainer.innerHTML = this.errormessage;
                 this.$refs.messagebckgd.style.opacity = "1";
                 this.$refs.messagebckgd.classList.add("error");
             }

        }
    }
</script>