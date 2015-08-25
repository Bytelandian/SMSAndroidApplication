<?php

if(isset($_POST['SenderAddress']) && isset($_POST['Message'])){

	include('connection.php');
	include('main_function.php');
	$dbc=mysqli_connect($host,$user,$pass,$db) OR die('error connection');
	$address= $_POST['SenderAddress'];
	$message= $_POST['Message'];

	//inserting data in log table
	$query = "insert into log values(0,'$address','$message',now())";
	$result = mysqli_query($dbc,$query) OR die('error in inserting log');
	
	$response = parsing($address,$message);
	
	
	$arr = array(
    "replyMessage" => $response, 
	);
	$output=$arr;
	print(json_encode($output));


}

?>




