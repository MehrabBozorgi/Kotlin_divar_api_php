<?php
include "connect.php";
$title=$_POST["title"];
$city=$_POST["city"];
$price=$_POST["price"];
$desc=$_POST["desc"];
$phone=$_POST["phone"];
$cat=$_POST["cat"];

$sql="INSERT INTO ads (title,description,image,city,date,catid,phone,price,option)VALUES (:title,:desc,'',:city,'امروز', null,:phone,:price,'')";
$res = $connection->prepare($sql);
$res->bindParam(":title",$title);
$res->bindParam(":desc",$desc);
$res->bindParam(":city",$city);
$res->bindParam(":phone",$phone);
$res->bindParam(":price",$price);
$res->execute();

if($res){
    echo '{"result":"ok"}';

}else{
    echo '{"result":"not ok"}';
}