<?php session_start(); ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/cura.css">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans|Libre+Baskerville|Roboto" rel="stylesheet">
</head>
<body>

<!-- require header here -->
<?php require_once('partials/header.php'); ?>

<!-- displays content depending on current page -->
<?php display_main(); ?>

<!-- footer portion -->
<?php require_once('partials/footer.php'); ?>


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/cura.js"></script>

</body>
</html>