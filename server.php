<?php

session_start();

$con= mysqli_connect('localhost','root','');
mysqli_select_db($con,'sign up');

$fname=$_POST['firstname'];
$lname=$_POST['lastname'];
$position=$_POST['position'];
$uname=$_POST['username'];
$email=$_POST['email'];
$faculty=$_POST['faculty'];
$department=$_POST['department'];
$password=$_POST['password'];

$s = "select*from register where uname='$username'";

$result = mysqli_fetch($con, $s);
$num= mysqli_num_rows($result);
if(num==1){
	
	echo"username Already Taken";
	
}else{
	
	$reg=mysqli_query($con,"INSERT into register
		/*firstname,lastname,position,username,email,facolty,department,password*/
	       values('$fname','$lname','$position','$uname','$email','$faculty','$department','$password'))";

	mysqli_query($con,$ref);
	echo"registration success";
	
	
}
?>