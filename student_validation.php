<?php
$message = "";
$roll = $name = $email = $contact = $address = "";
$gender = "";
$genmale = 1;
$genfemale = $genother = 0;
$nameErr = $rollErr = $addrErr = $emailErr = $contactErr = "";
$target_dir = "uploads/";
$uploadOk = 1;
$image = "";
$imagerr = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") { //check if form was submitted
    $gender = $_POST["student_gender"];
    $target_file = $target_dir . basename($_FILES["student_image"]["name"]);

    if (empty($_POST["student_name"])) {
        $nameErr = "Name is required";
    } else {
        $name = test_input($_POST["student_name"]);
        // check if name only contains letters and whitespace
        if (!preg_match("/^[a-zA-Z ]*$/", $name)) {
            $nameErr = "Only letters and white space allowed";
        }
    }

    if (empty($_POST["student_email"])) {
        $emailErr = "Email is required";
    } else {
        $email = test_input($_POST["student_email"]);
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $emailErr = "Invalid email format";
        }
    }

    if (empty($_POST["student_contact"])) {
        $contactErr = "Contact is required";
    } else {
        $contact = $_POST["student_contact"];
    }

    if (empty($_POST["student_address"])) {
        $addrErr = "Address is required";
    } else {
        $address = $_POST["student_address"];
    }

    if (empty($_POST["student_roll"])) {
        $rollErr = "Roll is required";
    } else {
        $roll = $_POST["student_roll"];
    }

    if ($gender == "Male") {
        $genmale = 1;
    } else if ($gender == "Female") {
        $genfemale = 1;
    } else {
        $genother = 1;
    }

    if (empty($_FILES["student_image"]["name"])) {
        $imagerr = "Image is required";
    } else {
        $image = $_FILES["student_image"]["name"];
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        $check = getimagesize($_FILES["student_image"]["tmp_name"]);
        if ($check !== false) {
            $uploadOk = 1;
        } else {
            $imagerr = "File is not an image.";
            $uploadOk = 0;
        }
    }

}

function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
?>

<html>
	<body>
		<h1> Student Information </h1>
		<!-- when using GET, use $_GET array in get.php, when using
		 POST, use $_POST array in get.php -->
		<form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method = "POST" enctype="multipart/form-data"/>
		<table>
			<tr>
				<td> <b> Roll No. : </b> </td>
				<td> <input type = "number" name = "student_roll" value="<?php echo $roll; ?>"/>
				<span class="error">* <?php echo $rollErr; ?> </span> </td>
			</tr>
			<tr>
				<td> <b> Name : </b> </td>
				<td> <input type = "text" name = "student_name" value="<?php echo $name; ?>" />
				<span class="error">* <?php echo $nameErr; ?> </span> </td>
			</tr>
			<tr>
				<td> <b> E-Mail : </b> </td>
				<td> <input type = "text" name = "student_email" value="<?php echo $email; ?>" />
				<span class="error">* <?php echo $emailErr; ?> </span> </td>
			</tr>
			<tr>
				<td> <b> Contact No. : </b> </td>
				<td> <input type = "number" name = "student_contact" value="<?php echo $contact; ?>"/>
				<span class="error">* <?php echo $contactErr; ?> </span> </td>
			</tr>
			<tr>
				<td> <b> Address : </b> </td>
				<td> <input type = "text" name = "student_address" value="<?php echo $address; ?>" />
				<span class="error">* <?php echo $addrErr; ?> </span> </td>
			</tr>
			<tr>
				<td> <b> Gender : </b> </td>
				<td> <input type="radio" name="student_gender" value="Male" <?php echo ($genmale == 1 ? 'checked' : ''); ?>/> Male </td>
			</tr>
			<tr>
				<td> </td>
				<td> <input type="radio" name="student_gender" value="Female" <?php echo ($genfemale == 1 ? 'checked' : ''); ?> /> Female </td>
			</tr>
			<tr>
				<td> </td>
				<td> <input type="radio" name="student_gender" value="Other" <?php echo ($genother == 1 ? 'checked' : ''); ?> /> Other </td>
			</tr>
  			<tr>
			   <td> Select image to upload: </td>
				<td>
    				<input type="file" name="student_image" id="student_image"/>
					<span class="error">* <?php echo $imagerr; ?> </span>
  				</td>
			</tr>
		<tr>
			<td> </td>
			<td align = "right"> <input type = "submit" name="SubmitButton" /> </td>
		</tr>
	</body>
</html>