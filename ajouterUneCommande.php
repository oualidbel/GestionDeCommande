<!doctype html>
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="styles/mainstyle.css">
		<meta charset="utf-8">
	</head>

	<body>
		<?php session_start();?>
		<script src="jquery/jquery-3.6.0.min.js"></script>
		<script type="text/javascript">
			
			// on initialise la variable du prix total en debut de page
			var prixTotal = 0;

				
			function caseCocher()
				{
					if(document.getElementById("checkboxMenu").checked == true)
					{
						document.getElementById("sauces").style.display = 'inline';
						document.getElementById("boissons").style.display = 'inline';
						
					}
					else
					{
						document.getElementById("sauces").style.display = 'none';
						document.getElementById("boissons").style.display = 'none';
						
					}
      					
						
      				
				}


			function ajouterArticleAjax(idRecu)
			{
				
					if(document.getElementById("checkboxMenu").checked == true)
					{
						var ismenu = 1;
						var sauce = $("#sauces option:selected").val();
						var boisson = $("#boissons option:selected").val();
					}
					else
					{
						var ismenu = 0;
						var sauce = "";
						var boisson = "";
					}

					if($("#SC").prop("checked"))
					{
						var sc = "Sans Crudite";
					}
					else
					{
						var sc = "";
					}
					if($("#SS").prop("checked"))
					{
						var ss = "Sans Salade";
					}
					else
					{
						var ss = "";
					}
					if($("#ST").prop("checked"))
					{
						var st = "Sans Tomate";
					}
					else
					{
						var st = "";
					}
					if($("#SO").prop("checked"))
					{
						var so = "Sans Oignon";
					}
					else
					{
						var so = "";
					}
					if($("#SF").prop("checked"))
					{
						var sf = "Sans Fromage";
					}
					else
					{
						var sf = "";
					}
					if($("#SSA").prop("checked"))
					{
						var ssa = "Sans Sauce";
					}
					else
					{
						var ssa = "";
					}
					

					$.ajax({
						url:"ajax/ajouterArticle.php",
						method:"POST",
						data:{ 
								id:idRecu,
								menu:ismenu,
								sauce:sauce,
								boisson:boisson,
								sc:sc,
								ss:ss,
								st:st,
								so:so,
								sf:sf,
								ssa:ssa
							 },
						success:function()
						{
							rafraichirListeCommande();
  													
						}

					});

					// on decoche les checkbox une fois l'article ajouter
					document.getElementById("checkboxMenu").checked = false;
					document.getElementById("SC").checked = false;
					document.getElementById("SS").checked = false;
					document.getElementById("ST").checked = false;
					document.getElementById("SO").checked = false;
					document.getElementById("SF").checked = false;
					document.getElementById("SSA").checked = false;
					document.getElementById("sauces").style.display = 'none';
					document.getElementById("boissons").style.display = 'none';

				
			}

			function supprimerArticleAjax(idRecu)
			{
				
				$.ajax({
						url:"ajax/supprimerArticle.php",
						method:"POST",
						data:{ 
								id:idRecu
							 },
						success:function()
						{
							rafraichirListeCommande();
  													
						}

					});

			}

			//fonction pour mettre a jour le contenu de la page en fonction de l'onglet cliquer
			function miseAJourContenuPage(recu)
			{
				if(recu == "boissons.php" || recu == "desserts.php" || recu == "sauces.php" || recu == "commandesEnCours.php")
				{
					$("#barreCrudite").slideUp();
				}
				else
				{
					$("#barreCrudite").slideDown();
				}
				$("#conteneur_articles_gauche").empty();
				$("#conteneur_articles_gauche").load("ajax/pages/"+recu);

			}

			function rafraichirListeCommande()
			{
				$("#conteneur_liste_commandes_droite").empty();
				$("#conteneur_liste_commandes_droite").load("ajax/rafraichirListeCommande.php");
				miseAJourPrixTotal();

			}

			// fonction pour mettre a jour le prix total

			function miseAJourPrixTotal()
			{
				
				
				
				$("#prixTotalTexte").empty();
				$("#prixTotalTexte").load("ajax/miseAJourPrix.php");
				
				
			}

			function validationCommande()
			{
				
				var varAdresse = $("#Adresse").val();
				var varNumero = $("#numero").val();


				$.ajax({
						url:"ajax/validationCommande.php",
						method:"POST",
						data:{ 
								adresse : varAdresse,
								numero : varNumero
							 },
						success:function()
						{
							rafraichirListeCommande();
  													
						}
					});

				location.reload(true);
			}



			// on affiche les articles au premier chargement de la page
			$(document).ready(function(){
				$("#conteneur_articles_gauche").load("ajax/pages/burgers.php");
			});
				
				
		</script>

		<?php
			include 'includes/menu.php';
			include 'includes/connexion.php';
		?>
		<div id="conteneur_generale">
			
				<div id="barreCrudite">
					
	
					<form id="formulaireMenu" method="POST" action="ajouterArticlesCommandeEnCours.php">
						&nbsp&nbsp&nbsp Menu : <input type="checkbox" id="checkboxMenu"name="Menu\" value="1" onclick="caseCocher()" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<?php

					$bd = seConnecter();
					$query = "SELECT * FROM articles WHERE categorie = 'Sauces' ";
				    $requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							echo '<select name="sauces" id="sauces">
								  <option value="">--Choissisez une sauces--</option>';

							while ($r = $requetteSql->fetch()) 
								{
									echo "<option value=\"".$r['nom']."\">".$r['nom']."</option>";
								}
							echo '</select>';	
						}

					$query = "SELECT * FROM articles WHERE categorie = 'Boissons' ";
				    $requetteSql = $bd->prepare($query);
					$requetteSql->execute();
					if($requetteSql->rowCount() > 0) 
						{
							echo '<select name="boissons" id="boissons">
								  <option value="">--Choissisez une boissons--</option>';

							while ($r = $requetteSql->fetch()) 
								{
									echo "<option value=\"".$r['nom']."\">".$r['nom']."</option>";
								}
							echo '</select>';	
						}


					?>

					Sans Crudité : <input type="checkbox" id="SC" value="1" >
					Sans Salade : <input type="checkbox" id="SS" value="1" >
					Sans Tomate : <input type="checkbox" id="ST" value="1" >
					Sans Oignon : <input type="checkbox" id="SO" value="1" >
					Sans Fromage : <input type="checkbox" id="SF" value="1" >
					Sans Sauce : <input type="checkbox" id="SSA" value="1" >
					
				</div>

				</form>

				
			<div id="conteneur_articles_gauche">

			</div>
			<div id="conteneur_liste_commandes_droite">
				<script type="text/javascript">
					$(document).ready(function(){
						rafraichirListeCommande();

						

					});
				</script>
				

			</div>
			<div id="boite_total">
				<br>
				Adresse : <input type="text" id="Adresse"><br><br>
				numero :  <input type="text" id="numero"><br>
				<p id="prixTotalTexte"><p>
				<button onclick="validationCommande();">Valider la commande</button>
			</div>

			<div id="basDePage">Propriété de SAS Bm Burger (Crée par Oualid.B et Oussama.B)</div>
			
		</div>



		
	</body>
</html>