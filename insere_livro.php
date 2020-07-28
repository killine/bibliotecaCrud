<?php

  include '../conecta.php';

  $titulo = $_POST['titulo'];
  $autor = $_POST['autor'];
  $editora = $_POST['editora'];
  $pag = $_POST['paginas'];
  $qtdeExemplares = $_POST['qtdeExemplares'];
  $genero =  $_POST['select'];

  $consulta = $conexao -> prepare("INSERT INTO livros (editora, autor, titulo, genero, pag,  qtdeExemplares) VALUES ('$editora', '$autor', '$titulo', '$genero', '$pag', ' $qtdeExemplares')" );

  $consulta -> execute();

  header('Location: index.php');
 ?>
