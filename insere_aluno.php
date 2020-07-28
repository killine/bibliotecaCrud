<?php

  include '../conecta.php';

  $nome = $_POST['nome'];
  $email = $_POST['email'];
  $telefone = $_POST['telefone'];
  $nascimento = $_POST['nascimento'];
  $turma = strtoupper( $_POST['select']);

  $consulta = $conexao -> prepare("INSERT INTO aluno (email, dataNascimento, turma, nome, telefone) VALUES ('$email', '$nascimento', '$turma', '$nome', '$telefone')" );

  $consulta -> execute();

  header('Location: index.php');
 ?>
