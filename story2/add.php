<?php
require_once '../be/dbcon.php';
require_once '../be/functions.php';

//if user clicks submit add data to db

if (isset($_POST['submit'])) {
    $band = $_POST['band'];
    $song = $_POST['song'];
    $year = $_POST['year'];
    $genre = $_POST['genre'];
    $youtubeLink = $_POST['youtubeLink'];

    if (validateInputString($band)=="Error"){
        header('Location: form.php');
    }

    if (validateInputString($song)=="Error"){
        header('Location: form.php');
    }

    if (validateInputString($genre)=="Error"){
        header('Location: form.php');
    }

    if (validateInputString($youtubeLink)=="Error"){
        header('Location: form.php');
    }
//Connect to db
    $db = connectToDb();

    //call the insert data function, pass in the user inputs and pdo connection
    insertData($band, $song, $year, $genre, $youtubeLink, $db);

 // redirect to index.php after form submitted
    header('Location: ../index.php');
}


