<?php
	ini_set ('error_reporting', 1); //Turns on error reporting - remove once everything works.
	
	try{
		require_once('../pdo_connect.php'); //Connect to the database
		$sql1 = 'SELECT COUNT(*) AS NumSalary FROM PaidStaff GROUP BY HourlyWage HAVING HourlyWage IS NULL;';
		$result1 = $dbc-> query($sql1);
        $sql2 = 'SELECT COUNT(*) AS NumWage FROM PaidStaff GROUP BY Salary HAVING Salary IS NULL;';
		$result2 = $dbc-> query($sql2);
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
    <h1>Uses Aggregate Function COUNT With GROUP BY And HAVING</h1>
    <h2>Number of Salaries and Number of Wages</h2>
    <?php foreach ($result1 as $row)
    {
        echo "<h3>". "Number of Salaried Employees: " .$row['NumSalary']."</h3>";
    }
	foreach ($result2 as $row)
    {
        echo "<h3>"."Number of Wage-based Employees: ".$row['NumWage']."</h3>";
    }
        ?>
</body>    
</html>
