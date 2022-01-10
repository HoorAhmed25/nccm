<?php
/*
$serverName = "HOOR\MSSQLSERVER01";
$connectionInfo = array("Database"=>"nccm");
$conn = sqlsrv_connect($serverName, $connectionInfo);

if($conn){
    echo "connetion established.<br/>";   
}
else{
    echo "connection faild";
    die(print_r(sqlsrv_errors(), true));
}*/

$conn=mysqli_connect("localhost","root","");
if(!$conn){
	die('database connection failed'.mysqli_error());
}
$db_selected=mysqli_select_db($conn,"nccm");
if(!$db_selected){
	die("can't use test_db:".mysqli_error());
}


?>