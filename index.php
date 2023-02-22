<?php
session_start();
require('../con_utilizator.php');
$us = $_SESSION['user_id'];
$nume = $_SESSION['first_name'];
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Roma</title>
	<link rel="stylesheet" href="include/stil.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="../css/reset.css" rel="stylesheet">
	<link href="../index-css.css" rel="stylesheet">
	<link href="../icons/logo.png" rel="icon">
</head>

<body>

	<div id="pagina">
		<!--nav-->
		<?php
		require('../include/header.php');

		?>
		<!--********************************************-->
		<aside id="colstg">

			<?php
			//***************************selectare perioade***********************
			$sel = "SELECT id_cronologie, perioada, durata FROM cronologie";
			$rez = mysqli_query($dbc4, $sel);
			$i = 1;
			echo "<ul style='list-style-type:none'>";
			echo "<h2>Perioade</h2>";
			while ($row = mysqli_fetch_array($rez, MYSQLI_BOTH)) {
				echo '<li><a href="index.php?id=' . $row['id_cronologie'] . '">' . $row['perioada'] . "</a>" . " (" . $row['durata'] . ")</li>";
			}
			echo "</ul>";

			//*******************************sf selectare per************************************
			//****************************selectare societate *******************************
			$selSoc = "SELECT id_societatea, id_cronologie, perioada FROM societatea INNER JOIN cronologie USING(id_cronologie)";
			$rezSoc = mysqli_query($dbc4, $selSoc);
			$p = "În perioada: ";
			echo "<ul style='list-style-type:none'>";
			echo "<h2>Societatea</h2>";
			while ($rindSoc = mysqli_fetch_array($rezSoc, MYSQLI_BOTH)) {
				echo '<li>' . $p . '<a href = "index.php?ids=' . $rindSoc['id_cronologie'] . '">' . $rindSoc['perioada'] . "</a></li>";
			}
			echo "</ul>";
			//**********************************sf selectare societt
			//*************************************selectare economie
			$selEc = "SELECT id_economia, id_cronologie, perioada FROM economia INNER JOIN cronologie USING(id_cronologie)";
			$rezEc = mysqli_query($dbc4, $selEc);

			echo '<ul style="list-style:none;">';
			echo "<h2>Economia</h2>";
			while ($rindEc = mysqli_fetch_array($rezEc, MYSQLI_BOTH)) {
				echo "<li>" . $p . '<a href = "index.php?idc=' . $rindEc['id_cronologie'] . '">' . $rindEc['perioada'] . "</a></li>";
			}
			echo "</ul>";

			//************************************sf sel eco
			//***********************************EVENIMEnte
			echo '<ul style="list-style:none;">';
			echo "<h2>Evenimente</h2>";

			echo "</ul>";
			//******************************************sf ev

			?>
		</aside>

		<main>
			<?php

			//**********************************selectarea perioadelor

			$id = $_REQUEST['id'];
			$sel = "SELECT id_cronologie, perioada, durata FROM cronologie WHERE id_cronologie=$id";
			$rez = mysqli_query($dbc4, $sel);
			$row = mysqli_fetch_array($rez, MYSQLI_BOTH);
			//**************************************sf selectare perioade
			if ($id == 1) {
				echo "<h3>Regii romani</h3>";
				$selRegi = "SELECT id_conducatori, id_cronologie, nume_conducator, perioada_conducere, caracterizare_conducator, portret FROM conducatori WHERE id_cronologie = $id";
				$rezRegi = mysqli_query($dbc4, $selRegi);
				echo "<table class = 'table'>";
				echo "<tr><th style='width:15%;'>Rege</th><th style = 'width:15%;'>Domnie</th><th style = 'width:60%;'>Portret</th></tr>";
				while ($randRege = mysqli_fetch_array($rezRegi, MYSQLI_BOTH)) {
					echo "<tr><th style='width:25%;'>" . $randRege['nume_conducator'] . "</th><td style='width:25%;'>" . $randRege['perioada_conducere'] . "</td><td>"
						. '.<img src="img/' . $randRege['portret'] . '"/>' .
						"</td></tr><tr><td colspan='2' style='width:60%;'>" . $randRege['caracterizare_conducator'] . "</td></tr>";
				}
				echo "</table>";
			}
			//*********************republica */
			if ($id == 2) {
				echo "<h3>Personalități din timpul Republicii</h3>";
				$selConsuli = "SELECT id_conducatori, id_cronologie, nume_conducator, perioada_conducere, caracterizare_conducator, portret FROM conducatori WHERE id_cronologie = $id";
				$rezConsuli = mysqli_query($dbc4, $selConsuli);
				echo "<table class = 'table'>";
				echo "<tr><th style='width:35%;'>Personalitate</th><th style = 'width:55%;'>Conducere</th><th style = 'width:60%;'>Portret</th></tr>";
				while ($randConsuli = mysqli_fetch_array($rezConsuli, MYSQLI_BOTH)) {
					echo "<tr><th>" . $randConsuli['nume_conducator'] . "</th><td>" . $randConsuli['perioada_conducere'] . "</td><td>"
						. '.<img src="img/' . $randConsuli['portret'] . '"/>' .
						"</td></tr><tr><td colspan='3'>" . $randConsuli['caracterizare_conducator'] . "</td></tr>";
				}
				echo "</table>";
			}
			//*******************dinastiile
			if ($id == 3) {
				echo "<h3>Dinastiile romane în timpul Principatului</h3>";
				$sel_per = "SELECT id_dinastie,id_cronologie, nume_dinastie, dinastie_ani FROM dinastii WHERE id_cronologie=$id";
				$rezultat = mysqli_query($dbc4, $sel_per);
				echo "<table class='table'>";
				while ($row = mysqli_fetch_array($rezultat, MYSQLI_BOTH)) {
					echo '<tr><td><a href="index.php?princ=' . $row['id_dinastie'] . '">' . $row['nume_dinastie'] . "</td><td>" . $row['dinastie_ani'] . "</td></tr>";
				}
				echo "</table>";
			}
			//******************************************sf selectarea dinastiilor
			//************************************************ selectarea principilor

			$princ = $_REQUEST['princ'];
			$sll = "SELECT id_dinastie, nume_dinastie, dinastie_ani FROM dinastii WHERE id_dinastie = $princ";
			$rzz = mysqli_query($dbc4, $sll);

			if ($princ == 1) {
				echo "<h4>Împărații romani din timpul dinastiei Iulia Claudia</h4>";
				$sel_Pr = "SELECT id_principe, nume, ani_domnie, id_dinastie, portret FROM principi WHERE id_dinastie = $princ";
				$rez_Pr = mysqli_query($dbc4, $sel_Pr);
				echo "<table class='table'>";
				echo "<tr><th>Principe</th><th>Perioada conducerii</th><th>Portret</th></tr>";
				while ($rw = mysqli_fetch_array($rez_Pr, MYSQLI_BOTH)) {

					echo "<tr><td>" . $rw['nume'] . "</td><td>" . $rw['ani_domnie'] . "</td><td>" . '.<img src="img/' . $rw['portret'] . '"/>' . "</td></tr>";
				}
			} elseif ($princ == 2) {
				echo "<h4>Împărații romani din timpul dinastiei Flavia</h4>";
				$sel_Pr = "SELECT id_principe, nume, ani_domnie, id_dinastie, portret FROM principi WHERE id_dinastie = $princ";
				$rez_Pr = mysqli_query($dbc4, $sel_Pr);
				echo "<table class='table'>";
				echo "<tr><th>Principe</th><th>Perioada conducerii</th><th>Portret</th></tr>";
				while ($rw = mysqli_fetch_array($rez_Pr, MYSQLI_BOTH)) {

					echo "<tr><td>" . $rw['nume'] . "</td><td>" . $rw['ani_domnie'] . "</td><td>" . '.<img src="img/' . $rw['portret'] . '"/>' . "</td></tr>";
				}
			} elseif ($princ == 3) {
				echo "<h4>Împărații romani din timpul dinastiei Antoninilor</h4>";
				$sel_Pr = "SELECT id_principe, nume, ani_domnie, id_dinastie, portret FROM principi WHERE id_dinastie = $princ";
				$rez_Pr = mysqli_query($dbc4, $sel_Pr);
				echo "<table class='table'>";
				echo "<tr><th>Principe</th><th>Perioada conducerii</th><th>Portret</th></tr>";
				while ($rw = mysqli_fetch_array($rez_Pr, MYSQLI_BOTH)) {

					echo "<tr><td>" . $rw['nume'] . "</td><td>" . $rw['ani_domnie'] . "</td><td>" . '.<img src="img/' . $rw['portret'] . '"/>' . "</td></tr>";
				}
			} elseif ($princ == 4) {
				echo "<h4>Împărații romani din timpul dinastiei Sever</h4>";
				$sel_Pr = "SELECT id_principe, nume, ani_domnie, id_dinastie, portret FROM principi WHERE id_dinastie = $princ";
				$rez_Pr = mysqli_query($dbc4, $sel_Pr);
				echo "<table class='table'>";
				echo "<tr><th>Principe</th><th>Perioada conducerii</th><th>Portret</th></tr>";
				while ($rw = mysqli_fetch_array($rez_Pr, MYSQLI_BOTH)) {

					echo "<tr><td>" . $rw['nume'] . "</td><td>" . $rw['ani_domnie'] . "</td><td>" . '.<img src="img/' . $rw['portret'] . '"/>' . "</td></tr>";
				}
			}

			echo "</table>";

			//*********************  sf selectarea principilor
			//*********************************************************************************** */
			//******************************preluare ids pentru societatea
			$ids = $_REQUEST['ids'];
			if ($ids == 1) {
				echo "<h4>Societatea în perioada Regatului</h4>";
				$selSoc1 = "SELECT id_societatea, id_cronologie, socCaracterizare FROM societatea WHERE id_cronologie = '$ids'";
				$rezSoc1 = mysqli_query($dbc4, $selSoc1);
				while ($rindSoc1 = mysqli_fetch_array($rezSoc1, MYSQLI_BOTH)) {
					echo "<article id='soc1'>" . $rindSoc1['socCaracterizare'] . "</article>";
				}
			} elseif ($ids == 2) {
				echo "<h4>Societatea în perioada Principatului</h4>";
				$selSoc2 = "SELECT id_societatea, socCaracterizare FROM societatea WHERE id_cronologie = '$ids'";
				$rezSoc2 = mysqli_query($dbc4, $selSoc2);
				while ($rindSoc2 = mysqli_fetch_array($rezSoc2, MYSQLI_BOTH)) {
					echo "<p>" . $rindSoc2['socCaracterizare'] . "</p>";
				}
			}
			//*************************sf ids societt
			//*********************************** SELECTARE idc economia
			$idc = $_REQUEST['idc'];
			if ($idc == 1) {
				echo "<h4>Economia în perioada monarhiei</h4>";
				$selEc1 = "SELECT id_economia, id_cronologie,ecoCaracteristici FROM economia WHERE id_cronologie = $idc";
				$rezEc1 = mysqli_query($dbc4, $selEc1);
				while ($rindEc1 = mysqli_fetch_array($rezEc1, MYSQLI_BOTH)) {
					echo "<p>" . $rindEc1['ecoCaracteristici'] . "</p>";
				}
			} elseif ($idc == 2) {
				echo "<h4>Economia în perioada Republicii</h4>";
				$selEc2 = "SELECT id_economia, id_cronologie,ecoCaracteristici FROM economia WHERE id_cronologie = $idc";
				$rezEc2 = mysqli_query($dbc4, $selEc2);
				while ($rindEc2 = mysqli_fetch_array($rezEc2, MYSQLI_BOTH)) {
					echo "<p>" . $rindEc2['ecoCaracteristici'] . "</p>";
				}
			}
			//*********************************sf idc economia
			?>
		</main>
		<!--************ sf div row  *****************************-->
		<?php
		require('../include/footer.php');
		?>
	</div>
	<script src="../index.js"></script>
</body>

</html>