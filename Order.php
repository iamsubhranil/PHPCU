<html> <body bgcolor=#f2abe4be4>
    <?php
	    // Defining variables to store the input values 
        $it1 = $it2 = $it3 = $it4 = $it5 = $total = 0;
        $anyError=0;
        $name = $phone = $id = $area = $nameErr = $phoneErr = $address = $addErr = $areaErr = $idErr = "";

        if ($_SERVER["REQUEST_METHOD"] == "POST") 	//True only when submit button is clicked
    	{
            // Validating the mandatory fields 
		    if (empty($_POST["name"]))
    		{
				$nameErr = "Name is required";
				$anyError = 1;
			}
			else if(!preg_match("/^[a-zA-Z ]*$/",$_POST["name"]))
			{
				$nameErr = "Only letters and white space allowed";
				$anyError = 1;
			}
	    	else
                $name = test_input($_POST["name"]);
            
            if (empty($_POST["address"]))
            {
                $addErr = "Address is required";
                $anyError = 1;
            }
            else
                $area = test_input($_POST["address"]);

            if (empty($_POST["area"]))
            {
                $areaErr = "Area Code is required";
                $anyError = 1;
            }
            else
                $area = test_input($_POST["address"]);

            if (empty($_POST["id"]))
            {
                $idErr = "Area Code is required";
                $anyError = 1;
            }
            else
                $id = test_input($_POST["id"]);

            if (empty($_POST["phone"]))
            {
                $phoneErr = "Phone number is required";
                $anyError = 1;                
            }
            else if (!filter_var($_POST["phone"], FILTER_VALIDATE_INT))
            {
                $phoneErr = "Invalid phone number";
                $anyError = 1;
            } 
            else
                $phone = test_input($_POST["phone"]);
        }

        function test_input($data) 
    	{
	    	$data = trim($data);
		    $data = stripslashes($data);
    		$data = htmlspecialchars($data);
		    return $data;
	    }        
    ?>


    <h1 align="center"><font size="10"><ins><big>Good Food Online</big></ins></font></h1>
    <hr><hr>
    <!-- <h4><marquee scrollamount="3"><font color=#FF0000>All fields marked with * are mandatory</font></marquee></h4> -->
    <hr>
	<form action="Checkout.php" method="POST">
	    <h4><ins><big>Customer Details :</big></ins></h4>

        <b> Name : <input type = "text" name = "name" value="<?php echo $name;?>"><span class="error"><font color=#FF0000 size="2"> * <?php echo $nameErr;?></font></span>
        <br><br>

        <b> Customer ID : <input type = "text" name = "id" value="<?php echo $id;?>"><span class="error"><font color=#FF0000 size="2"> * <?php echo $idErr;?></font></span>
        <br><br>
     
        <b>Address : <input type = "text" name = "address" value="<?php echo $address;?>"><span class="error"><font color=#FF0000 size="2"> * <?php echo $addErr;?></font></span>       <br><br>

        <b>Area : </b>
					<?php
						$conn1 = new mysqli('localhost','root','','bob_db');
						if($conn1->connect_error)
							die("Connection Failed : ".$conn1->connect_error);
						else 
						{
							$query1 = "SELECT * from area";
							$result = $conn1->query($query1);
							echo "<select name='area'>";
							//$i=1;
							while ($row = mysqli_fetch_assoc($result))
							{
								echo "<option value=\"".$row["AreaCode"]."\">".$row["AreaName"]."</option>";
							}    
							echo "</select>";
							$conn1->close();
						}
					?> 
		
                    <span class="error"><font color=#FF0000 size="2"> * <?php echo $areaErr;?></font></span><br><br>

        <b>Phone No. : <input type = "number" name = "phone" value="<?php echo $phone;?>">
        <span class="error"><font color=#FF0000 size="2"> * <?php echo $phoneErr;?></font> <span><br><br>
        <hr>    

        <h4><ins><big>Order Details :</big></ins></h4>

        <table align="center" border="2" bgcolor="aquamarine">
            <tr>
                <td><b>Item</b></td>
                <td><b>Cost</b></td>
                <td><b>Quantity</b></td>
            </tr>
            <tr>
                <td>Chicken Biriyani</td>
                <td>₹185</td>
                <td>
                    <select name="item1">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Mutton Biriyani</td>
                <td>₹215</td>
                <td>
                    <select name="item2">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Chicken Rezala</td>
                <td>₹175</td>
                <td>
                    <select name="item3">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>Chicken Kebab</td>
                <td>₹125</td>
                <td>
                    <select name="item4" id="item4">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>        
                </td>
            </tr>
            <tr>
                <td>Reshmi Pulao</td>
                <td>₹155</td>
                <td>
                    <select name="item5">
                        <option value="0">0</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                    </select>
                </td>
            </tr>
        </table>
        <br><br>
        <hr>
        <br>
        <div align="center">
            <input type = "submit" name="submit" value="Proceed To Checkout">
        </div>
    </form>
</body></html>