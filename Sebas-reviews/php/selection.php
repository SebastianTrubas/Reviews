<?php
    include "database.php";
    if ($connected){
        $Moviequery = $conn->query("SELECT ID, Title, Rating FROM movies");
        $Seriequery = $conn->query("SELECT ID, Title, Rating FROM series");
        $Gamequery = $conn->query("SELECT ID, Title, Rating, Genre FROM games");

        $InfoMovies = $Moviequery->fetchAll(PDO::FETCH_ASSOC);
        $InfoSeries = $Seriequery->fetchAll(PDO::FETCH_ASSOC);
        $InfoGames = $Gamequery->fetchAll(PDO::FETCH_ASSOC);

        //----------Check Selection Type----------\\
        if(isset($_POST["Selection"])){
            $choice = $_POST["Selection"];
        }
        switch ($choice) {
            case "Movies":
                $ChoiceType = $InfoMovies;
                break;
            case "Series":
                $ChoiceType = $InfoSeries;
                break;
            case "Games":
                $ChoiceType = $InfoGames;
                break;
            }
        //----------Alphabetical Sorting----------\\
        $Sort = $_POST["Sort"] ?? 'asc';
        usort($ChoiceType, function ($x, $y) use ($Sort) {
            return $Sort === 'desc'
                ? strcmp($y['Title'], $x['Title']) //Z-A
                : strcmp($x['Title'], $y['Title']); //A-Z
        });
        $NextTypeSort = $Sort === 'asc' ? 'desc' : 'asc';
    } else {
        header("Location: error.php?error=$errorMessage");
    }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>sebas's Reviews For <?php echo $choice;?></title>
        <link rel="icon" href="../images/icon.ico">
        <link rel="stylesheet" href="../css/base_style.css">
        <link rel="stylesheet" href="../css/style_selection.css">
    </head>
    <body>
        <form action="../index.php">
            <button name="Home_Button" type="submit">Home</button>
        </form>
        <h1>sebas's Epic Reviews For <?php echo $choice ?></h1>
        <!----------Table For Review Items------------>
        <table>
            <tr><th>
                <form method="POST">
                    <input type="hidden" name="Selection" value="<?php echo $choice; ?>">
                    <button type="submit" name="Sort" value="<?php echo $NextTypeSort?>">Sort <?php echo $choice?></button></form></th>
                    <th>Rating:</th>
                    <?php foreach($ChoiceType as $row) {
                        echo "<tr><td><a href='../php/reviewpage.php?type=" . urlencode($choice) . "&id=" . urlencode($row['ID']) . "'>" . htmlspecialchars($row['Title']) . "</a></td>";
                        echo "<td>" . $row['Rating'] . "</td>";
                    }
                    ?>
        </table>
    </body>
</html>