<?php
    include('db.php');
    session_start();

    $data_inizio = $_POST['data_inizio'];
    $data_fine = $_POST['data_fine'];
    $id_stanza = $_POST['IdStanza'];
    $id_utente = $_SESSION['id_utente'];

    $sql = "INSERT INTO prenota (DataInizio, DataFine, IdStanza, IdUtente) VALUES ('$data_inizio', '$data_fine', $id_stanza, $id_utente)";

    if ($db->query($sql) === TRUE) {
        header("Location: profilo.php");
    } else {
        echo "<h1>Errore nella prenotazione.</h1>";
    }
    $db->close();
?>