<?php
 include "koneksi.php";

// array for JSON response
$response = array();
if( isset($_GET['id'] ) ) {

    $id=$_GET['id'];
   
    $result = mysql_query("delete from blog where id=".$id." ");
   
    $row_count = mysql_affected_rows();

    if($result){
        $response["success"] = 1;
        $response["message"] = "Deleted Sucessfully.";
       }
    else{
        $response["success"] = 0;
        $response["message"] = "Failed To Delete"; 
     } 
  // echoing JSON response
  echo json_encode($response);

 }
?>