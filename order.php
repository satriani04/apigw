<?php
include "koneksi.php";

// array for JSON response
$response = array();

if( !(empty($_POST['item_name'])))
{
    $item_name=$_POST['item_name'];

    $result = mysql_query("INSERT INTO myorder(item) VALUES('".$item_name."')");   

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