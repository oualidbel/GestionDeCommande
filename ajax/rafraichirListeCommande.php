<?php 
include '../includes/connexion.php';
					
					session_start();
					$bd = seConnecter();
					$query = "SELECT * FROM commandeencours WHERE status = '0' ";
					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							$prix = 0;
							$numeroCommande = 0;
							while ($r = $requetteSql->fetch()) 
								{

									if($numeroCommande == 0 )
									{
										$numeroCommande = $r['numeroDeCommande'];
										echo "<center><div id=\"boite_numero_de_commande\">Numero de commande : <h1>".$numeroCommande."</h1></div></center>";
									}
									
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
													echo " 

																<div class=\"boite_article_commande_en_cours\">
																<img class =\"imageArticleCommandeEnCours\"src=".$r2['image']." />
																[<font color=\"red\">".$MenuTexte."</font>]  ".$r2['nom']."
																&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbspPrix:&nbsp<b>".$prix."</b> €
																<a>
																	<img class = \"imageSupprimerArticleCommandeEnCours\" src=\"images/icone/croix.png\" onclick=\"supprimerArticleAjax(".$r['id'].")\"/>
																</a><br>
																";
																if($r['menu'] == 1)
																	{
																		echo 	"
																				&nbsp&nbsp&nbsp&nbsp Sauce : ".$r["sauce"]."<br>
																				&nbsp&nbsp&nbsp&nbsp Boisson : ".$r["boisson"]."<br>
																				&nbsp&nbsp&nbsp&nbsp ".$r['sc']."&nbsp
																				".$r['ss']."&nbsp
																				".$r['st']."&nbsp
																				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp".$r['so']."&nbsp
																				".$r['sf']."&nbsp
																				".$r['ssa']."

																				";

																	}
																	
																
													echo "</div>";

													
													
												}

												
										}
									}
						}

						else
							{
								echo "<br><center><h2>Aucune commande en cours ... </h2></center><br>";

							}



?>

