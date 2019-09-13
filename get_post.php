<html>
	<body>
		<h1> Student Information </h1>
		<!-- when using GET, use $_GET array in get.php, when using
		 POST, use $_POST array in get.php -->
		<form action = "get.php" method = "POST" />
		
		<b> Name : </b> <input type = "text" name = "student_name" /> <br>
		<b> Age : </b> <input type = "text" name = "student_age" /> <br>
		<b> Marks : </b> <input type = "text" name = "student_marks" /> <br>
		 <input type = "submit" />
	</body>
</html>