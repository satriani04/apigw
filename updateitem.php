<?php
  include "koneksi.php";

  // array for JSON response
  $response = array();

if( isset($_GET['id'] ) && isset($_GET['item']) ) {
    $id=$_GET['id'];
    $item=$_GET['item'];
	$sql = "update myorder set item='".$item."' where id=".$id." ";
	//print_r($sql);exit();
    $result = mysql_query($sql) or die(mysql_error());
	
	

    $row_count = mysql_affected_rows();

    if($result){
         $response["success"] = 1;
         $response["message"] = "Updated Sucessfully.";
     }
    else{
        $response["success"] = 0;
        $response["message"] = "Failed To Update."; 
     } 
  // echoing JSON response
  echo json_encode($response);
}
?> 