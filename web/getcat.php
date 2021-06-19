<?php
include "connect.php";
$apps=array();
$query="SELECT * FROM cat ";
$res=$connection->prepare($query);
$res->execute();
while($row=$res->fetch(PDO::FETCH_ASSOC)){
    $record=array();
    $record["cat_name"]=$row["cat_name"];
    $record["cat_icon"]=$row["cat_icon"];
    $apps[]=$record;
}

echo JSON_encode($apps);