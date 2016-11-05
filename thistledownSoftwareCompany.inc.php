<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="generator" content="WebMotionUK" />
<title>WebMotionUK - PHP &amp; Jquery image upload &amp; crop</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="main.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="gallery.css">


</head>
<body>
	<div id="thistledownHeading">
		<h1>Thistledown Software Company</h1>
	</div>
		<div class='container'>
	<?php 
	session_start();
	//if logged in
	if (isset($_SESSION['valid_recipe_user'])) {
		echo "<ul class=\"nav nav-pills\">";
		echo "<li class=\"active\"><a href=\"index.php?\">Home</a></li>";
		echo "<li class=\"dropdown\">";
		echo "<a href=\"#\" data-toggle=\"dropdown\" class=\"dropdown-toggle\">Posts <b class=\"caret\"></b></a>";
		echo "<ul class=\"dropdown-menu\">";
		echo "<li><a href=\"newresource.inc.php?\">Add Resource</a></li>";
		echo "<li><a href=\"selectResourceToEdit.inc.php?\">Edit Resource</a></li>";
		echo "<li><a href=\"selectResourceToDelete.inc.php?\">Delete Resource</a></li>";
		echo "<li><a href=\"newfeature.inc.php?\">Add Feature</a></li>";
		echo "<li><a href=\"selectFeatureToEdit.inc.php?\">Edit Feature</a></li>";
		echo "<li><a href=\"selectFeatureToDelete.inc.php?\">Delete Feature</a></li>";
		echo "<li><a href=\"newessay.inc.php?\">Add Essay</a></li>";
		echo "<li><a href=\"selectEssayToEdit.inc.php?\">Edit Essay</a></li>";
		echo "<li><a href=\"selectEssayToDelete.inc.php?\">Delete Essay</a></li>";
		echo "<li><a href=\"testGallery.inc.php?\">Test Gallery</a></li>";
		echo "<li class=\"divider\"></li>";
		echo "<li><a href=\"thistledownSoftwareCompany.inc.php\">Thistledown Software Company</a></li>";
		echo "</ul>";
		echo "</li>";
		echo "<li class=\"dropdown pull-right\">";
		echo "<a href=\"#\" data-toggle=\"dropdown\" class=\"dropdown-toggle\">";
		echo "signed is as: ";
		echo $_SESSION['valid_recipe_user'];
		echo "<b class=\"caret\"></b></a>";
		echo "<ul class=\"dropdown-menu\">";
		echo "<li><a href=\"logout.inc.php?\">Logout</a></li>";
		echo "<li class=\"divider\"></li>";
		echo "<li><a href=\"thistledownSoftwareCompany.inc.php\">Thistledown Software Company</a></li>";
		echo "</ul>";
		echo "</li>";
		echo "</ul>";
	} else {
		//if not logged in
		echo "<ul class=\"nav nav-pills\">";
		echo "<li class=\"active\"><a href=\"index.php?\">Home</a></li>";
		echo "<li class=\"dropdown\">";
		echo "<a href=\"#\" data-toggle=\"dropdown\" class=\"dropdown-toggle\">Posts <b class=\"caret\"></b></a>";
		echo "<ul class=\"dropdown-menu\">";
		echo "<li><a href=\"testGallery.inc.php?\">Test Gallery</a></li>";
		echo "<li class=\"divider\"></li>";
		echo "<li><a href=\"thistledownSoftwareCompany.inc.php\">Thistledown Software Company</a></li>";
		echo "</ul>";
		echo "</li>";
		echo "<ul class=\"nav navbar-nav navbar-right\">";
		echo "<li><a href=\"login.inc.php?\">Login</a></li>";
		echo "<li><a href=\"register.inc.php?\">Register</a></li>";
		echo "</ul>";
		echo "</ul>";
	}
	?>
	</div>
	<!-- wrapper containing welcome box and viewer box -->
	<div id="welcomeAndViewerWrapper">
		<div class='thistledownWelcome'>
	  		<?php
				echo "<p><span>Welcome to</span><span style=\"font-size:30px\"> Thistledown Software Company.</span>";
				echo "<span>We offer services that will add value and freedom to your small to medium-sized business.
						We help your business reach local, national, and worldwide customers by designing and
						delivering software solutions that allow you to display, sell, and distribute the heart of your business. 
						We can give you a professional and easy-to-use platform to sell your goods and services, and to 
						distribute books, videos, podcasts, and blogs to enhance your brand and to showcase your expertise. 
						The websites that we design for you will allow you to showcase your business and to accept payment";
				echo "<br /><br />";
				echo "For more information, contact us at 503.758.8338.  
				</span></p> ";
			?>
  		</div>
	</div>
	<div id="footer">
		<h2>&#169; 2016 Thistledown Software Company</h2>
	</div>
</body>
</html>
