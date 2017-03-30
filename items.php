

<?php function display_main(){ 
?>

<?php

require('connection.php');
mysqli_set_charset($conn,"UTF8");

if(isset($_GET['cid'])) {
	$cid = $_GET['cid'];
	$sql = "SELECT * FROM products WHERE category_id ='$cid' ";
}
elseif(isset($_GET['sid'])){
	$sid = $_GET['sid'];
	$sql = "SELECT * FROM products WHERE subcategory_id='$sid'";	
}
else
	$sql = "SELECT * FROM products";

$result = mysqli_query($conn,$sql);

?>

<div class="container-fluid row">
	<div class="col-md-2">
		Sort
	</div>
	<div class="col-md-10 clearfix">

		<?php 
			while($row = mysqli_fetch_assoc($result)) {
				extract($row);

				echo "<div class='col-md-4 text-center items-container clearfix'>";
				echo "<div><img class='items-img' src='img/$product_image'></div>";
				echo "<div class='overlay'></div>
					<div class='details'><a href='#'data-toggle='modal' data-target='#detailsModal$id'>View Details</a></div>";
				echo "<div><strong>$product_brand</strong></div>";
				echo "<div>$product_name </div>";
				echo "<div>PhP $product_price</div>";
				echo "</div>";
				?>
				<!-- Modal -->
				<div class="modal fade" id="detailsModal<?php echo $id; ?>" role="dialog">
				<div class="modal-dialog">

				  <!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
						  <button type="button" class="close" data-dismiss="modal">&times;</button>
						  <h4 class="modal-title"> <?php echo "<strong>".$product_brand."</strong> : ".$product_name." ".$product_volume ?></h4>
						</div>
						<div class="modal-body row">
						  <div class="col-md-4">
						  	<?php echo "<div><img class='items-img' src='img/$product_image'></div>"; ?>
						  </div>
						  <div class="col-md-8">
						  	<?php
						  	echo "<p>$product_description</p>";
						  	echo "<div>Get this now for just PhP $product_price!</div>";
						   ?>
						  </div>
						</div>
						<div class="modal-footer">
							<form method="POST" action='addtocart.php?key=<?php echo $id ?>'>
								<input type='number' name="quantity" min='1' value='1'>
								<button type="submit" class="btn btn-success">Add to Cart</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</form>

							    
							
							
						</div>
					</div>
				  
				</div>
				</div>
<?php
	}
?>
	</div>
</div>



<?php }
	require_once('template.php')
?>