<?php


    header("Content-Type: application/json; charset=UTF_8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$connexion = new PDO('mysql:host=localhost;dbname=gestion_etudiant', 'root', '');

$postdata = file_get_contents("php://input");


if (isset($postdata) && !empty($postdata)) {
    
    $req = json_decode($postdata);
    
    var_dump($req);

    $nom = $req->Nom;
    $Codemat = $req->Codemat;
    $note = $req->note;

    
$connexion->query("INSERT INTO note (etudiant_id, matiere_id, note) 
VALUES ('{$nom}','{$Codemat}','{$note}')");
}
