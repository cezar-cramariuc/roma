<header>
<div id="div1Header">
    <div class="sigla">
        <h1 id=siglaSite><a href="###">Roma antică</a></h1>
    </div>
</div>
<div id="div2Header">
    <div id="logareHeader">
        <ul>
            <?php
            if (isset($_SESSION['user_id'])) {
                echo '<li><a href="logout.php">Delogare</a></li>';
            } else {
                echo '<li><a href="logare.php">logare </a></li>';
            }
            ?>
        </ul>
    </div>
<div class="nav">
        <ul>
            
          
                </ul>
            </li>
            <li>
            </li>
        </ul>
    </div>
   
    </div>
</header>