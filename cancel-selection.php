<?php

session_start();
require('connection.php');

//set $key as the array key of the item clicked in previous page
$key = $_GET['key'];

//delete currently selected item from $_SESSION['cart_items']
unset($_SESSION['cart_items'][$key]);

//relocate back to cart
header('location: cart.php');

?>