<?php
if(isset($_SESSION['message'])){
	$message = "<div class='alert alert-success'>".$_SESSION['message']."</div>";
	unset($_SESSION['message']);
}
?>

<nav class="navbar navbar-inverse">
    <ul class="nav navbar-nav">
     <li><a href="index.php"><span class="glyphicon glyphicon-home"></span>HOME</a></li>
        <li><a href="about.php#shipping"><span class="glyphicon glyphicon-globe"></span>WORLDWIDE SHIPPING</a></li>
        <li><a href="about.php#authenticity"><span class="glyphicon glyphicon-certificate"></span>100% AUTHENTIC</a></li>
        <li><a href="about.php#wide-selection"><span class="glyphicon glyphicon-gift"></span>WIDEST SELECTION OF GOODS</a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">

    	<?php
    		require('connection.php');
    		if(isset($_SESSION['email_ad'])){
    			$email_ad = $_SESSION['email_ad'];
    			$role = $_SESSION['role'];

    		//Displays welcome message with user's first_name
    			if($role == 'customer'){
    				$role .= "s";
    			}
    		//joins user table and staff/customer table on user id
    			$first_name = "";
    			$sql = "SELECT first_name FROM $role JOIN users ON $role.user_id = users.id WHERE users.email_ad = '$email_ad'";

    		//extracts first name
    			extract(mysqli_fetch_assoc(mysqli_query($conn,$sql)));
    			echo "<li class='dropdown'><a class='dropdown-toggle' data-toggle='dropdown'>Welcome, $first_name</a>";
    			echo "<div class='dropdown-menu'>
    				<a href='logout.php'>Logout</a>";
    			echo "</div></li>";
    		}

    		 //set login link as popover trigger for login-content
    		else {
    			echo '
    			<li>
		    		<a href="#"
		    		id="login-link" data-toggle="popover" data-placement="auto">
		    		Login<span class="caret"></span>
		    		</a>
		    	</li>
		    	<li><a href="signup-page.php">Sign-Up</a></li>
		    	';
    		}
    	 ?>

    	<li><a href="cart.php">Cart</a></li>	 
    </ul>

    <?php

    require_once('login.php');

    ?>

    <!-- end login popover -->

    <form class="navbar-form navbar-right">
    	<div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
        <button type="submit" class="btn"><span class="glyphicon glyphicon-search"></span></button>
      </div>
    </form>
</nav>

<!-- logo/banner area -->
<div class="clearfix banner row">
	<div class="left-banner col-md-4">
		<h3>Lorem</h3>
	</div>
	<div class="middle-banner col-md-4">
	</div>
	<div class="right-banner col-md-4">
		<h3>Ipsum</h3>
	</div>
</div>

<!-- main nav -->

<div class="menu row text-center">
	<div>
		<ul>
		    <li class="dropdown">
				<a href="items.php?cid=1" class="dropdown-toggle" data-toggle="dropdown">Skin Care</a>
				<span class="caret"></span>
				<!-- dropdown menu on display hidden -->
				<div class="dropdown-menu">
					<a href="items.php?sid=1">Facial Cleanser & Scrub</a>
					<a href="items.php?sid=2">Sun Care</a>
					<a href="items.php?sid=3">Toner/Moisturizer</a>
					<a href="items.php?sid=4">Eye Care</a>
				</div>
			</li>
			<li class="dropdown">
				<a href="items.php?cid=2" class="dropdown-toggle" data-toggle="dropdown">Hair & Body</a>
				<span class="caret"></span>
				<!-- dropdown menu on display hidden -->
				<div class="dropdown-menu">
					<a href="items.php?sid=5">Shampoo & Conditioner</a>
					<a href="items.php?sid=6">Body Wash</a>
					<a href="items.php?sid=7">Moisturizers</a>
					<a href="items.php?sid=8">Deodorants</a>
				</div>
			</li>
			<li><a href="items.php?cid=3">Scents</a></li>
			<li><a href="items.php?cid=4">Grooming Essentials</a></li>
			<li><a href="#">Best Sellers</a></li>
			<li><a href="#">On Sale</a></li>
			<li><a href="about.php#aboutcura">About Cura</a></li>
		</ul>
	</div>	
</div>