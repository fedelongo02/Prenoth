<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Accedi</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="login.css">
    <style>
        .errore {
            background-color: #f8d7da;
            color: #721c24;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #f5c6cb;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <?php include('header.php'); ?>

    <?php 
        include('db.php');

        $errore = "";
        
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            //recupero dati evitati da attacchi di sql injection
            $email = $db->real_escape_string($_POST['Email']);
            $pass = $db->real_escape_string($_POST['Password']);

            //inserisco dati
            $sql = "SELECT * FROM utente WHERE Email='$email';";
            
            //eseguo query
            $result = $db -> query($sql);

            if ($result -> num_rows > 0) {
                $row = $result -> fetch_assoc();

                //verifico password
                if(password_verify($pass, $row['Password'])){
                    //password corretta

                    //salvo id e dati in sessione
                    $id_utente = $row['IdUtente'];
                    $_SESSION['id_utente'] = $id_utente;

                    $nome_utente = $row['Nome'];
                    $_SESSION['nome_utente'] = $nome_utente;

                    $cognome_utente = $row['Cognome'];
                    $_SESSION['cognome_utente'] = $cognome_utente;

                    $emailsalvata = $row['Email'];
                    $_SESSION['email'] = $emailsalvata;

                    $data_nascita = $row['Anno'];
                    $_SESSION['data_nascita'] = $data_nascita;

                    //redirect
                    header("Location: index.php");
                    exit();
                } else {
                    //password errata
                    $errore = "Email o password errati.";
                }
            } 

            //scolleghiamoci dal db
            $db -> close();
        }
    ?>

      <div class="login-container">
        <h2>Accedi</h2>

        <!-- Visualizzazione dell'errore (appare solo se $errore non è vuoto) -->
        <?php if(!empty($errore)): ?>
            <div class="errore">
                <?php echo $errore; ?>
            </div>
        <?php endif; ?>

        <form action="" method="POST" class="accedi">
            <div>
                E-mail
                <input type="email" name="Email" class="insert">
            </div>

            <div>
                Password
                <input type="password" name="Password" class="insert">
            </div>

            <input type="submit" value="Accedi" class="insert submit">

            <div class="check">
                Non hai un account? <a href="login.php" style='color: grey;'>Registrati cliccando qui</a>
            </div>
        </form>
    </div>

    <?php include('footer.php'); ?>
</body>
</html>