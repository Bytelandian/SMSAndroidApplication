<?php

function parsing($address,$message){
	include('connection.php');
	$dbc=mysqli_connect($host,$user,$pass,$db) OR die('error connection');
	$string = "Booking Status";
	$pos = strpos(strtolower($message),strtolower($string));
	if ($pos === false) {
		return "Error in user request";
	}
	if($pos>0){
		return "Error in user request";
	}
	$b_msg = explode(" ",$message);
	$size = sizeof($b_msg);

	if($size<4){
		return "User request is incomplete or wrong";
	}
	$book_num = $b_msg[2];
	$name = substr($message,strpos(strtolower($message),strtolower($b_msg[3])));
	$query = "select * from status where booking_num='$book_num' and name='$name'";
	$result = mysqli_query($dbc,$query) OR die('error in getting status');
	$res="";
	while($row1=mysqli_fetch_array($result)) {
		$res= $row1['status'];
		return $res;
	}
	if($res == ""){
		return "No Record Found";
	}
}
?>