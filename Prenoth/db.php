<?php
    //collegamento al database
    //("percorso", "username", "password", "nome del database")
    $db = new mysqli("localhost", "root", "", "prenoth");

    //controlliamo se la connessione è andata a buon fine
    if($db -> connect_errno){
        echo("Si è verificato un errore durante la connessione al database");
        exit();
    }
?>