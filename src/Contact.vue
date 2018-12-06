<template>
    <section id="contact">
        <h2 class="hide">Contact Me</h2>

        <div id="contactcontainer">
            <p class="title">contact</p>
            <p class="copy">Feel free to contact me here for inquiries at any time, and I will be sure to get back to you as soon as possible.</p>

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
                    message: ""
                }
            }
        },

        methods: {
            submithandle(){
                console.log(this.form.name + this.form.email + this.form.subject + this.form.message);
            }
        }
    }
     
</script>