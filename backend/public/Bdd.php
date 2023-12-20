<?php

header("Access-Control-Allow-Origin:*");
header("Access-Control-Allow-Methods:GET,POST,PUT,DELETE");
header('Access-Control-Allow-Headers: Content-Type');


$bdd = new PDO('mysql:host=localhost;dbname=gestion_etudiant', 'root', '');