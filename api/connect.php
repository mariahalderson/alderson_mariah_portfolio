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
$rows = array(
    'test'=>'test'
);
//echo "connected!"; 

if(isset($_GET["imagename"])) {
$images = $_GET["imagename"];
$query = "SELECT * FROM tbl_images WHERE images_name = '$images'";
$result = mysqli_query($connect, $query);
$rows = array();

while($row = mysqli_fetch_assoc($result)){
    $rows[] = $row;
}
}

if(isset($_GET["projects"])) {
    $projects = $_GET["projects"];
    $query = "SELECT * FROM tbl_proj";
    $result = mysqli_query($connect, $query);
    $rows = array();
    
    while($row = mysqli_fetch_assoc($result)){
        $rows[] = $row;
    }
    }

// $query= "SELECT * FROM tbl_images WHERE images_name = 'logo'";
// $result = mysqli_query($connect, $query);
// $rows = array();

// while($row = mysqli_fetch_assoc($result)){
//     $rows[] = $row;
// }
header("Access-Control-Allow-Origin: *");
header('Content-Type:application/json;charset=UTF-8');

echo json_encode($rows);

?>