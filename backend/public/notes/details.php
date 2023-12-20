<?php

header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Methods:GET,POST,PUT,DELETE");
header("Access-Control-Allow-Headers :Content-Type");

$connexion = new PDO('mysql:host=localhost;dbname=gestion_etudiant', 'root', '');
$requete = $connexion->query('SELECT * FROM note');
$resultats = $requete->fetchAll(PDO::FETCH_ASSOC);

// Convertir les données en JSON
$json = json_encode($resultats);

// Envoyer le résultat
// header('Content-Type: application/json');
echo $json;

?>

