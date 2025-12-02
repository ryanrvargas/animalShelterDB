<?php
	ini_set ('error_reporting', 1); //Turns on error reporting - remove once everything works.
	
	try{
		require_once('../pdo_connect.php'); //Connect to the database
		$sql = 'SELECT COUNT(*) as NumOfAnimals FROM Animal;';
		$result = $dbc-> query($sql);
	} catch (PDOException $e){
		echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Number of Animals</title>
	<meta charset ="utf-8"> 
</head>
<body>
    <h1>Uses Aggregate Function COUNT</h1>
    <h2>Number Of Animals In Table</h2>
    <?php foreach ($result as $row)
    {
        echo "<h3>".$row['NumOfAnimals']."</h3>";
    }
		?>
</body>    
</html>
