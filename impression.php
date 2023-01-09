<!doctype html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="styles/styles-impression.css">
		<meta charset="utf-8">
	</head>

	<body>
		<script src="jquery/jquery-3.6.0.min.js"></script>
		<script type="text/javascript">
	
			window.print();

			setTimeout(function() 
				{
					document.location.href="ajouterUneCommande.php";		
				}, 1000);
	 	
		</script>

		<?php
			
			include 'includes/connexion.php';
			//numeroDeCommande
		?>
			
			
				<?php

					$numeroCommandeRecu = $_GET['numeroCommande'];


					echo "
												
								<div id=\"conteneur_ticket_generale\">
									<center><b><div id=\"boite_numero_de_commande\">Numero de commande <h1>".$numeroCommandeRecu."</h1></div></b></center>

									<center><b><img src=\"images/icone/sodriveTicket.png\" /></br></center>
									<center>Restaurant So'Drive Burger Hellemmes</br>
									76 rue Roger Salengro </br>
									59260 Hellemmes </br>
									Tel : 03.66.59.98.05 / 07.67.18.94.48</br>
									Siret : 883 545 865</b></center></br></br>
									<div id=\"ticket_tableau\">
									<table>
									<tr>
									<th>Burger</th>
									<th>Sauce</th>
									<th>Boisson</th>
									<th>Prix</th>
									</tr>
						";


					$bd = seConnecter();
					$query = "SELECT * FROM clients WHERE numeroDeCommande = '".$numeroCommandeRecu."'";
					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							
							while ($r = $requetteSql->fetch()) 
								{

									echo "Numero : ".$r['numero']."<br>";
									echo "Adresse : ".$r['adresse']."<br>";
									echo "Date : ".$r['date']."<br><br>";

								}
						}










				 	
					$bd = seConnecter();
					$query = "SELECT * FROM commandeencours WHERE numeroDeCommande = '".$numeroCommandeRecu."'";
					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							
							$prix = 0;
							$prixTotal = 0;
							
							while ($r = $requetteSql->fetch()) 
								{
									
									
									
									$query2 = "SELECT * FROM articles where id = '".$r['idArticleCommander']."' ";
									$requetteSql2 = $bd->prepare($query2);
									$requetteSql2->execute();
									if($requetteSql2->rowCount() > 0) 
										{


											while ($r2 = $requetteSql2->fetch()) 
												{
														
													
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


													if($r2['categorie'] == "Sauces")
													{
														echo " 
																	
																	<tr>
																		<td>[<font color=\"black\">SAUCE</font>]".$r2['nom']." <b>".$r['sc']." ".$r['ss']." ".$r['st']." ".$r['so']." ".$r['sf']." ".$r['ssa']."</b></td>
															";		
													}
													else
													{
														echo " 
																	
																	<tr>
																		<td>[<font color=\"black\">".$MenuTexte."</font>]".$r2['nom']." <b>".$r['sc']." ".$r['ss']." ".$r['st']." ".$r['so']." ".$r['sf']." ".$r['ssa']."</b></td>
															";
													}
													
																		

																	

																		
																	
															

																	
																
																if($r['menu'] == 1)
																	{
																		echo 	"
																				<td>".$r["sauce"]."</td>
																				<td>".$r["boisson"]."</td>
																				";
																	}

																elseif($r['menu'] == 0)
																{
																	echo 	"
																				<td>".$r["sauce"]."</td>
																				<td>".$r["boisson"]."</td>
																			";	

																}
													

														echo"<td>".$prix."€</td>
																	</tr>";
														$prixTotal += $prix;

												}

											

											
										}
										

										

																	
												
												

													
													
									}

									echo"
										</div>
										</table><br><br>
										<center><b>Total : ".$prixTotal."</b></center>			
										</div>";

								
						?>
						<script type="text/javascript">
							//window.print();
						</script>
						<?php
						}

						else
							{
								echo "<br><center><h2>Aucune commande en cours ... </h2></center><br>";

							}
						
				?>
	


		
		
		

	</body>
</html>