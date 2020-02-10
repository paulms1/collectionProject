<?php
 require_once 'be/dbcon.php';
 require_once 'be/functions.php';

 $db = connectTodb();
 $records = getAllRecords($db);
 $recordHtml = displayRecords($records);
 ?>


<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Anton&display=swap" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="fe/normalize.css">
        <link rel="stylesheet" type="text/css" href="fe/styles.css">
        <meta name="viewport" content="width=device-width">
        <title>Record Collection</title>
    </head>
    <body>
        <header>
            <h1>Record Collection</h1>
        </header>
    <main>

        <?php
        echo $recordHtml;
        ?>

    </main>
    <footer>
        <a class="addRecord" href="http://localhost:1234/week5/collectionProject/story2/form.php">ADD A RECORD TO THE COLLECTION</a>
        <a href="#">stevenson.paulmichael@gmail.com</a>
        <a href="#">Back to top</a>
    </footer>

    </body>
</html>


