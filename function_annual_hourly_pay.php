<?php
	ini_set('display_errors', 1);
//Name: 
/*This code assumes user input is valid and correct only for demo purposes - it does NOT validate form data.*/
    try{
        require_once('../pdo_connect.php'); //adjust the relative path as necessary to find your connect file
        $sql = 'SELECT s.StaffFN, s.StaffLN, GetAnnualPay(s.StaffID) AS AnnualPay 
                FROM Staff s JOIN PaidStaff p 
                ON p.StaffID = s.StaffID';
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
    <title>Animal Shelter - Annual Pay of paided staff</title>
	<meta charset ="utf-8"> 
</head>
<body>
	<h2> Staff Found : </h2>
	<table border='1'>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Annual Pay</th>
		</tr>
	<?php foreach($result as $row) {
		echo "<tr>";
		echo "<td>".$row['StaffFN']."</td>";
		echo "<td>".$row['StaffLN']."</td>";
		echo "<td>".$row['AnnualPay']."</td>";
		echo "</tr>";
	}?> 
	</table>
</body>
</html>
