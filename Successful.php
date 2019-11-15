<?php

    //Create connection with database
    $conn1 = new mysqli('localhost','root','','bob_db');
    //Checking if connection is successful
    if($conn1->connect_error)
        die("Connection Failed : ".$conn1->connect_error);
    else 
    {
        $id=$_POST["id"];
        $query1 = "SELECT CId from Customer where CId=$id";
        $checkID = $conn1->query($query1);
        if(mysqli_num_rows($checkID)==0)
        {
            echo (mysqli_num_rows($checkID));
            print_r($_POST);
            $cust = $conn1->prepare("INSERT into customer (CId,Name,Address,AreaCode,Phone) values (?,?,?,?,?)");
            $cust->bind_param('issii', $_POST["id"], $_POST["name"], $_POST["address"], $_POST["area"], $_POST["phone"]);
            $cust->execute();
            echo "Registration Successful";
            $cust->close();
        }    
        $conn1->close();
    }
?>