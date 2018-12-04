<template>
    <section id="contact">
        <h2 class="hide">Contact Me</h2>

        <!-- <app-header ref="firstheader"></app-header> -->

        <div id="contactcontainer">
            <p class="title">contact</p>
            <p class="copy">Feel free to contact me here for inquiries at any time, and I will be sure to get back to you as soon as possible.</p>

            <div id="formcontainer">
                <form action="./api/form.php" method="POST">
                    <label for="name" type="text">name:</label>
                    <input name="name" class="formfield" autofocus>

                    <label for="email" type="email">email:</label>
                    <input name="email" class="formfield">

                    <label for="subject" type="text">subject:</label>
                    <input name="subject" class="formfield">

                    <label for="message" type="text">message:</label>
                    <textarea name="message" class="formfield"></textarea>
                    <button type="submit" class="button">submit</button>
                </form>
            </div>
        </div>
    </section>
</template>





<script>
    //  export default{
    //      mounted(){
    //     //fix header styling
    //     this.$refs.firstheader.$refs.homeheader.classList.remove("fullscreen");
    //     this.$refs.firstheader.$refs.layer.style.width="100vw";
    //     this.$refs.firstheader.$refs.logobox.style.width="90px";
    //     }
    //  }
</script>