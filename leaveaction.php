<?php
$emp=$_POST["EmpID"];

$con=mysqli_connect("localhost","root","","leavemgt");
if ($con) {
	echo "SUCCESS";
		}else{
			echo "FAIL TO CONNECT";
		}
?>