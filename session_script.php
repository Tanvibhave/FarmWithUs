<?php 

session_start();
require 'config/dbconn.php';
if (isset($_SESSION["supp_uname"])){


	 $query=mysqli_query($dbconn,"SELECT * FROM `supplier` WHERE supp_uname='".$_SESSION['supp_name']."' AND supp_password='".$_SESSION['supp_password']."'");
	  $res=mysqli_fetch_array($query);
	

		$supp_name =$_SESSION["supp_name"];
		$supp_id =$_SESSION["id"];
	
		
		// $user_type =$_SESSION["user_type"] ;
		// $type_id= $_SESSION["type_id"] ;



}else{

	
}

?>