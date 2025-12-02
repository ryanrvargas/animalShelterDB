<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
    try{
        require_once('pdo_connnect1.php'); //adjust the relative path as necessary to find your connect file
        $sql = 'SELECT
            c.customerFN,
   	        c.customerLN,
    	    a.backgroundCheck,
    	    r.staffID
        FROM Customer c
        JOIN Application a ON c.CustomerID = a.CustomerID
        JOIN Reviews r ON a.ApplicationNum = r.ApplicationNum
        WHERE r.CustomerID = c.CustomerID';
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
    <title>Animal Shelter - Customer application summary and Staff that Reviewed.</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Customer Processed & Staff: </h2>
	<table>
		<tr>
			<th>Customer First Name</th>
			<th>Customer Last Name</th>
			<th>Background Check</th>
            <th>Staff ID</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['customerFN']."</td>";
		echo "<td>".$row['customerLN']."</td>";
		echo "<td>".$row['backgroundCheck']."</td>";
        echo "<td>".$row['staffID']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>