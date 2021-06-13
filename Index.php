<?php
include 'connect.php';
define('UPLPATH', 'img/');
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
            <section class="politik">
                <h1>POLITIK ></h1>
                <?php
                $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='politik' LIMIT 3";
                $rezultat = mysqli_query($db, $query);
                $i=0;
                while($red = mysqli_fetch_array($rezultat)){
                    echo '<a href="clanak.php?id='.$red['id'].'">';
                    echo '<article class="col">';
                    echo '<img src="' . UPLPATH . $red['slika'] . '">';
                    echo '<h6>';
                    echo $red['naslov'];
                    echo '</h6><p>';
                    echo $red['sazetak'];
                    echo '</p></article></a>';
                }
                ?>
        </section>
        </div>
        <div class="container">
            <section>
                <h1>GESUNDHEIT ></h1>
                <?php
                $query = "SELECT * FROM vijesti WHERE arhiva=0 AND kategorija='gesundheit' LIMIT 3";
                $rezultat = mysqli_query($db, $query);
                $i=0;
                while($red = mysqli_fetch_array($rezultat)){
                    echo '<a href="clanak.php?id='.$red['id'].'">';
                    echo '<article class="col">';
                    echo '<img src="' . UPLPATH . $red['slika'] . '">';
                    echo '<h6>';
                    echo $red['naslov'];
                    echo '</h6><p>';
                    echo $red['sazetak'];
                    echo '</p></article></a>';
                    
                }
                ?>
            </section>
        </div>
    </main>
    <footer><p>Nachrichten vom 17.05.2019 | stern.de GmbH | Home</p></footer>
</body>
</html>
<?php
mysqli_close($db);
?>