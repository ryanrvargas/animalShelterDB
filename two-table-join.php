<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
	if(isset($_GET['submit'])) { //Form was submitted
		$name = $_GET["name"];
		try{
			require_once('../pdo_connect.php'); //adjust the relative path as necessary to find your connect file
			
			// If name is empty, show all animals; otherwise filter by name
			if(empty($name)) {
				$sql = 'SELECT AnimalName, Species, AnimalDOB, s.ShotDate, s.Name
						FROM Animal a, ShotHistory s
						WHERE a.AnimalID = s.AnimalID
						ORDER BY a.AnimalName ASC';
				$stmt = $dbc->prepare($sql);
				$stmt->execute();
			} else {
				$name = '%'.$name.'%'; // . is the concatenation operator for PHP strings
				$sql = 'SELECT AnimalName, Species, AnimalDOB, s.ShotDate, s.Name
						FROM Animal a, ShotHistory s
						WHERE a.AnimalID = s.AnimalID AND a.AnimalName LIKE ?
						ORDER BY a.AnimalName ASC';
				$stmt = $dbc->prepare($sql);
				$stmt->bindParam(1, $name);
				$stmt->execute();
			}	
		} catch (PDOException $e){
			echo $e->getMessage();
		}	
		$affected = $stmt->rowCount();
		if ($affected == 0){
			echo "We could not find a name matching that description. Please try again.";
			exit;
		}	
		else {
			$result = $stmt->fetchAll();
		}
	} //end isset
	else {
		echo "<h2>You have reached this page in error</h2>";
		exit;
	}
    $today = new DateTime();
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Animal Shelter</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Animals Found: </h2>
	<table border='1'>
		<tr>
			<th>Name</th>
			<th>Species</th>
			<th>Age</th>
			<th>Shot Date</th>
			<th>Shot Name</th>
		</tr>
	<?php foreach($result as $row) {
        $dob = new DateTime($row['AnimalDOB']);
        $age = $today->diff($dob)->y;   // full years difference

		echo "<tr>";
		echo "<td>".$row['AnimalName']."</td>";
		echo "<td>".$row['Species']."</td>";
		echo "<td>".$age."</td>";
		echo "<td>".$row['ShotDate']."</td>";
		echo "<td>".$row['Name']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>
</html>