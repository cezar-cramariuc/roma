<?php
session_start();
$id_cronos=$_REQUEST['id_cronos'];
$sel = "SELECT id_cronologie, perioada, durata FROM cronologie WHERE id_cronologie=$id_cronos";
$rez = mysqli_query($dbc4, $sel);

/* ****************************** */
$sel_per="SELECT id_dinastie,id_cronologie, nume_dinastie, dinastie_ani FROM dinastii WHERE id_cronologie=$id_cronos";
$rezultat = mysqli_query($dbc4, $rezultat);
while($row=mysqli_fetch_array($rezultat, MYSQLI_BOTH)) {
	echo "<p>".$row['nume_dinastie']."&nbsp". $row['dinastie_ani'] ."</p>";	
	
}


?>