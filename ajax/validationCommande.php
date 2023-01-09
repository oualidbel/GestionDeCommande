<?php

include '../includes/connexion.php';
session_start();
$adresse = $_POST['adresse'];
$numero = $_POST['numero'];
$numeroDeCommande = $_SESSION['numeroCommande'];
$date = date('d/m/Y H:i');

$bd = seConnecter();
$query = "INSERT INTO clients(adresse ,numero,numeroDeCommande,date) VALUES('".$adresse."','".$numero."','".$numeroDeCommande."','".$date."')";
$requetteSql = $bd->prepare($query);
$requetteSql->execute();


$query2 = "UPDATE commandeencours SET status = '1' WHERE status = '0'";
$requetteSql = $bd->prepare($query2);
$requetteSql->execute();


session_unset();
session_destroy(); 

?>