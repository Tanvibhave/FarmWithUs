<?php
    session_start();
    include('../config/dbconn.php');
    if($_SERVER["REQUEST_METHOD"] == "POST"){
            
        $supp_uname=$_POST['supp_uname'];
        $supp_password=$_POST['supp_password'];

        $user = mysqli_real_escape_string($dbconn,$supp_uname);
        $pass = mysqli_real_escape_string($dbconn,$supp_password);

       


        date_default_timezone_set('Asia/Kolkata');
        $date = date("Y-m-d H:i:s");            


        $query=mysqli_query($dbconn,"SELECT * FROM `supplier` WHERE supp_uname='$user' AND supp_password='$pass'");
        $res=mysqli_fetch_array($query);
        $id=$res['supp_id'];

        if (mysqli_num_rows($query)<1){
            $_SESSION['msg']="Login Failed, Supplier not found!";
            header('Location:supplierLogin_Page.php');
        }

        else{
            $res=mysqli_fetch_array($query);
            $_SESSION['id']=$res['supp_id'];
            header('Location: supp_index.php');
            
            $_SESSION['id']=$id;
            $remarks="(Supplier) has logged in the system at ";  
            mysqli_query($dbconn,"INSERT INTO logs(supp_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($dbconn));
            }
        }
?>
