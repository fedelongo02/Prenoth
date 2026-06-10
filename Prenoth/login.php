<?php 
    include('db.php');

    $errore = "";
    
    //Controllo se è arrivata una richiesta POST
    if($_SERVER['REQUEST_METHOD'] == 'POST'){
        //recupero dati evitati da attacchi di sql injection
        $nome = $db->real_escape_string($_POST['Nome']);
        $cognome = $db->real_escape_string($_POST['Cognome']);
        $anno = $db->real_escape_string($_POST['DataDiNascita']);
        $email = $db->real_escape_string($_POST['Email']);
        $password = $db->real_escape_string($_POST['Password']);

        //validazione dati
        if(strlen($password) < 8){
            $errore = "La password deve essere lunga almeno 8 caratteri.";
        }else if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
            $errore = "L'indirizzo email non è valido.";
        }else if(empty($nome) || empty($cognome) || empty($anno)){
            $errore = "Tutti i campi sono obbligatori.";
        }else if(!preg_match('![0-9]!', $password)){
            $errore = "La password deve contenere almeno un numero.";
        }else{ //tutti i dati sono validi
            //hash della password
            $pass = password_hash($password, PASSWORD_DEFAULT);

            //inserisco dati
            $sql = "INSERT INTO utente (Nome, Cognome, Anno, Email, Password) 
                    VALUES ('$nome', '$cognome', '$anno', '$email', '$pass')";
            
            if ($db -> query($sql)) {
                //redirect
                header("Location: accedi.php");
            } else {
                $errore = "Errore durante la registrazione: " . $db->error;
            }

            //scolleghiamoci dal db
            $db -> close();
        }
    }
?>

<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prenoth - Login</title>
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

    <div class="login-container">
        <h2>Registrati</h2>

        <!-- Visualizzazione dell'errore (appare solo se $errore non è vuoto) -->
        <?php if(!empty($errore)): ?>
            <div class="errore">
                <?php echo $errore; ?>
            </div>
        <?php endif; ?>

        <form action="" method="POST" class="registrati">
            <div>
                Nome 
                <input type="text" name="Nome" class="insert">
            </div>

            <div>
                Cognome
                <input type="text" name="Cognome" class="insert">
            </div>

            <div>
                Data di nascita
                <input type="date" name="DataDiNascita" class="insert">
            </div>

            <div>
                E-mail
                <input type="email" name="Email" class="insert">
            </div>

            <div>
                Password
                <input type="password" name="Password" class="insert">
            </div>

            <input type="submit" value="Registrati" class="insert submit">

            <div class="check">
                Hai già un account? <a href="accedi.php" style='color: grey;'>Accedi cliccando qui</a>
            </div>
        </form>
    </div>

    <?php include('footer.php'); ?>
</body>
</html>