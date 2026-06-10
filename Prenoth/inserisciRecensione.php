<?php
    // Codice per l'inserimento della recensione
    session_start();
    include 'db.php';

    // controllo se la richiesta è di tipo POST
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $IdHotel = $_POST['IdHotel'];
        $IdUtente = $_SESSION['id_utente'];
        $Voto = $db->real_escape_string($_POST['voto']);
        $Testo = $db->real_escape_string($_POST['testo']);

        // Inserimento della recensione nel database
        $insertQuery = "INSERT INTO RECENSIONE (IdHotel, IdUtente, Voto, Testo) VALUES ($IdHotel, $IdUtente, $Voto, '$Testo')";
        

        // Esecuzione della query di inserimento
        if ($db->query($insertQuery) === TRUE) {
            header("Location: hotelInfo.php?IdHotel=$IdHotel");
            exit();
        } else {
            echo "Errore durante l'inserimento della recensione: " . $db->error;
        }
    }
?>