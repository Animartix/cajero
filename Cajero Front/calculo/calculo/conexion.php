<?php
$link = "mysql:host = localhost;dbname=banco";
$dbuser = "root";
$dbpass = "";

try{
    $pdo = new PDO ($link,$dbuser,$dbpass);
}catch(PDOExceotion $e) {
    print "Error!: ".$e->getMessage()."<br>";
    die();
}

$sql_unico = "SELECT * FROM saldo";
$sql_enviar_unico = $pdo->prepare($sql_unico);
$sql_enviar_unico->execute(array());
$resultado_saldo = $sql_enviar_unico->fetch();