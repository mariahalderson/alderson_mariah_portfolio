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

    // if(isset ($to, $subject, $message, $headers)){
    //     header('Location:http://mariahalderson.com/#/contact?sent=true');
    // }else{
    //     header('Location:http://mariahalderson.com/#/contact?sent=error');
    // }
    //eth
    // if(empty($_POST['email'])){
    //     header('Location:/index.php?status=error');
    //     exit();
    // }
    //if fields are not filled, redirect to form with no success message
    // if(!isset($_POST['message']) || !isset($_POST['email'])){
    //     header('Location:/forms/index.php');
    //     exit();
    // }

//   $to = 'mariah.alderson@gmail.com';
//   $subject = 'Email from Week 12';
//   $message = 'Message Body:'.$_POST['message'];
//   $headers = 'From: noreply@mariahalderson.com' . '\r\n'; //the \r\n is a line break
//   $headers .= "Reply-To:".$_POST['email'];

  //use this function on host to send message
  //mail($to, $subject, $message, $headers);

  //success status for index.php
//   if(isset ($to, $subject, $message, $headers)){
//     header('Location:/forms/index.php?status=success');
// }

//use this if instead of above when on host 
//   if(mail($to, $subject, $message, $headers)){
//       header('Location:./forms/index.php?status=success');
//   }
    
    //header('Location: ./form.php');


}

send_email();
//echo "name: ".$_POST['name'];
header("Access-Control-Allow-Origin: *");
 header('Content-Type:application/json;charset=UTF-8');

?>