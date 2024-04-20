<div class="header-nav animate-dropdown" style="background-color:#1d3ffa">
    <div class="container">
        <div class="yamm navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="nav-bg-class">
                <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
	<div class="nav-outer">
		<ul class="nav navbar-nav">
        <li class="dropdown yamm-fw">
        <li class="dropdown yamm-fw">
        <a href="index.php" style="background-color: black;" data-hover="dropdown" class="dropdown-toggle" onmouseover="this.style.backgroundColor='black'" onmouseout="this.style.backgroundColor=''">Home</a>
</li>
</li>
<?php 
if($_SESSION['username']=="")
{
echo "";
}
else{
?>

              <?php $sql=mysqli_query($con,"select id,categoryName  from category limit 6");
while($row=mysqli_fetch_array($sql))
{
    ?>

			<li class="dropdown yamm">
    <a href="category.php?cid=<?php echo $row['id'];?>" style="background-color: black;" data-hover="dropdown" class="dropdown-toggle" onmouseover="this.style.backgroundColor='black'" onmouseout="this.style.backgroundColor=''"> <?php echo $row['categoryName'];?></a>

			
			</li>
			<?php } ?>
            <li class="dropdown yamm-fw">
            <a href="makereq.php" style="background-color: black;" data-hover="dropdown" class="dropdown-toggle" onmouseover="this.style.backgroundColor='black'" onmouseout="this.style.backgroundColor=''">Make a Cake</a>

				
			</li>
            <?php
}
?>

			
		</ul><!-- /.navbar-nav -->
		<div class="clearfix"></div>				
	</div>
</div>


            </div>
        </div>
    </div>
</div>