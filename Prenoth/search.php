<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Cerca</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <?php include 'header.php'; ?>

    <h2>Risultati della ricerca</h2>

    <div class="container">
        <?php
            include 'db.php';

            //recupero il dato di ricerca
            $comune = $db->real_escape_string($_GET['cerca']);

            //query per cercare hotel e b&b che corrispondono al comune
            $sql = "SELECT * FROM hotel WHERE comune = '$comune' ORDER BY Stelle DESC;";

            //esecuzione della query
            $result = $db -> query($sql);

            //controllo errori
            if(!$result){
                exit($db -> error);
            }

            //Controllo se la lista è vuota
            if ($result->num_rows === 0) {
                echo("<div class='eventCard'>
                        <p>Al momento non ci sono Hotel o B&B registrati nel seguente comune:$comune</p>
                    </div>");
            }else{
                //Hotel

                while($row = $result -> fetch_assoc()){
                    echo (
                        "<div class='card'>
                            <div class='image'>
                                <img src='./Immagini/db/" . $row["Img"] . "' alt='" . $row["Nome"] . "' class='hotel-image'>
                            </div>
                            <h3>" . $row["Nome"] . " ");
                    
                    for($i = 0; $i < $row["Stelle"]; $i++){
                        echo ("<i class='fas fa-star'></i>");
                    }

                    echo "</h3>";

                    echo "<p style='margin: 0; color: gray; text-transform: lowercase'>" . $row["Tipo"] . "</p>";

                    echo "<p>" . $row["Comune"] . "</p>";
                    echo "<p>" . $row["Descrizione"] . "</p>";
                    echo "<a href='hotelInfo.php'>Scopri di più</a>";
                    echo "</div>";
                }
            }
        ?>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>