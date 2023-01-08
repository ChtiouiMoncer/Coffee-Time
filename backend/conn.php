<?php 
$connect = new mysqli("localhost","root","","coffe_shop");

if($connect){
    echo"conn ok";

}else{
    echo"conn failed";
    exit();
}
