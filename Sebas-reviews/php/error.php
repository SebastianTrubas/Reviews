<!DOCTYPE html>
<?php include "database.php"?>
<html lang="en">
<head>
    <title><?php echo "We're Sorry :("?></title>
    <link rel="icon" href="../images/icon.ico">
    <link rel="stylesheet" href="../css/base_style.css">
</head>
<body>
    <h1>
        We're so sorry there is a problem, we are doing our best to fix it.
        <br>
        Please come back at another time!
    </h1>
    <?php echo $errorMessage;?>
</body>
</html>