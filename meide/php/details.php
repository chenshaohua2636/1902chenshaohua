<?php
    include "conn.php";
	
	$sid=$_GET['sid'];
	
	$result=mysql_query("select * from mideapic_details where sid=$sid ");
	
	$wronglist=mysql_fetch_array($result,MYSQL_ASSOC);
	
	echo json_encode($wronglist);
	
    
?>