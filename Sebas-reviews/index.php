<?php include "php/database.php";?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Sebas's Reviews</title>
        <link rel="icon" href="images/icon.ico">
        <link rel="stylesheet" href="css/base_style.css">
        <link rel="stylesheet" href="css/style_home.css">
    </head>
    <body>
        <h1>Sebas's Epic Reviews For Movies, Games & Series</h1>
        <div class="button_container">
            <form method="POST" action="php/selection.php">
                <button type="submit" name="Selection" value="Movies">Check Movies</button>
                <button type="submit" name="Selection" value="Series">Check Series</button>
                <button type="submit" name="Selection" value="Games">Check Games</button>
            </form>
        </div>
    </body>
</html>