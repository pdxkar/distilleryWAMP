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

<script type="text/javascript" src="js/image_slider.js"></script>
<link rel="stylesheet" type="text/css" href="main.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
	<link rel="stylesheet" type="text/css" href="gallery.css">
		<script>
var sliderMax = sliderWidth = sliderLeft = 0;
function addImages(){
  var images = ["bigBear", "eagleFishBench", "benchFishCloseup", 
	  "eaglesInTheCity2", "heron", "bearsInTheCity", "goAwayBear", "bears", "raccoonbutt", "turtle", 
                "smallBear", "gnome", "bearsInTheCity4", "eagleInTheCity", "woodDeer", 
                "bearsInTheCityToo", "eagle", "bearsAndChild",
                "monster", "turtleBack", "bearsInTheCity3"];
  for (i in images){ 
    $("#imageSlide").append('<img src="images/'+ 
                            images[i] + '.jpg" />'); }
  setTimeout(function() {
      $("#imageSlide img").each(function(){ 
        sliderWidth += $(this).width() + 26; });
      sliderWidth += 40; 
      $("#imageSlide").width(sliderWidth);
      sliderMax = $("#selector").width() - sliderWidth;
    }, 1000);
}
function slide(value){
  var oldLeft = sliderLeft; 
  sliderLeft = sliderLeft + value;
  if (sliderLeft >= 0) { sliderLeft = 0; }
  if (sliderLeft <= sliderMax) { sliderLeft = sliderMax; }
  if(oldLeft != sliderLeft) { 
    $("#imageSlide").animate({left:sliderLeft}, 300, 'linear', 
        function(){ 
          slide(value); });
  }
  return false;
}

/* set the photo as the featured image of the slider */
function setPhoto(){
  var newPhoto = $(this).attr("src");
  $("#photo img").stop(true).fadeTo(500, .1, "linear", 
    function (){
      $("#photo img").attr("src", newPhoto); 
    });
   $("#photo img").css({width:"91%",height:"auto"});   
  $("#photo img").fadeTo(500, 1);
  return false;
}

$(document).ready(function(){
  addImages();
  $("#left").mouseenter(function(){ 
    slide(50); });
  $("#left").mouseleave(function(){ 
    $("#imageSlide").stop(true); return false; });
  $("#right").mouseenter(function(){ 
    slide(-50); });
  $("#right").mouseleave(function(){ 
    $("#imageSlide").stop(true); return false; });
  $("#imageSlide img").mouseenter(function(){ 
    $(this).stop(true).animate({height:120, opacity:1},500); 
                               return false; });
  $("#imageSlide img").mouseleave(function(){ 
    $(this).stop(true).animate({height:"100%", opacity:.5},500); 
                               return false; });
  $("#imageSlide img").click(setPhoto);

  $("#imageSlide img:first").click();
});
    </script>

</head>
<body>
	<div id="tempHeading">
		<h1>Knot Just a Bear Chainsaw Carvings</h1>
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
	<!-- REmoving the hash below totally f-s up the page.  TODO what's going on? -->
	<div id="#welcomeAndViewerWrapper">
		<div class='tempWelcome'>
	  		<?php
				echo "<p><span>Welcome to</span><span style=\"font-size:30px\"> Knot Just a Bear</span>";
				echo "<span>, a collection of wildlife carvings to 
				brighten your yards and homes.  In addition to the items in the gallery,
				We offer on-site carving services, custom orders, and stump-grinding services.  
				Local estimates are free.  Our carvings are found in many of our neighbors' backyards and
				in front of local businesses, as well as sites in Utah, Hawaii, and California.  Artist Robert 
				Tidwell participates and wins national wood and ice carving competitions, and has participated in many
				carving exhibitions for grand-openings, festivals, and other celebrations. ";
				echo "<br /><br />";
				echo "For more information or to see our current inventory, please come and visit Knot
				Just a Bear at 29203 Washington Way in Ranier OR or give us a call at 503.438.5385.  We are open
				most days except Sundays.
				</span></p> ";
			?>
  		</div>
  		<!-- viewer = entire image box containing the slider and featured image area -->
		<div id="viewer">
			<div id="left">
				<img src="images/left.png" />
			</div>
			<!--  selector is the slider box container -->
			<div id="selector">
				<div id="imageSlide"></div>
			</div>
			<div id="right">
				<img src="images/right.png" />
			</div>
			<!-- photo = featured photo -->
			<div id="photo">
				<img src="" />
				<script>
				$("#photo img").load(function(){
					var myHeight = $("#photo img").height();
					$(".tempWelcome").css({height:myHeight+180});  
				}); 
				</script>
			</div>
		</div>
	</div>
	<div id="footer">
		<h2><a href="thistledownSoftwareCompany.inc.php">&#169; 2016 Thistledown Software Company</a></h2>
	</div>
</body>
</html>
