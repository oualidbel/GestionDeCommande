<?php
						include '../../includes/connexion.php';
							$bd = seConnecter();
							$query = "SELECT * FROM articles WHERE categorie = 'Burger' ORDER BY nom";
							$requetteSql = $bd->prepare($query);
							$requetteSql->execute();
							if($requetteSql->rowCount() > 0) 
								{
									while ($r = $requetteSql->fetch()) 
										{
											echo "
											<div class=\"boite_article\" onclick=\"ajouterArticleAjax(".$r['id'].")\">
												<div class=\"entete_article\" >".$r['nom']."</div>";
													

										echo"<a id=\"lienArticle\" >
											<img src=\"".$r['image']."\" width=\"100%\" height = \"125px\"/>
												</a></div>";
												
										}
											
										
								}
							else
								{
									echo("il n'y a pas d'articles actuellement...");
								}

?>