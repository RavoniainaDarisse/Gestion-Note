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

    $Codemat = $req->Codemat;
    $Libelle = $req->Libelle;
    $Coef = $req->Coef;

    
$connexion->query("INSERT INTO matiere (Codemat,Libelle,Coef) 
VALUES ('{$Codemat}','{$Libelle}','{$Coef}')");
}
