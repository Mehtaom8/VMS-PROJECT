<?php

$server="localhost";
$username="root";
$password="";
$database="asish";
$db= mysqli_connect($server,$username,$password,$database);

if(!$db)
{
    echo die(mysqli_connect_error());
}
?>