<?php
	// whatever the variable value we will provide as a 
	// parameter in the url, that value we will be able 
	// to show in the browser
	$m = $_POST["student_marks"];
	$n = $_POST["student_name"];
	$a = $_POST["student_age"];
	
	echo "Marks : $m <br> Name : $n <br> Age : $a";
?>