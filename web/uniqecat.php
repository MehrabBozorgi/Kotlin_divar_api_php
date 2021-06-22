<?php
$id=$_GET["id"];
include "connect.php";
$query2 = "SELECT ads.*,imageurl.url FROM ads JOIN imageurl ON ads.image=imageurl.adsid WHERE catid=:id";
$res2 = $connection->prepare($query2);
$res2->bindParam(":id",$id);
$res2->execute();
$ads = array();
while ($row2 = $res2->fetch(PDO::FETCH_ASSOC)) {
    $record = array();
    $record["id"]=$row2["id"];
    $record["title"]=$row2["title"];
    $record["description"]=$row2["description"];
    $record["city"]=$row2["city"];
    $record["date"]=$row2["date"];
    $record["phone"]=$row2["phone"];
    $record["price"]=$row2["price"];
    $record["option"]=$row2["option"];
    $record["url"]=$row2["url"];
    $ads[]=$record;

}

echo json_encode($ads);