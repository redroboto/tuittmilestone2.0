<?php function display_main(){ ?>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-9">
		<h2>Items in your cart:</h2>

<?php  
	require('connection.php');
	$sql = "SELECT * FROM products";
	$result = mysqli_query($conn,$sql);
	$products = array();
	while($row = mysqli_fetch_assoc($result)){
		$temp = $row['id'];
		$products[$temp] = $row;
	}
	if(isset($_SESSION['cart_items'])) {
		foreach($_SESSION['cart_items'] as $key => $quantity){
		$product_name = $products[$key]['product_name'];
		$product_description = $products[$key]['product_description'];
		$product_image = $products[$key]['product_image'];
		$product_price = $products[$key]['product_price'];
		$product_volume = $products[$key]['product_volume'];
		$product_brand = $products[$key]['product_brand'];

		}
	}
?>
			
		</div>
	</div>



<?php } 
//inserts this function in the template
	require_once('template.php'); ?>