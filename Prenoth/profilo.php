<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Profilo</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="profilo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <?php include('header.php'); 
            include('db.php'); ?>

    <div class="profilo-info">
        <h2>Profilo</h2>
        <p><strong>Nome e Cognome:</strong> <?php echo $_SESSION['nome_utente'] . ' ' . $_SESSION['cognome_utente']; ?></p>
        <p><strong>Email:</strong> <?php echo $_SESSION['email']; ?></p>
        <p><strong>Data di Nascita:</strong> <?php echo $_SESSION['data_nascita']; ?></p>

        <h2>Le tue prenotazioni</h2>
        <?php
            $id_utente = $_SESSION['id_utente'];
            $sql = "SELECT p.IdPrenotazione, p.DataInizio, p.DataFine, h.*, s.Prezzo
                    FROM prenota p 
                    JOIN stanza s ON p.IdStanza = s.IdStanza
                    JOIN hotel h ON s.IdHotel = h.IdHotel
                    WHERE p.IdUtente = $id_utente";
            $result = $db->query($sql);

            if ($result->num_rows > 0) {
                echo "<div class='prenotazioni-container'>";
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='card-prenotazione'>";
                    echo "<h3>" . $row['Nome'] . "</h3>";
                    echo "<p><strong>Tipo:</strong> " . $row['Tipo'] . "</p>";
                    echo "<p><strong>Indirizzo:</strong> " . $row['Cap'] . " - " . $row['Comune'] . ", " . $row['Via'] . " " . $row['Civico'] . "</p>";
                    echo "<p><strong>Prezzo:</strong> " . $row['Prezzo'] . "€ a notte</p>";
                    echo "<p><strong>Data Inizio:</strong> " . $row['DataInizio'] . "</p>";
                    echo "<p><strong>Data Fine:</strong> " . $row['DataFine'] . "</p>";
                    echo "</div>";
                }
                echo "</div>";
            } else {
                echo "<p>Non hai ancora effettuato prenotazioni.</p>";
            }
        ?>

        <h2>I tuoi preferiti</h2>
        <?php
            $sql_pref = "SELECT h.* FROM preferiti p JOIN hotel h ON p.IdHotel = h.IdHotel WHERE p.IdUtente = $id_utente";
            $result_pref = $db->query($sql_pref);

            if ($result_pref->num_rows > 0) {
                echo "<div class='preferiti-container'>";
                while ($row = $result_pref->fetch_assoc()) {
                    echo "<div class='card-preferito'>";
                    echo "<h3>" . $row['Nome'] . "</h3>";
                    echo "<p><strong>Indirizzo:</strong> " . $row['Cap'] . " - " . $row['Comune'] . ", " . $row['Via'] . " " . $row['Civico'] . "</p>";
                    echo "<p><strong>Descrizione:</strong> " . $row['Descrizione'] . "</p>";
                    echo "<a href='hotelInfo.php?IdHotel=" . $row['IdHotel'] . "' class='btn-info' style='text-decoration: none;'>Vedi Dettagli</a>";
                    echo "</div>";
                }
                echo "</div>";
            } else {
                echo "<p>Non hai ancora aggiunto hotel ai preferiti.</p>";
            }
        ?>
    </div>  

    <?php include('footer.php'); ?>
</body>
</html>