<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Hotel</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
    <?php   include 'header.php'; 
            include 'db.php';

            //creazione query
            $Hotel = "SELECT * 
            FROM HOTEL
            WHERE Tipo = 'HOTEL'
            ORDER BY Stelle DESC";

            //esecuzione query
            $resultHotel = $db -> query($Hotel);
    ?>

    <h2>Tutti gli Hotel</h2>
    <div class="container">
        <?php
            //controllo se la query ha restituito dei risultati
            if($resultHotel -> num_rows > 0){
                while($row = $resultHotel -> fetch_assoc()){
                    $IdHotel = $row["IdHotel"];
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
                    echo "<a href='hotelInfo.php?IdHotel=$IdHotel'>Scopri di più</a>";
                    echo "</div>";
                }
            }
        ?>
    </div>

    <?php include 'footer.php'; ?>
</body>
</html>