<?php
session_start();
include 'connect.php';
$uspjesnaPrijava = false;
$admin =false;
if(isset($_POST['login'])){
    
    $username=$_POST['username'];
    $password=$_POST['password'];
    $sql = "SELECT korisnicko_ime,lozinka,razina FROM users WHERE korisnicko_ime = ?";
    $stmt=mysqli_stmt_init($db);
    if(mysqli_stmt_prepare($stmt,$sql)){
        mysqli_stmt_bind_param($stmt,'s',$username);
        mysqli_stmt_execute($stmt);
        mysqli_stmt_store_result($stmt);
    }    
    mysqli_stmt_bind_result($stmt,$user,$hash,$lvl);
    mysqli_stmt_fetch($stmt);
    if(password_verify($password,$hash)){
        $_SESSION['username']=$user;
        $_SESSION['level']=$lvl;
        $uspjesnaPrijava=true;
        $admin=$lvl;
    }else{
        echo'Korinik ne postoji<br> Registrirajte te se!';
    }
};
if(isset($_POST['delete'])){
    $id = $_POST['id'];
    $query = "DELETE FROM vijesti WHERE id =$id";
    $rezultat = mysqli_query($db,$query);
}
if(isset($_POST['update'])){
    $naslov = $_POST['naslov'];
    $sadrzaj = $_POST['sadrzaj'];
    $sazetak = $_POST['sazetak'];
    $kategorija = $_POST['kategorija'];
    if(isset($_POST['arhiva'])){
        $arhiva=1;
    }
    else{
        $arhiva=0;
    }
    $id = $_POST['id'];
    if(!empty($_FILES['photo'])){
        $slike = $_FILES['photo']['name'];
        $target = 'img/'.$slike;
        move_uploaded_file($_FILES['photo']["tmp_name"],$target);
        $query = "UPDATE vijesti SET naslov='$naslov',sazetak='$sazetak',
                    tekst='$sadrzaj',slika='$slike',kategorija='$kategorija',arhiva='$arhiva' WHERE id=$id;";
    }
    else{
        $query = "UPDATE vijesti SET naslov='$naslov',sazetak='$sazetak',
                    tekst='$sadrzaj',kategorija='$kategorija',arhiva='$arhiva' WHERE id=$id;";
    }
    
    $rezultat = mysqli_query($db, $query);
}

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
    <title>Administracija</title>
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
            <?php
            if(($uspjesnaPrijava == true && $admin ==true) || (isset($_SESSION['username'])) && $_SESSION['level'] == 1){
    
            
            echo '<div  class="form-search">
            <form action="" method="POST">
                <label for="kategorija">Kategorija: </label>
                <select id="kategorija" name="kategorija">
                    <option value="" disable selected>Odabir kategorije</option>
                    <option value="politik">Politik</option>    
                    <option value="gesundheit">Gesundheit</option>
                </select>
                <input type="submit" id="search" value="Search"/>
            </form>
            </div>';
        
                if(isset($_POST['kategorija'])){
                    $kat = $_POST['kategorija'];
                    $query = "SELECT * FROM vijesti WHERE kategorija = '".$kat."'";    
                }
                elseif(!isset($_POST['kategorija'])){
                    $query = "SELECT * FROM vijesti";    
                }

                $rezultat = mysqli_query($db, $query);
                while($row = mysqli_fetch_array($rezultat)){  
                echo '<div class="sub-container">
                <form enctype="multipart/form-data" action="" method="POST">
                <div class="form-item">
                <label for="nasol">Naslov vjesti:</label>
                <div class="form-field">
                <input type="text" style="width:498px;" name="naslov" class="form-field-textual" value="'.$row['naslov'].'">
                </div> </div>
                <div class="form-item">
                <label for="sazetak">Kratki sadržaj vijesti (do 100 znakova):</label>
                <div class="form-field">
                <textarea name="sazetak" id="" cols="60" rows="15" class="form-field-textual">'.$row['sazetak'].'</textarea>
                </div> </div>
                <div class="form-item">
                <label for="sadrzaj">Sadržaj vijesti:</label>
                <div class="form-field">
                <textarea name="sadrzaj" id="" cols="60" rows="15" class="form-field-textual">'.$row['tekst'].'</textarea>
                </div> </div>
                <div class="form-item">
                <label for="photo">Slika:</label>
                <div class="form-field">
                <input type="file" class="input-text" id="photo" name="photo"/> <br>
                <img src="img/'. $row['slika'] . '" width=200px>
                </div> </div>
                <div class="form-item">
                <label for="category">Kategorija vijesti:</label>
                <div class="form-field">
                <select name="kategorija" id="kategorija" class="form-field-textual" value="'.$row['kategorija'].'">
                    <option value="'.$row['kategorija'].'" >'.$row['kategorija'].'</option>
                    <option value="politik">Politik</option>
                    <option value="gesundheit">Gesundheit</option>
                </select> 
                </div> </div> 
                <div class="form-item"> 
                <label>Spremiti u arhivu:
                <div class="form-field">'; 
                if($row['arhiva'] == 0) { 
                    echo '<input type="checkbox" name="arhiva" id="arhiva"/> Arhiviraj?'; } 
                else { echo '<input type="checkbox" name="archive" id="archive" checked/> Arhiviraj?'; } 
                echo '</div> </label> </div> </div> 
                <div class="form-item"> 
                <input type="hidden" name="id" class="form-field-textual" value="'.$row['id'].'"> 
                <button type="reset" value="Poništi">Reset</button> 
                <button type="submit" id="update" name="update" value="Prihvati"> Izmjeni</button> 
                <button type="submit" id="delete" name="delete" value="Izbriši"> Izbriši</button> 
                </div> 
                </form>
                </div></br></br></br></br>';} 
            }else if($uspjesnaPrijava == true && $admin == false){
                echo '<p>Pozdrav '.$imeKorisnika.'! Uspješno ste prijavljeni, ali niste administrator.</p>';
            }else if(isset($_SESSION['username']) && $_SESSION['level'] == 0){
                echo '<p>Pozdrav '.$_SESSION['username'].'! Uspješno ste prijavljeni, ali niste administrator.</p>';
            }else if($uspjesnaPrijava == false){
                ?><div class="reg-container">
                    <h1>Log in</h1>
                    <form method="POST" action="">
                        <label for="username">Korisničko ime </label><br>
                        <input type="text" id="username" name="username"><br>
                        <span id="porukaKor"></span>
                        <label for="password">Lozinka </label><br>
                        <input type="password" id="password" name="password"><br>
                        <span id="porukaPass"></span>
                        <button type="submit" id="login" name="login">Log in</button><br>
                    </form>
                    <a href="registracija.php">Registracija</a>
                </div>
                <script type="text/javascript">
                document.getElementById('login').onclick = function (event){
                var slanje_forme = true;
                var poljeUsername= document.getElementById("username");
                var username= document.getElementById("username").value;
                if(username.length== 0) {
                    slanje_forme= false;
                    poljeUsername.style.border="1px dashed red";
                    document.getElementById("porukaKor").innerHTML="<br>Unesite korisničko ime!<br><br>";
                } else{
                    poljeUsername.style.border="1px solid green";
                    document.getElementById("porukaKor").innerHTML="";
                };
                var poljePass= document.getElementById("password");
                var pass= document.getElementById("password").value;
                if(pass.length== 0) {
                    slanje_forme= false;
                    poljePass.style.border="1px dashed red";
                    document.getElementById("porukaPass").innerHTML="<br>Unesit lozinku!<br><br>";
                } else{
                    poljePass.style.border="1px solid green";
                    document.getElementById("porukaPass").innerHTML="";
                };
                if(slanje_forme!= true) {event.preventDefault();};
                };
            </script>
                <?php
            }
        ?>
        </div>
    </main>
    <footer><p>Nachrichten vom 17.05.2019 | stern.de GmbH | Home</p></footer>

</body>
</html>
<?php
mysqli_close($db);
?>