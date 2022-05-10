<?php

$config = parse_ini_file('../conf.ini');
try{
   $con = new PDO('pgsql:host=localhost;port=5432;dbname='.$config['db'],$user=$config['username'],$password=$config['password']);
   $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
}catch(PDOException $e){
   echo "ERROR: " . $e->getMessage();
}
?>