<?php
    include "database.php";

    $AllowedTables = ['Movies' => 'movies', 'Series' => 'series', 'Games' => 'games'];
    $choice = $_GET["type"];
    $table = $AllowedTables[$choice];

    if($connected){
        $ReviewItem = null;
        if(isset($_GET["id"])) {
            $ReviewID = intval($_GET["id"]);
            $ReviewQuery = $conn->prepare("SELECT * FROM $table WHERE ID = ?");
            $ReviewQuery->execute([$ReviewID]);
            $ReviewItem = $ReviewQuery->fetch(PDO::FETCH_ASSOC);
        }
        if(!$ReviewItem) {
            echo "<p>Review not found.</p>";
            echo "<form action='../index.php'> <button type='submit'>Return Home </button></form>";
            exit;
        }
    } else {
        header("Location: error.php?error=$errorMessage");
    }
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>sebas's Review For <?php echo $ReviewItem["Title"];?></title>
        <link rel="icon" href="../images/icon.ico">
        <link rel="stylesheet" href="../css/base_style.css">
        <link rel="stylesheet" href="../css/style_review.css">
    </head>
    <body>
        <form action="../index.php">
            <button name="Home_Button" type="submit">Home</button>
        </form>

        <h1>sebas's Epic Review For <?php echo $ReviewItem["Title"]?></h1>
        <!----------Review------------>
        <div class="InfoBox">
            <div class="ImageBox">
                <img src="../images/<?php echo $ReviewItem["Title"]?>.jpg" alt="<?php echo $ReviewItem["Title"]?> Image">
            </div>

            <table class="content-review">
                <tr><th>Title:</th><td><?php echo $ReviewItem["Title"]?></td></tr>
                <tr><th>Rating:</th><td><?php echo $ReviewItem["Rating"]?></td></tr>
                <tr><th>Genre:</th><td><?php echo $ReviewItem["Genre"]?></td></tr>
                <?php 
                if($choice == "Movies"){
                    echo "<tr><th>Duration:</th><td>" . $ReviewItem["Length"] . " Minutes</td></tr>";
                } 
                if ($choice == "Series"){
                    echo "<tr><th>Seasons:</th><td>" . $ReviewItem["Seasons"] . "</td></tr>";
                    echo "<tr><th>Episodes:</th><td>" . $ReviewItem["Episodes"] . "</td></tr>";
                    echo "<tr><th>Status:</th><td>" . $ReviewItem["Status"] . "</td></tr>";
                }
                ?>
                <tr><th>Releasedate:</th><td><?php echo $ReviewItem["ReleaseDate"]?></td></tr>
                <tr><th>Trailer:</th><td><a href="<?php echo $ReviewItem["Trailer"]?>" target="_blank">Youtube</a></td></tr>
                <tr><th>Studio:</th><td><?php echo $ReviewItem["Studio"]?></td></tr>
                <tr><th>Description:</th><td><?php echo $ReviewItem["Description"]?></td></tr>
            </table>
        </div>

        <h3>My Review:</h3>
        <p><?php echo $ReviewItem["Opinion"]?></p>
    </body>
</html>