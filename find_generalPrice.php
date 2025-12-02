******This is my subquery query ******

<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
	if(isset($_GET['submit'])) { //Form was submitted
		$price = isset($_GET['price']) ? (float)$_GET['price'] : 0;
		try{
			require_once('../pdo_connect.php'); //adjust the relative path as necessary to find your connect file
			$sql = 'SELECT SupplyID, SupplyName, Price
            FROM Supply
            WHERE SupplyID IN (
                SELECT SupplyID
                FROM Supply
                WHERE Price BETWEEN (? - 5) AND (? + 5)
            )';
			$stmt = $dbc->prepare($sql);
			$stmt->bindParam(1, $price);
            $stmt->bindParam(2, $price);
			$stmt->execute();	
		} catch (PDOException $e){
			echo $e->getMessage();
		}	
		$affected = $stmt->rowCount();
		if ($affected == 0){
			echo "We could not find an item around that price. Please try again.";
			exit;
		}	
		else {
			$result = $stmt->fetchAll();
		}
	}
	else {
		echo "<h2>You have reached this page in error</h2>";
		exit;
	}
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>price Searching</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2>Supply Item: </h2>
	<table>
		<tr>
			<th>SupplyID</th>
            <th>SupplyName</th>	
			<th>Price</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['SupplyID']."</td>";
		echo "<td>".$row['SupplyName']."</td>";
		echo "<td>".$row['Price']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>