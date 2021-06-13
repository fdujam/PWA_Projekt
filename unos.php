<?php
if(isset($_POST['prihvati'])){
    include 'connect.php';
    if(isset($_POST['naslov'])){
        $naslov = $_POST['naslov'];
    };
    if(isset($_POST['sazetak'])){
        $sazetak = $_POST['sazetak'];
    };
    if(isset($_POST['sadrzaj'])){
        $sadrzaj = $_POST['sadrzaj'];
    };
    if(isset($_FILES['slika'])){
        $slike = $_FILES['slika']['name'];
    };
    if(isset($_POST['kategorija'])){
        $kategorija = $_POST['kategorija'];
    }
    $datum = date('d.m.Y.');

    if(isset($_POST['arhiva'])){
        $archive = 1;
    }else{
        $archive = 0;
    }
    $target= 'img/'.$slike;

    move_uploaded_file($_FILES["slika"]["tmp_name"], $target);
    $query= "INSERT INTO vijesti (datum, naslov, sazetak, tekst, slika, kategorija, arhiva ) VALUES('$datum', '$naslov', '$sazetak', '$sadrzaj', '$slike', '$kategorija', '$archive')";
    $result= mysqli_query($db, $query) or die('Pogreška pri upitu baze.');
    mysqli_close($db);    
}
?>