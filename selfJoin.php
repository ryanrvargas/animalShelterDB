<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
    try{
        require_once('pdo_connnect1.php'); //adjust the relative path as necessary to find your connect file
        $sql = 'SELECT DISTINCT
                c1.CustomerFN AS FirstName1,
                c2.CustomerFN AS FirstName2,
                c1.CustomerLN AS SharedLastName
            FROM Customer c1
            JOIN Customer c2 
            ON c1.CustomerLN = c2.CustomerLN
            AND c1.CustomerID < c2.CustomerID
            ORDER BY c1.CustomerLN, c1.CustomerFN, c2.CustomerFN';
        $stmt = $dbc->prepare($sql);
        $stmt->execute();	
        $result = $stmt->fetchAll();

        if (empty($result)) {
            echo "No staff records found.";
            exit;
        }
    } catch (PDOException $e){
        echo $e->getMessage();
    }	
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Animal Shelter - Customers with shared last name</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Every Customer with the same Last name: </h2>
	<table>
		<tr>
			<th>Customer First Name</th>
			<th>Other Customer First Name</th>
			<th>SharedLastName</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['FirstName1']."</td>";
		echo "<td>".$row['FirstName2']."</td>";
		echo "<td>".$row['SharedLastName']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>