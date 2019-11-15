<html>

    <?php
        // Defining variables to store the input values 
        $it1 = $_POST["item1"];
        $it2 = $_POST["item2"];
        $it3 = $_POST["item3"];
        $it4 = $_POST["item4"];
        $it5 = $_POST["item5"];
        $total = ($it1*185) + ($it2*215) + ($it3*175) + ($it4*125) + ($it5*155);
        print_r($_POST);
    ?>

    <form action="Successful.php" method=POST>
    <h4><ins><big>Customer Details :</big></ins></h4>

    <b> Name : <input type = "text" name = "name" value="<?php echo $_POST["name"];?>">
    <br><br>

    <b> Customer ID : <input type = "text" name = "id" value="<?php echo $_POST["id"];?>">
    <br><br>

    <b>Address : <input type = "text" name = "address" value="<?php echo $_POST["address"];?>"><br><br>

    <b>Area : <input type = "text" name = "area" value="<?php echo $_POST["area"];?>"><br><br>

    <b>Phone No. : <input type = "number" name = "phone" value="<?php echo $_POST["phone"];?>"><br><br>
    <hr>    

    <h4><ins><big>Order Details :</big></ins></h4>

    <table align="center" border="2" bgcolor="#f1f1c1">
        <tr>
            <td><b>Item</b></td>
            <td><b>Quantity</b></td>
            <td><b>Amount</b></td>
        </tr>
        <tr>
            <td>Chicken Biriyani</td>
            <td><?php echo $it1 ?></td>
            <td><?php echo ($it1*185) ?></td>
        </tr>
        <tr>
            <td>Mutton Biriyani</td>
            <td><?php echo $it2 ?></td>
            <td><?php echo ($it2*215) ?></td>
        </tr>
        <tr>
            <td>Chicken Rezala</td>
            <td><?php echo $it3 ?></td>
            <td><?php echo ($it3*175) ?></td>
        </tr>
        <tr>
            <td>Chicken Kebab</td>
            <td><?php echo $it4 ?></td>
            <td><?php echo ($it4*125) ?></td>
        </tr>
        <tr>
            <td>Reshmi Pulao</td>
            <td><?php echo $it5 ?></td>
            <td><?php echo ($it5*155) ?></td>
        </tr>
        <tr>
            <td colspan="2"><b>Total</b></td>
            <td><b><?php echo $total;?></b></td>
        </tr>
    </table>
    <br><br><br>
    <div align="center">
        <input type = "submit" name="submit" value="Confirm Order">
    </div>
    </form>
</html>