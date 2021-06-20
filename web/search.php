<?php
include "connect.php";
$search=trim($_GET["search"]);
$apps=array();
$query=" SELECT * FROM application WHERE name like '%".$search."%' ";
$res=$connection->prepare($query);
$res->bindParam(":search",$search);
$res->execute();

while($row=$res->fetch(PDO::FETCH_ASSOC)){
    $record=array();
    $record["id"]=$row["id"];
    $record["name"]=$row["name"];
    $record["icon"]=$row["icon"];

    $apps[]=$record;


}

echo  JSON_encode($apps);