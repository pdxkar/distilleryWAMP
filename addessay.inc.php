<?php
include 'db.inc.php';

$essaytitle = htmlspecialchars($_POST['essaytitle']);
$essaytext = htmlspecialchars($_POST['essaytext']);
$resourceid = $_POST['resourceid'];
$featureid = $_POST['featureid'];
$essaydate = date("Y-m-d");
$essayImageUrl = $_POST['essayImageUrl'];

if (!isset($_SESSION['valid_recipe_user'])) {
	echo "<h2>Sorry, you must be logged in to post an resource.</h2><br>\n";
	echo "<a href=\"index.php?content=login\">Please login to post your essay.</a><br>\n";
} else {
	$userid = $_SESSION['valid_recipe_user'];

	$st = $app['pdo']->prepare('INSERT INTO essays (essayTitle, essayText, resourceId, featureId, essayDate, essayImageUrl) VALUES (:essaytitle, :essaytext, :resourceid, :featureid, :essaydate, :essayImageUrl)');
	
	$array = array(
			'essaytitle' => $essaytitle,
			'essaytext' => $essaytext,
			'resourceid' => $resourceid,
			'featureid' => $featureid,
			'essaydate' => $essaydate,
			'essayImageUrl' => $essayImageUrl
	);

	$isEssayAdded = $st->execute($array);

	if ($isEssayAdded){
		echo "<h2>Your essay was posted.</h2>\n";
	} else {
		echo "<h2>Sorry, there was a problem posting your essay.</h2>\n";
	}
} 

?>