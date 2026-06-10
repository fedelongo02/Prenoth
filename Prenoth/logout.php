<?php
    session_start();
    // chiudo la sessione
    session_unset();

    // reindirizzo alla pagina di login
    header("Location: accedi.php");
    exit();
?>