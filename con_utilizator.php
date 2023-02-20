<?php
DEFINE('DB_USER', 'root');
    DEFINE('DB_PASSWORD', '');
    DEFINE('DB_HOST', 'localhost');
    DEFINE('DB_NAME4', 'roma');
    $dbc4 = @mysqli_connect(DB_HOST, DB_USER, DB_PASSWORD, DB_NAME4) or die('Conectare eșuată: ' . mysqli_connect_error());
?>