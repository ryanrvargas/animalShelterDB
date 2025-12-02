******This is my stored procedure query ******

<?php
	ini_set('display_errors', 1);
	//Name: 
	/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
	if(isset($_GET['submit'])) { //Form was submitted
		$name = $_GET["name"]; // user input
		try{
			require_once('../pdo_connect.php'); //adjust the relative path as necessary to find your connect file

			$sql = 'CALL SearchSuppliesByName(?)';
			$stmt = $dbc->prepare($sql);
			$stmt->bindParam(1, $name);
			$stmt->execute();

			// fetch all rows from the first result set
			$result = $stmt->fetchAll(PDO::FETCH_ASSOC);

			// Clear any remaining result sets to prevent "commands out of sync"
			while ($stmt->nextRowset()) { /* advance to end */ }

		} catch (PDOException $e){
			echo $e->getMessage();
			exit;
		}

		if (count($result) === 0){
			echo "We could not find a supply matching that description. Please try again.";
			exit;
		}

	} //end isset
	else {
		echo "<h2>You have reached this page in error</h2>";
		exit;
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>General Supply Searching</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Supply Search Results: </h2>
	<table>
		<tr>
			<th>SupplyID</th>
            <th>SupplyName</th>
			<th>Price</th>
			<th>CleaningType</th>
			<th>ToyType</th>
			<th>ToyColor</th>
			<th>ExpDate</th>
			<th>GroomingType</th>
			<th>BeddingMaterial</th>
			<th>BeddingSize</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['SupplyID']."</td>";
		echo "<td>".$row['SupplyName']."</td>";
		echo "<td>".$row['Price']."</td>";
		echo "<td>".($row['CleaningType'] ?? "")."</td>";
		echo "<td>".($row['ToyType'] ?? "")."</td>";
		echo "<td>".($row['ToyColor'] ?? "")."</td>";
		echo "<td>".($row['ExpDate'] ?? "")."</td>";
		echo "<td>".($row['GroomingType'] ?? "")."</td>";
		echo "<td>".($row['BeddingMaterial'] ?? "")."</td>";
		echo "<td>".($row['BeddingSize'] ?? "")."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>