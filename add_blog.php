<?php
include "koneksi.php";

// array for JSON response
$response = array();

if( !(empty($_POST['title'])) && !(empty($_POST['konten'])));
{
    $judul=$_POST['title'];
	$konten = $_POST['konten'];
	$id_user = $_POST['id_user'];

    $result = mysql_query("INSERT INTO blog(judul,konten,id_user) VALUES('".$judul."','".$konten."',".$id_user.")");   

    if($result>0){
           $response["success"] = 1;
         }   
     else{
           $response["success"] = 0;
         }
     // echoing JSON response
     echo json_encode($response);
}

?> 