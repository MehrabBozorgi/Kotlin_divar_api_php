<?php
$id=$_GET["id"];
include "connect.php";
$query="SELECT ads.* , cat.cattitle ,imageurl.url FROM ads JOIN cat ON ads.catid=cat.id JOIN imageurl ON ads.image=imageurl.adsid WHERE ads.id=:id";
$res2 = $connection->prepare($query);
$res2->bindParam(":id",$id);
$res2->execute();
$ads = array();
$slide = array();
while ($row2 = $res2->fetch(PDO::FETCH_ASSOC)) {
    $ads["id"]=$row2["id"];
    $ads["title"]=$row2["title"];
    $ads["description"]=$row2["description"];
    $ads["city"]=$row2["city"];
    $ads["date"]=$row2["date"];
    $ads["phone"]=$row2["phone"];
    $ads["price"]=$row2["price"];
    $ads["option"]=$row2["option"];
    $ads["cat"]=$row2["cattitle"];


}

$sql="SELECT * FROM imageurl WHERE adsid=:id";
$res = $connection->prepare($sql);
$res->bindParam(":id",$id);
$res->execute();
while ($row = $res->fetch(PDO::FETCH_ASSOC)) {

 $slide[]=$row["url"];

}

$ads["url"]=$slide;

echo json_encode($ads);