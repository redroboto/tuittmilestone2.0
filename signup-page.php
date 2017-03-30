<?php

// once sign up btn is clicked, connect to DB and capture data from input fields using POST
if(isset($_POST['sign-up'])){
	require('connection.php');
	$first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$email_ad = $_POST['email_ad'];
	$password = sha1($_POST['password']);
	$shipping_address = $_POST['shipping_address'];
	$city = $_POST['city'];
	$zip_code = $_POST['zip_code'];
	$mobile_number = $_POST['mobile_number'];

	// insert email address, password, and role into users table
	$sql = "INSERT INTO users (email_ad,password,role)
		values('$email_ad','$password','customer')";
		mysqli_query($conn,$sql);
	$sql = "SELECT id FROM users ORDER BY id DESC LIMIT 1";
	extract(mysqli_fetch_assoc(mysqli_query($conn,$sql)));
	// insert first name, last name, shipping address, city, zip code, and mobile number into customers table
	$sql = "INSERT INTO customers (first_name,last_name,
		shipping_address,city,zip_code,mobile_number,user_id)
		values('$first_name','$last_name',
		'$shipping_address','$city','$zip_code','$mobile_number','$id')";
		mysqli_query($conn,$sql);

	echo "<script language ='javascript'>";
	echo "alert('registration successful')";
	echo "</script>";
}

function display_main(){ 
?>

<div class="row sign-up-div container">
	<h3>To register, kindly fill up the form below:</h3>
	<form method='POST'>
		<div class="col-md-6 sign-up">
				<h4>First Name:</h4>
				<input type="text" name="first_name" required>
				<h4>Last Name:</h4>
				<input type="text" name="last_name" required>
				<h4>Email Address:</h4>
				<input type="text" name="email_ad" required>
				<h4>Confirm Email Address:</h4>
				<input type="text" name="confirm_email" required>
				<h4>Password:</h4>
				<input type="password" name="password" required>
				<h4>Confirm Password:</h4>
				<input type="password" name="confirm_password" required>
		</div>
		<div class="col-md-6 sign-up">
			<h4>Shipping Address:</h4>
			<input type="text" name="shipping_address" required>
			<h4>City:</h4>
			<input type="text" name="city" required>
			<h4>Zip Code:</h4>
			<input type="text" name="zip_code" required>
			<h4>Mobile Number:</h4>
			<input type="text" name="mobile_number" required><br><br>
			<button name='sign-up' class="btn">Submit</button>
		</div>
	</form>
</div>

<?php }
	require_once('template.php')
?>