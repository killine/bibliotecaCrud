<?php

    include '../conecta.php';

$codLi = $_GET['codLi'];

//echo $codLi;
//echo "<br>";


$titulo = $_POST['titulo'];

$autor = $_POST['autor'];

$editora = $_POST['editora'];

$pag = $_POST['pag'];

$qtdeExemplares = $_POST['qtdeExemplares'];

//echo "$titulo <br>"; 
//echo "$autor <br>"; 
//echo "$editora <br>"; 
//echo "$pag <br>"; 
//echo "$qtdeExemplares <br>"; 

$consulta = $conexao -> prepare("
 
UPDATE livros SET
titulo = '$titulo',
autor = '$autor',
editora = '$editora',
pag = '$pag',
qtdeExemplares = '$qtdeExemplares'
 
WHERE codLi='$codLi'");

$consulta -> execute();

header('Location: index.php');




?>
