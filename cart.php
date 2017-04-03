<?php function display_main(){ ?>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-5">
		<h2>Items in your cart:</h2>

<?php  
	require('connection.php');
	mysqli_set_charset($conn,"UTF8");


	if(isset($_SESSION['cart_items'])) {
		$total_fee = 0;
		foreach($_SESSION['cart_items'] as $key => $quantity){
			$sql = "SELECT * FROM products WHERE id = '$key'";
			extract(mysqli_fetch_assoc(mysqli_query($conn,$sql)));
			$fee = (int)$product_price;
			$item_quantity = (int)$quantity;
			

			echo "<div class='row'>";
			echo "<div class='col-md-4'><img class='items-img' src='img/$product_image'></div>";
			echo "<div class='col-md-8'>";
			echo "<strong>$product_brand</strong><br>";
			echo $product_name."<br>";
			echo "Quantity: ".$quantity."<br>";
			echo "<div>Total: PhP ".$fee*$item_quantity." </div>";
			echo "<a href='cancel-selection.php?key=$id'><input class='btn btn-danger' type='submit' name='cancel' value='Remove From Cart'></a>";

			$total_fee += $fee*$item_quantity;

			echo "</div>";
			echo "<hr>";
			echo "</div>";

		}
	echo "Your subtotal is PhP ".$total_fee.".";
	echo "<form><button type='submit' name='updateCart' class='btn btn-info'>Update Items</button>";
	echo "<button type='submit' name='checkOutCart' class='btn btn-success'>Check Out Items</button></form>";
	}
?>
			
		</div>
	</div>

	


<?php } 
	require_once('template.php'); ?>