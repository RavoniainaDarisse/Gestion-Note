<?php
    header("Content-Type: application/json; charset=UTF_8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
    $connexion = new PDO('mysql:host=localhost;dbname=gestion_etudiant', 'root', '');

$id = $_GET['id'];

$sql = "DELETE FROM  `matiere` WHERE `id_matiere` = '{$id}' LIMIT 1";
$requete = $connexion->query($sql);