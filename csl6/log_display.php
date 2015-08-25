<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style>
body{
	text-align:center;
	background-image:url(back.png);
}
.topheader  {
	width:100%;
	box-shadow:5px 2px 3px #111;
	position:fixed;
	z-index:50;
	background-color:white;
	left:0px;
	height:60px;
	top:0px;	
}

.bodysub{
	width:1000px;
	position:relative;
	margin-left:auto;
	margin-right:auto;
}
table {
	text-align:center;
	position:absolute;
	left:0px;
	top:150px;
    width:100%;
}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 5px;
    text-align: left;
}
table tr:nth-child(even) {
    background-color: #eee;
}
table tr:nth-child(odd) {
   background-color:#fff;
}
table th	{
    background-color: black;
    color: white;
}
</style>

</head>

<body>
<div id="topheader" class="topheader"><h2>Log Result Display</h2></div>
</div>
<div id="bodysub" class="bodysub">

<?php
include('connection.php');
$dbc=mysqli_connect($host,$user,$pass,$db) OR die('error in database connection');
$time = array();
$num = array();
$msg = array();
$i=0;
$query="select * from log";
$result = mysqli_query($dbc,$query) OR die('error in obtaining result');

?>

<table>
<tr>
<th>Query Time</th>
<th>Contact Info.</th>
<th>Requested Query</th>
</tr>
<?php
while($row = mysqli_fetch_array($result)){
	echo "<tr>";
	echo "<td>".$row['timestamp']."</td>";
	echo "<td>".$row['user_num']."</td>";
	echo "<td>".$row['message']."</td>";
	echo "</tr>";
}
?>
</table>
</div>
</body>
</html>