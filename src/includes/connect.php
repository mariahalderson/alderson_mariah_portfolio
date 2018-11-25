<?php

$host = "localhost";
$un = "root";
$pw = "";
$dbname = "db_portfolio";

$connect = mysqli_connect($host, $un, $pw, $dbname);
mysqli_set_charset($connect, 'utf8');

if(!$connect){
    echo "something broke!";
    exit;
}

echo "connected!"; 

?>