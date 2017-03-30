<?php
	$message = "";
	if(isset($_SESSION['message'])){
		$message = "<div class='alert alert-success'>".$_SESSION['message']."</div>";
		unset($_SESSION['message']);
	}

	if(isset($_POST['login'])){
		require('connection.php');
		$email_ad = $_POST['email_ad'];
		$password = sha1($_POST['password']);
		$flag = 0;
		$sql = "SELECT * FROM users WHERE email_ad = '$email_ad'";
		//run sql query
		$result = mysqli_query($conn,$sql);
		//checks if number of rows > 0, will be FALSE if < 1
		if(mysqli_num_rows($result)){
			//converts sql object into assoc array
			while($row = mysqli_fetch_assoc($result)){
				if($password == $row['password']){
					$_SESSION['message'] = "Login Successful";
					$_SESSION['email_ad'] = $email_ad;
					$_SESSION['role'] = $row['role'];
					header('location:index.php');
				}
				else {
					echo "<script> alert('incorrect password'); </script>";
				}			
			}	
		}
		else {
			echo "<script> alert('incorrect username'); </script>";
		}
	}

?>


	
	<div class="hide" id ="login-content">

	<form method='post' action=''>
		<div class="form-group">
		<input type="text" name="email_ad" placeholder="Email Address">
		</div>
		<div class="form-group">
		<input type="password" name="password" placeholder="Password">
		</div>
		<div class="form-group">
		<input class="btn" class="btn btn-default" type="submit" name="login" value="Login"> 
		</div>
	</form>
	</div>
