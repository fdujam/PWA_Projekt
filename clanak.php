<?php
include 'connect.php';
$query = "SELECT * FROM vijesti WHERE id = ".$_GET['id'].";";
$rezultat = mysqli_query($db, $query);
$clanak = mysqli_fetch_array($rezultat);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css"/>
    <title>PWP Projekt</title>
</head>
<body>
    <header>
    <nav class="navbar navbar-light bg-white">
        <div class="container">
          <div class="navbar-header">
            <a class="navbar-brand" href="index.php"><img src="img/logo.png" alt="" width="10%" height=""></a>
            
          </div>
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">Home</a></li>
            <li><a href="kategorija.php?kategorija=politik">Politik</a></li>
            <li><a href="kategorija.php?kategorija=gesundheit">Gesundheit</a></li>
            <li><a href="administracija.php">Administracija</a></li>
            <li><a href="unos.html">Unos Vijesti</a></li>
          </ul>
        </div>
      </nav>  
    </header>
    <main>
    <div class="container">
        <div class="content">
            <h1><?php echo $clanak['naslov'];?></h1>
            <br>
            <aside class="datum"><?php echo $clanak['datum'];?></aside>
        </div>
        
        <p class="summary"><?php echo $clanak['sazetak'];?></p>       
        <br>
        <img class="slk" src="img/<?php echo $clanak['slika'];?>" alt=""/>
        <br><br>
        <p><?php echo $clanak['tekst'];?></p></br>
    </div>
    </main>
    <footer><p>Nachrichten vom 17.05.2019 | stern.de GmbH | Home</p></footer>
</body>
</html>