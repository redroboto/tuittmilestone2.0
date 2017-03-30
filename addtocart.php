<?php

session_start();
$key = $_GET['key'];
echo $key;
$quantity = $_POST['quantity'];

$_SESSION['cart_items'][$key] = $quantity;

header('location:'.$_SERVER["HTTP_REFERER"]);

?>