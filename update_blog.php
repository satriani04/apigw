<?php
include "koneksi.php";

// array for JSON response
$response = array();

if( !(empty($_POST['judul'])) && !(empty($_POST['konten'])));
{
    $judul=$_POST['judul'];
	$konten = $_POST['konten'];
	$id = $_POST['id'];

	$query = "update blog set judul = '".$judul."', konten = '".$konten."' where id = ".$id." ";
	//print_r($query);
		
    $result = mysql_query($query); 
	

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