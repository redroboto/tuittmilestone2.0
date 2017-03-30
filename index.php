<?php function display_main(){ 
?>	

<!-- carousel -->
<div class="carousel-wrapper container-fluid">
	<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
		<!-- indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		<!-- wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="img/kiehls-moisturizers.jpg" alt="Kiehl's Moisturizers">
			</div>
			<div class="item">
				<img src="img/ponds-facial-cleanser.jpg" alt="Pond's Men Facial Cleanser">
			</div>
			<div class="item">
				<img src="img/kiehls-facial-cleansers.jpg" alt="L'Occitane Moisturizers">
			</div>
		</div>

		<!-- left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
</div>

<div class="container-fluid row">
	 <div class="col-md-6">
	 	<h3>About</h3>
	 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	 	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	 	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	 	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	 </div>
	  <div class="col-md-6">
	 	<h3>About</h3>
	 	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
	 	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
	 	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
	 	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
	 	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
	 	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
	 </div>
</div>

<?php }
	require_once('template.php')
?>

<?php

if(isset($_GET['logout'])) {
	session_destroy();
	echo "<script> alert('You have successfully logged out.'); </script>";
	header('index.php');
} 
?>