<?php
	// whatever the variable value we will provide as a 
	// parameter in the url, that value we will be able 
	// to show in the browser
	$roll = $_POST["student_roll"];
	$name = $_POST["student_name"];
	$mail = $_POST["student_email"];
	$contact = $_POST["student_contact"];
	$addr = $_POST["student_address"];
	$gender = $_POST["student_gender"];
	
	try {
		$dbh = new PDO('mysql:host=localhost;dbname=db_nil', "root", "");
		$stmt = $dbh->prepare("insert into studentdb (roll, name, email, contact, address, gender) values (?, ?, ?, ?, ?, ?)");
		$stmt->bindParam(1, $roll);
		$stmt->bindParam(2, $name);
		$stmt->bindParam(3, $mail);
		$stmt->bindParam(4, $contact); 
		$stmt->bindParam(5 ,$addr); 
		$stmt->bindParam(6, $gender);
		$stmt->execute();
		echo "Record inserted!";
		$dbh = null;
	} catch (PDOException $e){
		echo "Error!: " . $e->getMessage() . "<br/>";
		die();
	}
?>