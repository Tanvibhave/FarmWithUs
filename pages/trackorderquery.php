<?php
        
 $con=mysqli_connect("localhost","root","student","farmwithus");
        
   $track_num=$_POST['track_num'];     
        
 if(mysqli_connect_errno())
    {
        echo"failed to connect:".mysqli_connect_error();
    }
    else{
         $query="select track_num,firstname ,lastname,email , status  FROM `orders` WHERE track_num='".$track_num."'";

if($result=mysqli_query($con,$query))

{
if(mysqli_num_rows($result)>0){
    echo "<table border='1' bordercolor='white'
bgcolor='grey'>";

echo"<tr><th>track_num</th><th>firstname</th><th>lastname</th><th>email</th><th>status</th></tr>";
            while($row= mysqli_fetch_array($result))
            {
    
                echo"
                <tr><td>".$row['track_num'].
                "</td><td>".$row['firstname'].
                "</td><td>".$row['lastname'].
                "</td><td>".$row['email'].
                "</td><td>".$row['status'].
                "</td></tr>";
            }
            echo"</table>";
}
mysqli_free_result($result);
}

 else {
    echo 'no records';
}
    }

mysqli_close($con);
        
        ?>
        
        
        
        
        
        