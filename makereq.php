<?php 
session_start();
include('includes/config.php');
$user=$_SESSION['username'];
extract($_POST);
$rdate=date("d-m-Y");
if(isset($reg))
{
	
    $uploadDir = "img/req/";
    $file = $uploadDir . basename($_FILES["file"]["name"]);

    if (move_uploaded_file($_FILES["file"]["tmp_name"], $file)) {
    } else {
        $msg = "Error uploading file.";
    }


    $mq=mysqli_query($con,"select max(id) from user_requir");
    $mr=mysqli_fetch_array($mq);
    $id=$mr['max(id)']+1;
 $ins=mysqli_query($con,"insert into user_requir(id,ctype,user,flavor,size,qty,frosting,decorations,status,amo,file,rdate) values('$id','$ctype','$user','$flavor','$size','$qty','$frosting','$decorations','0','','$file','$rdate')");
 if($ins)
			{

          echo "<script>alert('Your requirement is added');</script>";
        }
        else{
        echo "<script>alert('Not register something went worng');</script>";
        }
}


?>

<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Meta -->
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
		<meta name="description" content="">
		<meta name="author" content="">
	    <meta name="keywords" content="MediaCenter, Template, eCommerce">
	    <meta name="robots" content="all">

	    <title>Make a Cake</title>
	    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="assets/css/main.css">
	    <link rel="stylesheet" href="assets/css/green.css">
	    <link rel="stylesheet" href="assets/css/owl.carousel.css">
		<link rel="stylesheet" href="assets/css/owl.transitions.css">
		<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
		<link href="assets/css/lightbox.css" rel="stylesheet">
		<link rel="stylesheet" href="assets/css/animate.min.css">
		<link rel="stylesheet" href="assets/css/rateit.css">
		<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">

		<!-- Demo Purpose Only. Should be removed in production -->
		<link rel="stylesheet" href="assets/css/config.css">

		<link href="assets/css/green.css" rel="alternate stylesheet" title="Green color">
		<link href="assets/css/blue.css" rel="alternate stylesheet" title="Blue color">
		<link href="assets/css/red.css" rel="alternate stylesheet" title="Red color">
		<link href="assets/css/orange.css" rel="alternate stylesheet" title="Orange color">
		<link href="assets/css/dark-green.css" rel="alternate stylesheet" title="Darkgreen color">
		<!-- Demo Purpose Only. Should be removed in production : END -->

		
		<!-- Icons/Glyphs -->
		<link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Fonts --> 
		<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>
		
		<!-- Favicon -->
		<link rel="shortcut icon" href="assets/images/favicon.ico">

		<!-- HTML5 elements and media queries Support for IE8 : HTML5 shim and Respond.js -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        <style>
        .sign-in-container {
            width: 50%; /* Adjust the width as needed */
            margin: 0 auto; /* Center the container horizontally */
        }
    </style>
	</head>
    <body class="cnt-home">
	
		
	
		<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1">
<?php include('includes/top-header.php');?>
<?php include('includes/main-header.php');?>
<?php include('includes/menu-bar.php');?>
</header>
<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#" style="color: #1d3ffa">Home</a></li>
				<li class='active' style="color: #1d3ffa">Make a Cake</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->

<div class="body-content outer-top-bd">
    <div class="container">
        <div class="sign-in-page inner-bottom-sm">
            <div class="row">
                <!-- Sign-in -->         
                <div class="col-lg-6 col-md-8 col-sm-10 col-xs-12 mx-auto"> <!-- Centering the column on all screen sizes -->
                    <h4 class="">Make a Cake</h4>
                    <form class="register-form outer-top-xs" method="post" enctype="multipart/form-data">
                        <span style="color:red;"></span>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputEmail1">Cake Type<span>*</span></label>
                            <select name="ctype" id="" class="form-control unicase-form-control text-input">
                                <option value="">Choose</option>
                                <option value="birthday">Birthday Cake</option>
                                <option value="wedding">Wedding Cake</option>
                                <option value="anniversary">Anniversary Cake</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Flavor <span>*</span></label>
                            <input type="text" name="flavor" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
                        </div>

                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Size <span>*</span></label>
                            <input type="text" name="size" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Quantity <span>*</span></label>
                            <input type="text" name="qty" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Frosting <span>*</span></label>
                            <input type="text" name="frosting" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
                        </div>
                        
                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Decorations <span>*</span></label>
                            <textarea name="decorations" class="form-control unicase-form-control text-input" id="" cols="30" rows="10"></textarea>
                        </div>
                        <div class="form-group">
                            <label class="info-title" for="exampleInputPassword1">Sample Cake design <span>*</span></label>
                            <input type="file" name="file" class="form-control unicase-form-control text-input" id="exampleInputPassword1" >
                        </div>
                        

                        <button type="submit" class="btn-upper btn btn-primary checkout-page-button" name="reg">Submit</button>
                    </form>                 
                </div>
            </div>
        </div>
    </div>
</div>



<br><br><br><br><br><br><br>
<div class="container">
  <h2>My orders</h2>
  <div class="table-responsive">          
    <table class="table">
      <thead>
        <tr>
          <th>#</th>
          <th>cake type</th>
          <th>flavor</th>
          <th>size</th>
          <th>quantity</th>
          <th>frosting</th>
          <th>decorations</th>
          <th>amount</th>
          <th>Date</th>
          <th>Action</th>

        </tr>
      </thead>
      <tbody>
        <?php
        $query=mysqli_query($con,"select * from user_requir where user='$user'");
        $cnt=1;
        while($row=mysqli_fetch_array($query))
        {
        ?>			
        <tr>
        <td><?php echo htmlentities($cnt);?></td>
											<td><?php echo htmlentities($row['ctype']);?></td>
											<td><?php echo htmlentities($row['flavor']);?></td>
											<td><?php echo htmlentities($row['size']);?></td>
											<td><?php echo htmlentities($row['qty']);?></td>
											<td><?php echo htmlentities($row['frosting']);?></td>
											<td><?php echo htmlentities($row['decorations']);?></td>
											<td><?php echo htmlentities($row['amo']);?></td>
											<td><?php echo htmlentities($row['rdate']);?></td>
          <td>
          <?php 
          if($row['status']==0){
            ?>
                      <a href="mypayment.php?id=<?php echo htmlentities($row['id']);?>" class="btn btn-primary">Pay</a>
                      <?php

          }
          else if($row['status']==1){
            echo "paid";
          } 
          else if($row['status']==2){
            echo "Delivered";
          } 
          else{
            echo "";
          } 
?>
</td>
        </tr>
        <?php $cnt=$cnt+1; } ?>
       
      </tbody>
    </table>
  </div>
</div>




	<script src="assets/js/jquery-1.11.1.min.js"></script>
	
	<script src="assets/js/bootstrap.min.js"></script>
	
	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	
	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
    <script src="assets/js/jquery.rateit.min.js"></script>
    <script type="text/javascript" src="assets/js/lightbox.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>

	<!-- For demo purposes – can be removed on production -->
	
	<script src="switchstylesheet/switchstylesheet.js"></script>
	
	<script>
		$(document).ready(function(){ 
			$(".changecolor").switchstylesheet( { seperator:"color"} );
			$('.show-theme-options').click(function(){
				$(this).parent().toggleClass('open');
				return false;
			});
		});

		$(window).bind("load", function() {
		   $('.show-theme-options').delay(2000).trigger('click');
		});
	</script>
	<!-- For demo purposes – can be removed on production : End -->
</body>
</html>