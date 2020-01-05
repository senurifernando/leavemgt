<?php
include("controller.php");



if(isset($_POST["userRegister"])){

$fname=$_POST["First_Name"];
$lname=$_POST["Last_Name"];
$gender=$_POST["Gender"];
$designation=$_POST["Designation"];
$faculty=$_POST["Faculty"];
$department=$_POST["Department"];
$username=$_POST["Username"];
$password=$_POST["password_1"];
$cpassword=$_POST["password_2"];
$email=$_POST["email"];
$address=$_POST["address"];

$data=array($fname,$lname,$gender,$designation,$faculty,$department,$username,$password,$cpassword,$email,$address);
$ob->save($data,"sign_up");

	
}

if(isset($_POST["ResetPassword"])){

$userId=$_POST["uname"];
$password=$_POST["pass"];
$confirm=$_POST["cpass"];


$data=array($userId,$password,$confirm);
$ob->save($data,"reset_password");

	
}

?>