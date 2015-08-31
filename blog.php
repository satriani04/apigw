<?php
include "koneksi.php";


if(isset($_GET['user'])){
	$user = $_GET['user'];
}


$sql = "select * from blog where id_user = ".$user." ";

$exe = mysql_query($sql);

$response = array();


if($exe){
	$response['blog'] = array();
	while($data = mysql_fetch_array($exe)){
		$d['id'] = $data['id'];
		$d['judul'] = $data['judul'];
		$d['konten'] = $data['konten'];
		$d['id_user'] = $data['id_user'];
		$d['tanggal'] = $data['tanggal'];

		array_push($response['blog'], $d);
 	}
 	$response["success"] = 1;
    echo json_encode($response);

}else{
	$response["success"] = 0;
    $response["message"] = "Tidak ada data";
    echo json_encode($response);
}

?>