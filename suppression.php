<?php

include 'includes/connexion.php';

$numeroDeCommande = $_GET['numeroCommande'];

$bd = seConnecter();
$query = "DELETE FROM commandeencours WHERE numeroDeCommande = ".$numeroDeCommande;
$requetteSql = $bd->prepare($query);
$requetteSql->execute();

?>

<script type="text/javascript">
	
	window.location.href = "commandeEnCours.php";

</script>