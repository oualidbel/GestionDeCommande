

<?php

include '../includes/connexion.php';


if(isset($_POST['id']))
{
	$id = $_POST['id'];
	$bd = seConnecter();
	$query = "DELETE FROM commandeencours WHERE id =".$id." ";
	$requetteSql = $bd->prepare($query);
	$requetteSql->execute();
}
else
{
	echo "aucun id n'est renseigner !";

}

?>