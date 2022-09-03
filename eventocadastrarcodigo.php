<?php

session_start();
//Verifica se o usuário está logado.
require 'acessocomum.php';

//Faz a conexão com o BD.
require 'conexao.php';

//Ler os valores enviados pelo formulário
$date=filter_input(INPUT_POST,'date',FILTER_DEFAULT);
$time=filter_input(INPUT_POST,'time',FILTER_DEFAULT);
$camponame = $_POST["name"];
$camposervico_id = $_POST["servico_id"];

//Insere na tabela os valores dos campos
$sql = "INSERT INTO agendamento(data, hora, usuario, servico_id) VALUES('$date', '$time', '" . $_SESSION['nome'] . "', $camposervico_id)";

//Executa o SQL e faz tratamento de erros
if ($conn->query($sql) === TRUE) {
 // header( "refresh:5;url=eventoscontrolar.html" );	
  echo "Gravado com sucesso.";

//Envie email para validar a conta.
require 'enviaremail.php';  

//Conteúdo do email de aviso
$texto = "Agendamento marcado para ";
$camponome = $_SESSION['nome'];
$campoemail = $_SESSION['email'];

enviaremail($camponome, $campoemail, 'Agendamento Marcado', $texto);

} else {
  //header( "refresh:5;url=eventoscontrolar.html" );	
  echo "Error: " . $sql . "<br>" . $conn->error;
}

//Fecha a conexão.
$conn->close();

?>