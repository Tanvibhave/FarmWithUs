


<?php

$con=mysqli_connect("localhost","root","student","farmwithus");
$status=$_POST["status"];
     
        $track_num=$_POST["track_num"];

        

       $query="UPDATE `orders` SET status='".$status."' WHERE track_num='".$track_num."' ";

       
        
        
        if (mysqli_query($con, $query )){
    echo "CHANGED  SUCCESSFULLY";
    
    include 'supp_index.php';
} else {
    echo "Error: " . $query . "<br>" . mysqli_error($con);
}
        
        mysqli_close($con);


        ?>

