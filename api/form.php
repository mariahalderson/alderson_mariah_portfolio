<?php

function send_email() {

    $name = 'name: '.htmlentities($_POST['name']);
    $email = $_POST['email'];
    $subject = 'subject: '.htmlentities($_POST['subject']);
    $message = 'message: '.htmlentities($_POST['message']);

    if(filter_var($email, FILTER_VALIDATE_EMAIL)){
        $email = $_POST['email'];
    }else{
        $email = null;
    }

    $to = 'mariah.alderson@gmail.com';
    $headers = 'From: noreply@mariahalderson.com' . '\r\n';
    $headers .= "Reply-To:".$_POST['email'];

    if(isset ($to, $subject, $message, $headers, $email)){
        header('Location:http://mariahalderson.com/#/contact?sent=true');
    }else{
        header('Location:http://mariahalderson.com/#/contact?sent=error');
        exit();
    }

    mail($to, $subject, $message, $headers);

}

send_email();

header("Access-Control-Allow-Origin: *");
header('Content-Type:application/json;charset=UTF-8');

?>