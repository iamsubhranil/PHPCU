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
	
	$conn = new mysqli('localhost', 'root', '', 'db_nil');
	if($conn->connect_error) {
		die('Unable to connect to the database : '.$conn->connect_error);
	} else {
		$elt = $conn->prepare("insert into studentdb (roll, name, email, contact, address, gender) values (?, ?, ?, ?, ?, ?)");
		$elt->bind_param('ississ', $roll, $name, $mail, $contact, $addr, $gender);
		$elt->execute();
		echo "Record inserted!";
		$elt->close();
		$conn->close();
	}
?>