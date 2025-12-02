******This is my extra join query ******

<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
	if(isset($_GET['submit'])) { //Form was submitted
		$title = $_GET["title"];
		$title = '%'.$title.'%'; // . is the concatenation operator for PHP strings
		try{
			require_once('../pdo_connect.php'); //adjust the relative path as necessary to find your connect file
			$sql = 'SELECT 
                b.SupplyID, b.Material, b.Size, s.Price, s.SupplyName, s.SupplyID
            FROM Bedding AS b
            JOIN Supply s ON b.SupplyID = s.SupplyID
			WHERE s.SupplyName LIKE ?';
			$stmt = $dbc->prepare($sql);
			$stmt->bindParam(1, $title);
			$stmt->execute();	
		} catch (PDOException $e){
			echo $e->getMessage();
		}	
		$affected = $stmt->rowCount();
		if ($affected == 0){
			echo "We could not find the Bedding Supply matching that description. Please try again.";
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
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bed Supply Searching</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Bedding Supply Item: </h2>
	<table>
		<tr>
			<th>SupplyID</th>
            <th>SupplyName</th>
			<th>Material</th>
			<th>Size</th>
			<th>Price</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['SupplyID']."</td>";
		echo "<td>".$row['SupplyName']."</td>";
        echo "<td>".$row['Material']."</td>";
		echo "<td>".$row['Size']."</td>";
		echo "<td>".$row['Price']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>