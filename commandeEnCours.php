<!doctype html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="styles/mainstyle.css">
		<meta charset="utf-8">
	</head>

	<body>
		<script src="jquery/jquery-3.6.0.min.js"></script>
		<?php
			include 'includes/menu.php';
			include 'includes/connexion.php';
			//numeroDeCommande
		?>

		
		<div id="conteneur_generale">
			
			
				<?php
					$numeroCommandeTemporaire = 0;
				 	
					$bd = seConnecter();
					$query = "SELECT * FROM commandeencours WHERE status = '1'";
					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{

							$prix = 0;
							
							while ($r = $requetteSql->fetch()) 
								{
									
									$query2 = "SELECT * FROM articles where id = '".$r['idArticleCommander']."' ";
									$requetteSql2 = $bd->prepare($query2);
									$requetteSql2->execute();
									if($requetteSql2->rowCount() > 0) 
										{
											

											while ($r2 = $requetteSql2->fetch()) 
												{
													$numeroDeCommandeActuel = $r['numeroDeCommande'];

													
													if($numeroDeCommandeActuel != $numeroCommandeTemporaire)
														{
															
															
															
															echo "<div id=\"boite_numero_de_commande\">Numero de commande : <h1>".$r['numeroDeCommande']."</h1><a href=\"impression.php?numeroCommande=".$numeroDeCommandeActuel."\"><img src=\"images/icone/imprimante.png\"/></a><a href=\"suppression.php?numeroCommande=".$numeroDeCommandeActuel." \"><img src=\"images/icone/croix.png\" /></a></div>";
														}

													
													
													if($r['menu'] == 1)
													{
														$prix = $r2['prixEnMenu'];
														$MenuTexte = "MENU";

													}
													else if($r['menu'] == 0)
													{
														$prix = $r2['prixSeul'];
														$MenuTexte = "SEUL";
													}
													echo " 
																<div class=\"boite_numero_de_commande\" >
																<img class =\"imageArticleCommandeEnCours\"src=".$r2['image']." />
																[<font color=\"red\">".$MenuTexte."</font>]  ".$r2['nom']."
																&nbsp Prix:&nbsp".$prix."€
																<br>
																";
																if($r['menu'] == 1)
																	{
																		echo 	"
																				&nbsp&nbsp&nbsp&nbsp Sauce : ".$r["sauce"]."<br>
																				&nbsp&nbsp&nbsp&nbsp boisson : ".$r["boisson"]."<br>
																				&nbsp&nbsp&nbsp&nbsp ".$r['sc']."
																				".$r['ss']."
																				".$r['st']."
																				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp".$r['so']."
																				".$r['sf']."
																				".$r['ssa'];

																	}
																	
																
													echo "</div>";
													if($numeroDeCommandeActuel != $numeroCommandeTemporaire)
														{
															$numeroCommandeTemporaire = $r['numeroDeCommande'];
														
														}
												

												}

											
										}
										

										
													
													
									}
						}

						else
							{
								echo "<br><center><h2>Aucune commande en cours ... </h2></center><br>";

							}
						
				?>
		</div>


		
		
		

	</body>
</html>