<?php

function seConnecter()
{
	
$bd="bd_gestionnairecommandes";
$pass="root";
$user="root";
$host="localhost";

try
{
	$result = new PDO("mysql:host = ".$host." ; dbname=".$bd , $user, $pass) or die('');
}
catch(PDOExeption $e)
{
	print("erreur :".$e->getMessage()."<br/>");
	die();
}

return $result;
}


?>