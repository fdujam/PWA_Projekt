<?php
    $unique = true;
    $registriranKorisnik = "";
    if(isset($_POST['reg'])){
            if(!empty($_POST['korime']) && !empty($_POST['ime']) && !empty($_POST['prezime']) && !empty($_POST['lozinka1']) && !empty($_POST['lozinka2']) 
            && ($_POST['lozinka1'] == $_POST['lozinka1'])){
                
            include 'connect.php';

            $korime = $_POST['korime'];
            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $lozinka = $_POST['lozinka1'];
            $hash_lozinka = password_hash($lozinka,CRYPT_BLOWFISH);
            $razina=0;
            

            $query = "SELECT korisnicko_ime FROM users WHERE korisnicko_ime = ?";
            $stmti = mysqli_stmt_init($db);
            if(mysqli_stmt_prepare($stmti, $query)){
                mysqli_stmt_bind_param($stmti,'s',$korime);
                mysqli_stmt_execute($stmti);
                mysqli_stmt_store_result($stmti);
            }

            if(mysqli_stmt_num_rows($stmti) > 0){
                $unique = false;
            }else{
                session_start();
                $_SESSION['username'] = $korime;
                $_SESSION['level'] = $razina;
                $query = "INSERT INTO users (ime,prezime,korisnicko_ime,lozinka,razina) VALUES (?,?,?,?,?)";
                $stmt=mysqli_stmt_init($db);
                if(mysqli_stmt_prepare($stmt,$query)){
                    mysqli_stmt_bind_param($stmt,'ssssd',$ime,$prezime,$korime,$hash_lozinka,$razina);
                    mysqli_stmt_execute($stmt);
                    $registriranKorisnik = true;
                }
                
            };
            mysqli_close($db);
        };
    };
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
    <title>Register</title>
    
</body>
</head>
<body>

    <header>
    <div class="logo-red"><img id="logo" src="img/logo.png" alt=""/></div>
        <nav class="nav">
            <ul>
                <li><a href="index.php">HOME</a></li>
                <li><a href="kategorija.php?kategorija=politik">Politik</a></li>
                <li><a href="kategorija.php?kategorija=gesundheit">Gesundheit</a></li>
                <li><a href="administracija.php">Administracija</a></li>
                <li><a href="unos.html">Unos Vijesti</a></li>
            </ul>
        </nav>  
    </header>
    <main class="cont-main">
        <div class="reg-container"> 
            <h1>Registracija</h1><br>
            <form enctype="multipart/form-data" method="POST" action="">
                <label for="korime">Korisničko ime: </label><br>
                <input type="text" id="korime" name="korime" ><br>
                <span id='PorukaUser' class='BojaPoruke'></span>
                <?php if(isset($_POST['reg'])){
                    if(!$unique){
                        echo"<br><span id='PorukaUser' class='BojaPoruke'>Korisničko ime se već koristi!</span>";
                    };
                };?><br>
                <label for="ime">Ime: </label><br>
                <input type="text" id="ime" name="ime" ><br>
                <span id="porukaIme" class="BojaPoruke"></span><br>
                <label for="prezime">Prezime: </label><br>
                <input type="text" id="prezime" name="prezime" ><br>
                <span id="porukaPrezime" class="BojaPoruke"></span><br>
                <label for="lozinka1">Lozinka: </label><br>
                <input type="password" id="lozinka1" name="lozinka1" ><br>
                <span id="Porukaloz" class="BojaPoruke"></span><br>
                <label for="lozinka2">Ponovite lozinku: </label><br>
                <input type="password" id="lozinka2" name="lozinka2" ><br>
                <span id="Porukaloz2" class="BojaPoruke"></span><br>
                <button type="submit" class="reg_form" id="reg" name="reg">Registriraj</button>
            </form>
            <a href="administracija.php">Login</a>
            <?php if(isset($_POST['reg'])){
                if($registriranKorisnik == true){
                echo'<p>Korisnik je uspješno registriran!</p>';
            };
            };?>

            <script type="text/javascript">
document.getElementById('reg').onclick = function(event){
                var slanjeForme= true;
                var poljeIme= document.getElementById("ime");
                var ime= document.getElementById("ime").value;
                if(ime.length == 0) {
                    slanjeForme= false;
                    poljeIme.style.border="1px dashed red";
                    document.getElementById("porukaIme").innerHTML="<br>Unesite ime!<br>";
                } else{
                    poljeIme.style.border="1px solid green";
                    document.getElementById("porukaIme").innerHTML="";
                }
                var poljePrezime= document.getElementById("prezime");
                var prezime= document.getElementById("prezime").value;
                if(prezime.length== 0) {
                    slanjeForme= false;
                    poljePrezime.style.border="1px dashed red";
                    document.getElementById("porukaPrezime").innerHTML="<br>Unesite Prezime!<br>";
                } else{
                    poljePrezime.style.border="1px solid green";
                    document.getElementById("porukaPrezime").innerHTML="";
                };
                var poljeUsername= document.getElementById("korime");
                var username= document.getElementById("korime").value;
                if(username.length== 0) {
                    slanjeForme= false;
                    poljeUsername.style.border="1px dashed red";
                    document.getElementById("PorukaUser").innerHTML="<br>Unesite korisničko ime!<br>";
                } else{
                    poljeUsername.style.border="1px solid green";
                    document.getElementById("PorukaUser").innerHTML="";
                };
                var poljePass= document.getElementById("lozinka1");
                var pass= document.getElementById("lozinka1").value;
                var poljePassRep= document.getElementById("lozinka2");
                var passRep= document.getElementById("lozinka2").value;
                if(pass.length== 0|| passRep.length== 0|| pass!= passRep) {
                    slanjeForme= false;
                    poljePass.style.border="1px dashed red";
                    poljePassRep.style.border="1px dashed red";
                    document.getElementById("Porukaloz").innerHTML="<br>Lozinke nisu iste!<br>";
                    document.getElementById("Porukaloz2").innerHTML="<br>Lozinke nisu iste!<br>";
                } else{
                    poljePass.style.border="1px solid green";
                    poljePassRep.style.border="1px solid green";
                    document.getElementById("Porukaloz").innerHTML="";
                    document.getElementById("Porukaloz2").innerHTML="";
                };
                if(slanjeForme!= true) {event.preventDefault();}
            };
        </script>            
        </div>
    </main>
    <footer><p>Nachrichten vom 17.05.2019 | stern.de GmbH | Home</p></footer>
</html>