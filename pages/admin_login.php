<?php

session_start();
    include('../config/dbconn.php');
    if($_SERVER["REQUEST_METHOD"] == "POST"){
            
        $username=$_POST['username'];
        $password=$_POST['password'];

        $user = mysqli_real_escape_string($dbconn,$username);
        $pass = mysqli_real_escape_string($dbconn,$password);

       


        date_default_timezone_set('Asia/Manila');
        $date = date("Y-m-d H:i:s");            


        $query=mysqli_query($dbconn,"SELECT * FROM `admin` WHERE username='$user' AND password='$pass'");
        $res=mysqli_fetch_array($query);
        $id=$res['user_id'];

        if (mysqli_num_rows($query)<1){
            $_SESSION['msg']="Login Failed, Admin not found!";
            header('Location:admin_login_page.php');
        }

        else{
            $res=mysqli_fetch_array($query);
            $_SESSION['id']=$res['user_id'];
            header('Location: admin_index.php');
            
            $_SESSION['id']=$id;
            $remarks="(Administrator) has logged in the system at ";  
            mysqli_query($dbconn,"INSERT INTO logs(user_id,action,date) VALUES('$id','$remarks','$date')")or die(mysqli_error($dbconn));
            }
        }
?>
