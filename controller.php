<?php
include("db.php");



class RegisterAction extends db{
function save($a,$table){
$res=mysqli_query($this->connect(),"insert into $table values('".implode("','",$a)."')");
if($res){
	echo"Successfully Saved";
}else{
	echo"Saving failed";
}
	
	
	
}

	
}	

$ob=new RegisterAction;




/*if(isset($_POST["student"])){
$id=$_POST["id"];
$name=$_POST["name"];
$contact=$_POST["contact"];
$gender=$_POST["Gender"];
$grade=$_POST["grade"];

$data=array($id,$name,$contact,$gender,$grade);
$ob->save($data,"student");

	
	
}*/


?>