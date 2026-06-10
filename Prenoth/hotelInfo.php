<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Info Hotel</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="hotelInfo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>

    <?php
        include 'header.php'; 
        include 'db.php';

        //la funzione isset() serve a chiedere a PHP: "Esiste questa variabile ed è diversa da NULL?".
        if (isset($_GET['IdHotel'])) {
            $IdHotel = $_GET['IdHotel'];

            //creazione query
            $datiHotel = "SELECT H.Img, H.Nome, H.Comune, H.Cap, H.Via, H.Civico, H.Descrizione, H.Stelle, H.Telefono, S.* FROM HOTEL H JOIN STANZA S ON H.IdHotel = S.IdHotel WHERE H.IdHotel = $IdHotel";

            //esecuzione query
            $resultDatiHotel = $db -> query($datiHotel);

            $row = $resultDatiHotel -> fetch_assoc();

            // LOGICA PREFERITI
            $cuore_classe = "far fa-heart"; // Cuore vuoto di default
            if (isset($_SESSION['id_utente'])) {
                $id_u = $_SESSION['id_utente'];
                // Controlliamo se esiste già il preferito nel DB
                $checkPref = "SELECT * FROM PREFERITI WHERE IdUtente = $id_u AND IdHotel = $IdHotel";
                $resPref = $db->query($checkPref);
                if ($resPref->num_rows > 0) {
                    $cuore_classe = "fas fa-heart"; // Cuore pieno se è già preferito
                }
            }

            echo "
            <div class='bodyInfo'>
                <img src='./Immagini/db/" . $row['Img'] . "' alt='" . $row['Nome'] . "' class='hotel-image-info'>
                <div class='info'>
                    <h2>" . $row['Nome'] . " ";
                    for($i = 0; $i < $row['Stelle']; $i++){
                        echo ("<i class='fas fa-star'></i>");
                    }

                    // AGGIUNTA CUORICINO
                    if (isset($_SESSION['id_utente'])) {
                        echo " <a href='gestisciPreferito.php?IdHotel=$IdHotel' class='btn-preferito'>
                                <i class='$cuore_classe' style='color: red;'></i>
                            </a>";
                    }
                    echo "</h2>
                    <p>" . $row['Comune'] . ", " . $row['Cap'] . "</p>
                    <p>" . $row['Via'] . ", " . $row['Civico'] . "</p>
                    <p>" . $row['Descrizione'] . "</p>
                    <hr>
                    <p>Per info e prenotazioni chiamare al: " . $row['Telefono'] . "</p>

                </div>
            </div>";

            echo "<div class='room-body'>";
            while($row = $resultDatiHotel -> fetch_assoc()){
                echo "
                <div class='card-room'>
                    <h3>Tipo di stanza: " . $row['Tipo'] . "</h3>
                    <p>Prezzo a notte: " . $row['Prezzo'] . "€</p>
                    <p>Posti letto: " . $row['Letti'] . "</p>
                    <p>Situata al " . $row['Piano'] . " piano</p>

                    <a href='prenota.php?IdStanza=" . $row['IdStanza'] . "' class='btn-prenota'>
                    Prenota ora
                    </a>
                </div>";
            }
            echo "</div>";
        }        
    ?>

    <div class="recensioni">
        <h2>Recensioni</h2>
        <?php
            //query per recuperare le recensioni dell'hotel
            $recensioniQuery = "SELECT R.Testo, R.Voto, U.Nome AS NomeUtente FROM RECENSIONE R JOIN UTENTE U ON R.IdUtente = U.IdUtente WHERE R.IdHotel = $IdHotel";

            $resultRecensioni = $db -> query($recensioniQuery);

            if (isset($_SESSION['id_utente'])) {
                echo "
                    <form action='inserisciRecensione.php' method='POST' class='form-recensione'>
                        <input type='hidden' name='IdHotel' value='$IdHotel'>
                        
                        <div class='rating-stars'>
                            <input type='radio' name='voto' id='star5' value='5' required><label for='star5'><i class='fas fa-star'></i></label>
                            <input type='radio' name='voto' id='star4' value='4'><label for='star4'><i class='fas fa-star'></i></label>
                            <input type='radio' name='voto' id='star3' value='3'><label for='star3'><i class='fas fa-star'></i></label>
                            <input type='radio' name='voto' id='star2' value='2'><label for='star2'><i class='fas fa-star'></i></label>
                            <input type='radio' name='voto' id='star1' value='1'><label for='star1'><i class='fas fa-star'></i></label>
                        </div>

                        <label for='testo'>La tua esperienza:</label>
                        <textarea name='testo' id='testo' rows='4' placeholder='Scrivi una recensione' required></textarea>
                        <input type='submit' value='Invia recensione' class='btn-prenota'>
                    </form>";
            }else {
                echo "<div class='redirect'>
                        <h3>Per Lasciare una recensione devi essere loggato!</h3>
                        <a href='accedi.php' class='btn-prenota'>Accedi</a>
                    </div>";
            }

            echo "<div class='recensioni-container'>";
            if($resultRecensioni -> num_rows > 0){
                while($row = $resultRecensioni -> fetch_assoc()){
                    echo "
                    <div class='card-recensione'>
                        <h3>" . $row['NomeUtente'] . " ";
                        for($i = 0; $i < $row['Voto']; $i++){
                            echo ("<i class='fas fa-star'></i>");
                        }
                        echo "</h3>
                        <p>" . $row['Testo'] . "</p>
                    </div>";
                }
            } else {
                echo "<p>Nessuna recensione disponibile per questo hotel.</p>";
            }
            echo "</div>";
        ?>
    </div>

    <?php include 'footer.php'; ?>
    
</body>
</html>