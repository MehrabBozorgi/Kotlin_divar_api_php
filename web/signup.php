<?php
include "connect.php";
$username=$_POST["username"];
$pass=$_POST["pass"];
$query="SELECT * FROM user WHERE username=:username AND pass=:pass";
$res=$connection->prepare($query);
$res->bindParam(":username",$username);
$res->bindParam(":pass",$pass);
$res->execute();
$row=$res->fetch(PDO::FETCH_ASSOC);
if($row==false){
    echo '{"result":"not exist"}';
}else{
    echo '{"result":"exist"}';

}
