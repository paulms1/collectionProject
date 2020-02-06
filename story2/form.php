<?php
require_once 'add.php';
//redirect to index.php if navigated to via url
if(!isset($_SERVER['HTTP_REFERER'])){
    header('location:../index.php');
    exit;
}
?>

<link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="normalize.css">
<link rel="stylesheet" type="text/css" href="styles.css">
<meta name="viewport" content="width=device-width">

<!DOCTYPE html>
<html>
    <head>
        <title>Add record form</title>
    </head>
    <body>
        <h1>Fill in the form to</h1>
        <h1>add a record to the collection</h1>
        <form action="add.php" method="POST">
            <lablel for="band"><p>Artist</p></lablel>
            <input type="text" name="band" required/>

            <lablel for="song"><p>Song title</p></lablel>
            <input type="text" name="song" required/>

            <lablel for="year"><p>Year of release</p></lablel>
            <input type="number" name="year"/>

            <lablel for="genre"><p>Genre</p></lablel>
            <input type="text" name="genre" required/>

            <lablel for="youtube"><p>Youtube link</p></lablel>
            <input type="text" name="youtubeLink"/>

            <input class="submitButton" type="submit" name="submit"/>
        </form>
    </body>
</html>
