<?php
include 'db.php';
session_start();

if (isset($_SESSION['id_utente']) && isset($_GET['IdHotel'])) {
    $id_u = $_SESSION['id_utente'];
    $id_h = $_GET['IdHotel'];

    // Controlliamo se esiste già
    $check = "SELECT * FROM PREFERITI WHERE IdUtente = $id_u AND IdHotel = $id_h";
    $res = $db->query($check);

    if ($res->num_rows > 0) {
        // Se esiste, lo rimuoviamo (toggle)
        $sql = "DELETE FROM PREFERITI WHERE IdUtente = $id_u AND IdHotel = $id_h";
    } else {
        // Se non esiste, lo aggiungiamo
        $sql = "INSERT INTO PREFERITI (IdUtente, IdHotel) VALUES ($id_u, $id_h)";
    }
    
    $db->query($sql);
}

// Torna alla pagina dell'hotel
header("Location: hotelInfo.php?IdHotel=" . $_GET['IdHotel']);
exit();
?>