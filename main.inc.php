<?php
include 'db.inc.php';

// get all resources
// TODO get resourceURL
$st = $app ['pdo']->prepare ( 'SELECT resourceId,resourceTitle,subtext,resourceImageUrl,resourceTypeId,resourceDesc,resourceUrl from resources' );
$st->execute ();

//display each resource's info with a link to read more
while ( $row = $st->fetch ( PDO::FETCH_ASSOC ) ) {
	
	$resourceId = $row ['resourceId'];
	$resourceTitle = $row ['resourceTitle'];
	$resourceImageUrl = $row ['resourceImageUrl'];
	$resourceTypeId = $row ['resourceTypeId'];
	$subtext = $row ['subtext'];
	$resourceDesc = $row ['resourceDesc'];
	$resourceUrl = $row ['resourceUrl'];
	
	// get the resource type name (i.e. "podcast") for each resource
	$stmt = $app ['pdo']->prepare ( 'SELECT resourceTypeName from resourceTypes where resourceTypeId = :resourceTypeId' );
	
	$array = array (
			'resourceTypeId' => $resourceTypeId 
	);
	
	$stmt->execute ( $array );
	
	$row = $stmt->fetch ( PDO::FETCH_ASSOC );
	
	$resourceTypeName = $row ['resourceTypeName'];
	
	echo "<div id=\"resourceWrapper\">
	<div id=\"descBox\">
	<div id=\"toplineWrapper\">
	<div id=\"title\">$resourceTitle</div>
	<a class=\"button\">$resourceTypeName</a>";
	
	/* display the resource's title, subtitle, and description */
	echo "<div id=\"subtitle\"><b>$subtext</b><br></div>";
	echo "<div style=\"clear: both\"></div>";
	echo "</div>";
	echo substr ( $resourceDesc, 0, 400 );
	echo "<font color=\"blue\">...
		  <a href=\"index.php?content=readResourceOverview&subtext=$subtext
		  		&resourceId=$resourceId
				&resourceDesc=$resourceDesc
				&resourceTitle=$resourceTitle
				&resourceTypeName=$resourceTypeName
				&resourceImageUrl=$resourceImageUrl
				\">read more</a></font>";
	
	echo "</div>";
	echo "<div id=\"logoBox\"><a href=\"$resourceUrl\"\">";
	echo "<img src=\"$resourceImageUrl\" alt=\"W3Schools.com\" style=\"width:104px;height:142px;\">";
	echo "</a></div>";
	echo "<div style=\"clear: both\"></div>";
	echo "</div>";
}
?>