<html>
	<body>
		<h1> Student Information </h1>
		<!-- when using GET, use $_GET array in get.php, when using
		 POST, use $_POST array in get.php -->
		<form action = "student_get_pdo.php" method = "POST" />
		<table>
			<tr>
				<td> <b> Roll No. : </b> </td>
				<td> <input type = "number" name = "student_roll" /> </td>
			</tr>
			<tr>
				<td> <b> Name : </b> </td> 
				<td> <input type = "text" name = "student_name" /> </td> 
			</tr>
			<tr>
				<td> <b> E-Mail : </b> </td>
				<td> <input type = "text" name = "student_email" /> </td> 
			</tr>
			<tr>
				<td> <b> Contact No. : </b> </td> 
				<td> <input type = "number" name = "student_contact" /> </td> 
			</tr>
			<tr>
				<td> <b> Address : </b> </td>
				<td> <input type = "text" name = "student_address" /> </td> 
			</tr>
			<tr>
				<td> <b> Gender : </b> </td> 
				<td> <input type="radio" name="student_gender" value="male" checked> Male </td>
			</tr>
			<tr>
				<td> </td>
				<td> <input type="radio" name="student_gender" value="female"> Female </td>
			</tr>
			<tr>
				<td> </td>
				<td> <input type="radio" name="student_gender" value="other"> Other </td>
			</tr>
		<tr>
			<td> </td>
			<td align = "right"> <input type = "submit" /> </td>
		</tr>
	</body>
</html>