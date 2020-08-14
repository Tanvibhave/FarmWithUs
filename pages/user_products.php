
<?php
    session_start();

    if (!isset($_SESSION['id']) ||(trim ($_SESSION['id']) == '')) {
        header('location:user_login_page.php');
        exit();
    }
?>



<!DOCTYPE html>
<html>
<head lang="en">
  <title>FarmWithUs</title>

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
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../assets/css/demo.css" rel="stylesheet" />

    <!--     inserted     -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">

</head>
<body class="index-page sidebar-collapse">
    <div class="wrapper"><br>
        <div class="main">
            <div class="section section-basic">
                <div class="container">
                      <h2>All Product List</h2>
                      <a class="btn btn-primary btn-round" href="user_index.php"><i class="now-ui-icons arrows-1_minimal-left"></i> &nbsp Back to index</a>
                      <hr color="orange"> 




                      <div class="row" style="margin-top: 50px;">
 
                        <div class="col-md-12">


                        <?php
                                      include('../config/dbconn.php');

                                      $action = isset($_GET['action']) ? $_GET['action'] : "";
                                      if($action=='deleted'){
                                          echo "<div class='alert alert-success'>Record was deleted.</div>";
                                      }
                                      $query = "SELECT * FROM products ORDER BY prod_id ASC";  
                                      $result = mysqli_query($dbconn,$query);
                                      
                                      
                                            if(mysqli_num_rows($result) > 0)  
                {  
                     while($row = mysqli_fetch_array($result))  
                     {  
                ?>  



                        <div class="container-fluid" style="padding: 10px;margin-top:5px;border-radius: 4px;border: 1px solid #f96331;" >
                          
                          <div class="row">
                            <div class="col-md-4 text-center">
                              <img style="border-radius: 8px;" src="../pics/<?php echo $row["prod_pic1"]; ?>" class="img-responsive" /><br />  
                            </div>
                            <div class="col-md-8 text-center">
                              
                              <div class="row">

                              <div class="col-md-12 text-center">
                                
                                <h1 style="text-align:center"><?php echo $row["prod_name"]; ?></h1>
                                <hr/>
                                <p><?php echo $row["prod_desc"]; ?></p>
                                <hr/>

                                <div class="row">
                                  
                                  <div class="col-md-3 text-center" style="padding: 0px">

                                    <h5 style="margin-top: 10px;">Rs.<?php echo $row["prod_price"]; ?></h5>
                                    
                                  </div>
                                  <div class="col-md-6 text-center" style="padding: 0px;">
                                    
                                    <p style="color: #bb575b;margin-top: 14px;"><?php echo $row["prod_qty"] ;?> Kilo's left</p>
                                  </div>
                                  <div class="col-md-3 text-center" style="padding: 0px;">
                                  <?php echo "<td><a type='button' class='btn btn-primary btn-round' href=\"user_prooductdetails.php?prod_id=$row[prod_id]\">View</a></td>"; ?>
                                  </div>
                                </div>

             
                              </div>

                                
                              </div>
                            </div>
                            
                          </div>

                        </div>  

                   <?php  
                     }  
                }  
                ?>   

                        </div>
                        
                          
                        </div>
                      </div>

                    

                
             
        </div>
<br><br><br><br>


    </div>
</body>


</html>