<?php
include "koneksi.php";
$nama=$_POST['nama'];
$email = $_POST['email'];
$password=$_POST['password'];
 
$query = "insert into user(nama,email,password) values('".$nama."','".$email."','".$password."')";
//print_r($query);exit();
$hasil = mysql_query($query);
if($hasil)
    {
    $response["success"] = "1";
        $response["message"] = "Data sukses diinput";
        echo json_encode($response);
    }
    else
    {$response["success"] = "0";
     $response["message"] = "Maaf , terjadi kesalahan";
 
        // echoing JSON response
        echo json_encode($response);
    }
?>