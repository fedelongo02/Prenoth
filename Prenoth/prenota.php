<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Prenota Stanza</title>
     <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="hotelInfo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <?php
        include('header.php');
        include('db.php');

        if (isset($_GET['IdStanza'])) {
            $IdStanza = $_GET['IdStanza'];
            $sql = "SELECT s.*, h.Nome AS NomeHotel FROM stanza s JOIN hotel h ON s.IdHotel = h.IdHotel WHERE s.IdStanza = $IdStanza";
            $result = $db->query($sql);

            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();

                // Qui puoi aggiungere un form per completare la prenotazione
                echo "<div class='prenota-container'>";
                echo "<h1>Hotel: " . $row['NomeHotel'] . ", Stanza: " . $row['Tipo'] . "</h1>";
                echo "<p>Prezzo: " . $row['Prezzo'] . "€ a notte</p>";
                echo "<p>Posti letto: " . $row['Letti'] . "</p>";
                echo "<p>Piano: " . $row['Piano'] . "</p>";
                echo "<form action='conferma_prenotazione.php' method='POST'>
                        <input type='hidden' name='IdStanza' value='" . $row['IdStanza'] . "'>
                        <label for='data_inizio'>Data Inizio:</label>
                        <input type='date' id='data_inizio' name='data_inizio' required>
                        <br>
                        <label for='data_fine'>Data Fine:</label>
                        <input type='date' id='data_fine' name='data_fine' required>
                        <br>
                        <input type='submit' value='Prenota'>
                    </form>";
                echo "</div>";
            } else {
                echo "<h1>Stanza non trovata.</h1>";
            }
        } else {
            echo "<h1>Nessuna stanza selezionata.</h1>";
        }

        include('footer.php');
    ?>
</body>
</html>