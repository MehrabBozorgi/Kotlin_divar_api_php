<?php
include "connect.php";
$query2 = "SELECT * FROM cat";
$res2 = $connection->prepare($query2);
$res2->execute();
$cats = array();
while ($row2 = $res2->fetch(PDO::FETCH_ASSOC)) {
    $record = array();
    $record["cattitle"] = $row2["cattitle"];
    $record["id"]=$row2["id"];

    $cats[]=$record;

}

echo json_encode($cats);