<!doctype html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="styles/mainstyle.css">
		<meta charset="utf-8">
	</head>

	<body>
		<?php
			include 'includes/menu.php';
			include 'includes/connexion.php';
		?>
		<div id="conteneur_generale">
			
			<center><h1>Ajouter un articles</h2></center>

			<center><form action="ajoutArticles.php" method="POST" enctype="multipart/form-data">
			Categorie D'articles : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<select name="categorie">
								<option value="">Choissisez une categorie</option>
								<option value="Burger">Burger</option>
								<option value="Boissons">Boissons</option>
								<option value="Dessert">Dessert</option>
								<option value="Sauces">Sauces</option>
							  </select></br></br>
			Nom de l'articles : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="text" name="nomArticles"></br></br>
			Prix de l'articles seul : &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="number" step="0.01" name="prixArticlesSeul"></br></br>
			Prix de l'articles en menu : <input type="number" step="0.01" name="prixArticlesmenu"></br></br>
			Image : <input type="file" name="imageArticles"  accept="image/*"></br></br>
			<input type="submit" name="valider" value="valider">
			</form></center>

			<?php
			
			if(isset($_POST['valider']) && !empty($_POST['valider']))
			{
				if(isset($_POST['categorie']) && !empty($_POST['categorie']))
					{
					if(isset($_POST['nomArticles']) && !empty($_POST['nomArticles']))
						{
							if(isset($_POST['prixArticlesSeul']) && !empty($_POST['prixArticlesSeul']))
								{	
									if(isset($_POST['prixArticlesmenu']) && !empty($_POST['prixArticlesmenu']))
										{
											if(isset($_FILES['imageArticles']) && !empty($_FILES['imageArticles']))
												{
								
													$nomArticle = $_POST['nomArticles'];
													$prixArticleSeul = $_POST['prixArticlesSeul'];
													$prixArticleEnMenu = $_POST['prixArticlesmenu'];
													$categorie = $_POST['categorie'];
													$bd = seConnecter();
													$destination = ajouterImage();
													$query = "INSERT INTO articles(nom,prixSeul,prixEnMenu,image,categorie) VALUES(:article,'".$prixArticleSeul."','".$prixArticleEnMenu."','".$destination."','".$categorie."')";
													$requetteSql = $bd->prepare($query);
													$requetteSql->bindValue(':article',$nomArticle,PDO::PARAM_STR);
													$requetteSql->execute();
												}
											else
												{
													echo'</br></br><div class="boitesErreurFormulaire">Veuillez saisir un prix de l\'article en Menu</div>';
												}
										}
									else
										{
											echo'</br></br><div class="boitesErreurFormulaire">Veuillez saisir un prix de l\'article Menu</div>';
										}
								}
							else
								{
									echo'</br></br><div class="boitesErreurFormulaire">Veuillez saisir un prix de l\'article seul</div>';
								}
						}
					else
						{
							echo'</br></br><div class="boitesErreurFormulaire">Veuillez saisir un nom d\'article</div>';

						}
					}
				else
					{
						echo'</br></br><div class="boitesErreurFormulaire">Veuillez saisir une categorie d\'article </div>';
					}

			}
			


			function ajouterImage()
			{

				// on telecharge l'image dans le dossier images/articles
				if($_FILES['imageArticles']['error'] > 0)
					{
						echo " </br></br><center><p color=\"red\"><div class=\"boitesErreurFormulaire\">ERREUR : l'image ne c'est pas enregistrer</p></center></div>";
						echo "2";
					}
				else
					{
				 		$nomImage = md5(uniqid(rand(), true));
				 		$destination = "images/articles/".$nomImage.".jpg";
				 		$transfert = move_uploaded_file($_FILES['imageArticles']['tmp_name'], $destination);
				 		echo "3";
			   			if($transfert)
				 		{
				 			echo"</br></br><div class=\"boitesErreurFormulaire\" style=\"background-color:green ;color:white;\">l'article a été ajouté avec succes !</div>";
				 		}
				 		else
				 		{
				 			echo"</br></br><div class=\"boitesErreurFormulaire\">l'image ne c'est pas enregistrer !</div>";
				 		}

					}
			return $destination;


			}





			?>


			
		</div>


		
		
		

	</body>
</html>