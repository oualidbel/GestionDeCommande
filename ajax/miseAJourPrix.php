<?php 
include '../includes/connexion.php';

$bd = seConnecter();
					$query = "SELECT * FROM commandeencours WHERE status = '0'";
					$requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							
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


													$prixTotal += $prix;


												}
										}
								}

							echo "Total de la Commande : ".$prixTotal." €";
							}
							else
							{
								echo "Total de la Commande : 0 €";
							}
																	
																
												
?>