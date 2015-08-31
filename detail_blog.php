<?php
include "koneksi.php";


if(isset($_GET['id'])){
	$id = $_GET['id'];
}


$sql = "SELECT * FROM blog WHERE id = ".$id."";

$exe = mysql_query($sql);

$response = array();


if($exe){
	$response['blog_detail'] = array();
	while($data = mysql_fetch_array($exe)){
		$d['id'] = $data['id'];
		$d['judul'] = $data['judul'];
		$d['konten'] = $data['konten'];
		$d['id_user'] = $data['id_user'];

		array_push($response['blog_detail'], $d);
 	}
 	$response["success"] = 1;
    echo json_encode($response);

}else{
	$response["success"] = 0;
    $response["message"] = "Tidak ada data";
    echo json_encode($response);
}

?>