<?php
include "connect.php";
$apps=array();
$query="SELECT ads.* , cat.cattitle ,imageurl.url FROM ads JOIN cat ON ads.catid=cat.id JOIN imageurl ON ads.image=imageurl.adsid ";
$res=$connection->prepare($query);
$res->execute();
while($row=$res->fetch(PDO::FETCH_ASSOC)){
    $record=array();
    $record["id"]=$row["id"];
    $record["title"]=$row["title"];
    $record["description"]=$row["description"];
    $record["city"]=$row["city"];
    $record["date"]=$row["date"];
    $record["phone"]=$row["phone"];
    $record["price"]=$row["price"];
    $record["option"]=$row["option"];
    $record["url"]=$row["url"];
    $record["cat"]=$row["cattitle"];


    $apps[]=$record;
}

echo JSON_encode($apps);