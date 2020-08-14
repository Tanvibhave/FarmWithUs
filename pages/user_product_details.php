<?php
    session_start();

    if (!isset($_SESSION['id']) ||(trim ($_SESSION['id']) == '')) {
        header('location:user_login_page.php');
        exit();
    }
?>




                        <?php

                        include('../config/dbconn.php');
                        $prod_id=$_GET['prod_id'];
                        $query = "SELECT * FROM products WHERE prod_id='$prod_id'";
                        $result = mysqli_query($dbconn,$query);
                        while($res = mysqli_fetch_array($result)){

                                    $prod_id=$res['prod_id'];
                                    $prod_price=$res['prod_price'];
                                    $user_id = $_SESSION['id'];


                                    if (isset($_POST['submit'])){

                                        $prod_id=$prod_id;
                                        $prod_price=$prod_price;
                                        $prod_qty = $_POST['prod_qty'];                                       
                                        $total = $prod_price * $_POST['prod_qty'];         
                                        $user_id = $user_id;

                                        $date=date("Y-m-d");


                                        if(empty($prod_qty)){    
            
                                            if(empty($prod_qty)) {
                                            echo "<br><center><h4><font color='red'><b>Error!</b> Enter Product Quantity.</font></h4></center>";
                                        }

                                        } else {

                                        mysqli_query($dbconn,"INSERT INTO order_details (prod_id,prod_qty,total,user_id) 
                                                VALUES ('$prod_id','$prod_qty','$total','$user_id')") or die(mysql_error());
                                            ?>
                                         
                                            <script type="text/javascript">
                                                alert("Product Added To Cart!");
                                                window.location = "user_cart.php";
                                            </script>
   
                                            <?php 
                                        }
                                        }
                                            } ?>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>FarmWithUs</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your projects -->
    <link href="../assets/css/demo.css" rel="stylesheet" />

    <!-- custom css file -->
    <style type="text/css">
        /* hide number input typr arrow */
        input[type=number]::-webkit-inner-spin-button, 
        input[type=number]::-webkit-outer-spin-button 
        { 
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            margin: 0; 
        }
    </style>

</head>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>

    <script type="text/javascript" charset="utf-8" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf-8" language="javascript" src="js/DT_bootstrap.js"></script>


<body class="index-page sidebar-collapse">
    <!-- End Navbar -->
<div class="wrapper">
<br>
<div class="main">
    <div class="section section-basic">

    <div class="section" id="carousel">
        <div class="container">
            <h2>Product Details</h2>
            <a class="btn btn-primary btn-round" href="user_index.php"><i class="now-ui-icons arrows-1_minimal-left"></i> &nbsp Back to index</a>
            <hr color="orange">
            <div class="col-md-12">
                <div class="row justify-content-center">
                    <div class="col-8">
         

<?php
    include('../config/dbconn.php');
    $prod_id=$_GET['prod_id'];
    $query = "SELECT * FROM products WHERE prod_id='$prod_id'";
    $result = mysqli_query($dbconn,$query);
    while($res = mysqli_fetch_array($result)) {  
        //getting product id
        
    
?>   
                
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2" class="active"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <?php if($res['prod_pic1'] != ""): ?>
                            <img class="d-block" src="../pics/<?php echo $res['prod_pic1']; ?>" alt="First slide">
                            <?php else: ?>
                            <img src="../pics/default.png">
                            <?php endif; ?>
                            <div class="carousel-caption d-none d-md-block">
                                <h5><?php echo $res['prod_name']; ?></h5>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <?php if($res['prod_pic2'] != ""): ?>
                            <img class="d-block" src="../pics/<?php echo $res['prod_pic2']; ?>" alt="Second slide">
                            <?php else: ?>
                            <img src="../pics/default.png">
                            <?php endif; ?>
                            <div class="carousel-caption d-none d-md-block">
                                <h5><?php echo $res['prod_name']; ?></h5>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <?php if($res['prod_pic3'] != ""): ?>
                            <img class="d-block" src="../pics/<?php echo $res['prod_pic3']; ?>" alt="Third slide">
                            <?php else: ?>
                            <img src="../pics/default.png">
                            <?php endif; ?>
                            <div class="carousel-caption d-none d-md-block">
                                <h5><?php echo $res['prod_name']; ?></h5>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <i class="now-ui-icons arrows-1_minimal-left"></i>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <i class="now-ui-icons arrows-1_minimal-right"></i>
                    </a>
                    </div>
                </div>
            </div>
        </div>

        <h4><br><br>
        <ul><b>Serial number: 
        <span style="color:green;"><?php echo $res['prod_serial']; ?></span></b>
        </ul>
        <ul><b>Product name: </b> 
        <?php echo $res['prod_name']; ?>
        </ul>   
        <ul><b>Description: </b>
        <?php echo $res['prod_desc']; ?>
        </ul>
        <ul><b>Type: </b>
        <?php echo $res['category']; ?>
        </ul>
        <ul><b>Price: </b>
        <?php echo 'rs'.$res['prod_price'].''; ?>
        </ul>
        <ul>
        <?php  $prod_qty=$res['prod_qty'];?> 
        <?php
        if ($prod_qty<=0){
        ?>
         <span style="color:red;">Product Sold Out!</span>   
         <?php
        }else{
       ?>
       <b>Items in stock: </b><?php echo $res['prod_qty'];?>
       </ul>
       <?php 
    }
?>
        <?php }?> 

        </h4>

            <!-- Button trigger modal -->
            <button class="btn btn-success btn-round pull-right" data-toggle="modal" data-target="#myModal">
                <i class="now-ui-icons shopping_cart-simple"></i>Add To Cart</button>

            <!-- Modal Core -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                <form action="" method="post" enctype="multipart/form-data">
                <div class="form group">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Enter Quantity:</h4>
                  </div>
                  <div class="modal-body">

                    <div class="input-append">
                        <?php
                            echo "<select class='btn btn-warning btn-round dropdown-toggle' size='1' name='prod_qty' id='prod_qty'>";
                            $i=1; $prod_qty=$prod_qty;
                            while ($i <= $prod_qty ){
                                echo "<option value=".$i.">".$i."</option>";
                                $i++;
                            }
                            echo "</select>";
                        ?>
                    </div>
                    
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-primary btn-round" data-dismiss="modal">Close</button>
                    <a><button type="submit" name="submit" class="btn btn-success btn-round">Order</button></a>
                  </div>
                </div>
                </form>

              </div>
            </div>
            </div>

            
   </div>
</div>
<!-- Feedback form start -->
<div  style="background: honeydew;padding: 30px;">
<?php
// including the database connection file
include("../config/dbconn.php");
if(isset($_POST['feedback_submit']))
{   
    $feedback=$_POST['feedback'];
    $ratings=$_POST['ratings'];

    $prod_id=$_GET['prod_id'];
    $query = "SELECT * FROM products WHERE prod_id='$prod_id'";
    $result = mysqli_query($dbconn,$query); 
    $res = mysqli_fetch_array($result);
    $supp_id = $res['supp_id'];

    $user_id = $_SESSION['id'];

   

    // checking empty fields
    if(empty($feedback) || empty($ratings)) 
    {    
            
        if(empty($feedback)) 
        {
            echo "<center><font color='red'>Feedback field is empty!</font><center><br/>";
        }
        
        if(empty($ratings)) 
        {
            echo "<center><font color='red'>Ratings field is empty!</font></center><br/>";
        }   
    } 
    else if($ratings < 1 || $ratings > 5)
    {
        echo "<center><font color='red'>Ratings should be between 1 to 5!</font></center><br/>";
    }
    else 
    {    
        //updating the table
        $query = "INSERT INTO feedback (user_id, supp_id, prod_id, ratings, feedback_remark) 
                VALUES ('$user_id','$supp_id','$prod_id','$ratings','$feedback')";

        $result = mysqli_query($dbconn,$query);
        
        if($result)
        {
            echo "<center><font color='green'>Feedback successfully sent</font></center><br/>";
        }
        else
        {
            echo "<center><font color='red'>Failed to send feedback!</font></center><br/>";
        }
        
    }
} ?>



    
    <form class="form" method="post" action="">
        <div>
            <div>
                <h4 style="width: 25%;color: white;background: green;border: 1px solid green;margin-left: 37%;border-radius: 50px;text-align: center;">Product Feedback</h4>
            </div>
            <div>
                <input type="number" step="any" id="ratings" name="ratings" class="form-control" placeholder="Ratings" style="width: 30%;border: 1px solid #e5e5e5;border-radius: 50px;padding: 10px;margin-left: 34%;background: white;" required>
            </div>
            <br>
            <div>
                 <textarea id="feedback" name="feedback" class="form-control" placeholder="Feedback" style="width: 40%;border: 1px solid #e5e5e5;border-radius: 50px;height: 100px;padding: 20px;margin-left: 29%;background: white;" required></textarea> 
            </div>
        </div>
        <br>
        <div>
            <button type="submit" class="btn waves-effect waves-light" id="feedback_submit" name="feedback_submit" style="width: 25%;color: white;background: limegreen;border: 1px solid limegreen;margin-left: 37%;border-radius: 50px;">
                Send Feedback
            <span class="glyphicon glyphicon-floppy-save"></span>
            </button>
        </div>
    </form>
            
</div>

<!-- Feedback form end -->




        <br>
       </div>
        </div>
    </div>
</div>
 <footer class="footer" data-background-color="black">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="" target="_blank">
                                Creative ABC
                            </a>
                        </li>
                        <li>
                            Elective02
                        </li>
                    </ul>
                </nav>
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, Designed and Coded by Serve(8) Web Solutions, Inc.
                </div>
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="../assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();
    });

    function scrollToDownload() {

        if ($('.section-download').length != 0) {
            $("html, body").animate({
                scrollTop: $('.section-download').offset().top
            }, 1000);
        }
    }
</script>

</html>