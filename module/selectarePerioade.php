<?php

    require('con_utilizator.php');
  $id = $_REQUEST['id'];
  $sel = "SELECT id_cronologie, perioada, durata FROM cronologie WHERE id_cronologie=$id";
  $rez = mysqli_query($dbc4, $sel);
  $row = mysqli_fetch_array($rez, MYSQLI_BOTH);
  //**************************************sf selectare perioade
  if ($id == 1) {
    echo "<h3>Regii Romei</h3>";
    $selRegi = "SELECT id_conducatori, id_cronologie, nume_conducator, perioada_conducere, caracterizare_conducator, portret FROM conducatori WHERE id_cronologie = $id";
    $rezRegi = mysqli_query($dbc4, $selRegi);

    echo "<div class='cardPrezentare'>";
    
    while ($randRege = mysqli_fetch_array($rezRegi, MYSQLI_BOTH)) {
      echo "<div class='cardPrezentare-itemA'><h1>Regele" ." " . $randRege['nume_conducator']. "</h1></div>";
      echo "<div class='cardPrezentare-itemB'><h1>Perioada domniei</h1>" . $randRege['perioada_conducere']. "</div>";
      echo "<div class='cardPrezentare-itemC'><h1>Caracteristici:</h1> <ul><li>" . $randRege['caracterizare_conducator']. "</li></ul></div>";
      echo "<div class='cardPrezentare-itemD'>" .'<img src="img/' . $randRege['portret']. '"/>' ."</div>";  
    }
    echo "</div>";
    
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

?>