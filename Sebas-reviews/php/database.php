<?php
    $dbhost = "localhost"; 
    $dbname = "sebas_reviews";
    $dbuser = "root";
    $dbpass = '';
    $dberror = "";
    $connected = false;
    try {
        $conn = new PDO("mysql:host=$dbhost;dbname=$dbname", $dbuser, $dbpass);
        $connected = true;
    } catch (PDOException $err) { 
        $dberror = $err->getMessage();
        echo "Database connection failed.  " . $dberror;
        exit();
    }