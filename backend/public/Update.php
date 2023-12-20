<?php


    header("Content-Type: application/json; charset=UTF_8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: PUT, GET, POST, DELETE");
    header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept");
$connexion = new PDO('mysql:host=localhost;dbname=gestion_etudiant', 'root', '');

// if ($_SERVER['REQUEST_METHOD'] === 'PUT') {
//   parse_str(file_get_contents("php://input"), $putData);
//   $id = $_GET['id'];
//   $id = intval($id);

//   $nom = $putData['Nom'];
//   $prenom = $putData['Prenom'];
//   $niveau = $putData['Niveau'];
//   $numero_net = $putData['Numero_Net'];

//   $sql = "UPDATE etudiant SET 
//           Nom='$nom',
//           Prenom='$prenom',
//           Niveau='$niveau',
//           Numero_Net='$numero_net'
//           WHERE id=$id ";

//   $r = $connexion->exec($sql);

//   echo json_encode($r);
// }


// $postdata = file_get_contents("php://input");


// if (isset($postdata) && !empty($postdata)) {
    
//     $req = json_decode($postdata);
    
//     var_dump($req);

//     $nom = $req->Nom;
//     $prenom = $req->Prenom;
//     $niveau = $req->Niveau;
//     $net = $req->Numero_Net;
  
//     $sql = "UPDATE etudiant SET 
//           Nom='$nom',
//           Prenom='$prenom',
//           Niveau='$niveau',
//           Numero_Net='$numero_net'
//           WHERE id=$id ";

//   $r = $connexion->exec($sql);
// }
$requete = $connexion->query("SELECT * FROM etudiant WHERE id=50");
$resultats = $requete->fetchAll(PDO::FETCH_ASSOC);

// Convertir les données en JSON
$json = json_decode($resultats);

echo $json;