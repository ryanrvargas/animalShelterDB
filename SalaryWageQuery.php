<?php
	ini_set ('error_reporting', 1); //Turns on error reporting - remove once everything works.
	
	try{
		require_once('../pdo_connect.php'); //Connect to the database
		$sql = 'SELECT ROUND(AVG(HourlyWage), 2) as AvgWage, ROUND(AVG(Salary), 2) as AvgSalary FROM PaidStaff;';
		$result = $dbc-> query($sql);
	} catch (PDOException $e){
		echo $e->getMessage();
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Wages and Salaries</title>
	<meta charset ="utf-8"> 
</head>
<body>
    <h1>Uses Aggregate Function AVG</h1>
    <h2>Average Salaries and Wages</h2>
    <?php foreach ($result as $row)
    {
        echo "<h3>". "Average Hourly Wage: " .$row['AvgWage']. " Average Salary: " .$row['AvgSalary']."</h3>";
    }
		?>
</body>    
</html>
