<?php
				

		include '../includes/connexion.php';

		session_start();
		if(!isset($_SESSION['numeroCommande']))
		{
			$_SESSION['numeroCommande'] = rand();
		}
		
		$id = $_POST['id'];
		$menu = $_POST['menu'];
		$sauce = $_POST['sauce'];
		$boisson = $_POST['boisson'];
		$sc = $_POST['sc'];
		$ss = $_POST['ss'];
		$st = $_POST['st'];
		$so = $_POST['so'];
		$sf = $_POST['sf'];
		$ssa = $_POST['ssa'];
		$status = 0;

		$bd = seConnecter();
		$query = "SELECT * FROM articles WHERE id = ".$id;
		$requetteSql = $bd->prepare($query);
		$requetteSql->execute();
		

		if($requetteSql->rowCount() > 0) 
			{
				while ($r = $requetteSql->fetch()) 
					{
						$idArticleCommander = $r['id'];

						$query = "INSERT INTO commandeencours(idArticleCommander,nombreArticleCommander,menu,sauce,boisson,sc,ss,st,so,sf,ssa,numeroDeCommande,status) VALUES('".$idArticleCommander."','1','".$menu."','".$sauce."','".$boisson."','".$sc."','".$ss."','".$st."','".$so."','".$sf."','".$ssa."','".$_SESSION['numeroCommande']."','".$status."')";
					}

					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
			}




		
?>

