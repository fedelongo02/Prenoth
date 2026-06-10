<?php session_start(); ?>

<div class="navbar">
    <h1>PRENOTH</h1>
</div>

<div class="navsearch">
    <form action="search.php" method="GET">
        <?php 
            if (isset($_SESSION['id_utente'])) {
                echo "<h1>Ciao " . $_SESSION['nome_utente'] . ", dove vuoi andare?</h1>";
            }else {
                echo "<h1>Dove vuoi andare?</h1>";
            }
        ?>
        <div class="navInput">
            <input type="text" name="cerca" placeholder="Cerca...">
            <input type="submit" value="Cerca" id="searchButton">
        </div>       
    </form>

    <div class="navList">
        <ul>
            <?php
                if (isset($_SESSION['id_utente'])) {
                    echo "<li><a href='index.php' class='nav-link'>Home</a></li>";
                    echo "<li><a href='hotel.php' class='nav-link'>Hotel</a></li>";
                    echo "<li><a href='bnb.php' class='nav-link'>B&B</a></li>";
                    echo "<li><a href='profilo.php' class='nav-link'>Profilo</a></li>";
                    echo "<li><a href='logout.php' class='nav-link'>Logout</a></li>";
                } else {
                    echo "<li><a href='index.php' class='nav-link'>Home</a></li>";
                    echo "<li><a href='hotel.php' class='nav-link'>Hotel</a></li>";
                    echo "<li><a href='bnb.php' class='nav-link'>B&B</a></li>";
                    echo "<li><a href='accedi.php' class='nav-link'>Accedi</a></li>";
                    echo "<li><a href='login.php' class='nav-link'>Registrati</a></li>";
                }
            ?> 
        </ul>
    </div>
</div>