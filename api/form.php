<?php

function send_email() {

    $name = 'name: '.$_POST['name'];
    $email = 'from: '.$_POST['email'];
    $subject = 'subject: '.$_POST['subject'];
    $message = 'message: '.$_POST['message'];

    $to = 'mariah.alderson@gmail.com';
    $headers = 'From: noreply@mariahalderson.com' . '\r\n';
    $headers .= "Reply-To:".$_POST['email'];

    //mail($to, $subject, $message, $headers);

    if(isset ($to, $subject, $message, $headers)){
        echo "everything set!" . '\r\n'. $to . '\r\n' . $subject . '\r\n' . $message . '\r\n' . $headers;
    }else{
        echo "we are missing one";
    }
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
  //if(mail($to, $subject, $message, $headers)){
    //if(isset($to, $subject, $message, $headers)){
      //header('Location:./forms/index.php?status=success');
      //header('Location: localhost:8080/portfolio');
  //}

  
    
    


}

send_email();
//echo "name: ".$_POST['name'];
header("Access-Control-Allow-Origin: *");
 header('Content-Type:application/json;charset=UTF-8');

?>