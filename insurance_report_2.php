<html>
<?php

function run_query($query)
{
    $conn = new mysqli("localhost", "root", "", "insurance");
    if ($conn->connect_error) {
        die("Unable to connect to the database : " . $conn->connect_error);
    } else {
        $res = $conn->query($query);
        $txt = mysqli_fetch_all($res, MYSQLI_ASSOC);
        $conn->close();
        return $txt;
    }
}

$aid = 1;
$date = 0;
$time = 0;
$acc_no = 0;
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $aid = $_POST["acc_id"];
    $dt = run_query("SELECT aid, date_, time_ FROM accident WHERE aid =" . $aid);
    $date = $dt[0]["date_"];
    $time = $dt[0]["time_"];
    $acc_no = $dt[0]["aid"];
}
?>
    <form method="POST" action="" enctype="multipart/form-data">
    <h1 align="center">Accident report</h1>
    <hr>
    <body>
        <b> Choose an accident : </b> <select name="acc_id">
        <?php
foreach (run_query("select aid from accident") as $row) {
    echo "<option value=" . $row["aid"] . ">" . $row["aid"] . "</option>";
}
?>
        <input type="submit" value="Check">
        </select>
        <br>
        <b> Accident Number : </b> <input type="text" value=<?php echo $acc_no ?>  disabled>
        <b> Date : </b> <input type="text" value=<?php echo $date ?>  disabled>
        <b> Time : </b> <input type="text" value=<?php echo $time ?>  disabled>
        <br>
        <h2> Involved car details : </h2>
        <table id="cars_table" width="95%">
            <tr>
                <th> Registration No. </th>
                <th> Make </th>
                <th> Model </th>
                <th> Insurer </th>
                <th> Date </th>
                <th> Amount </th>
            </tr>
<?php
$res = run_query("SELECT car_number, make, model, name, idate, amount FROM car, customer, insures WHERE car.car_id in "
    . "(SELECT car_id from cars_involved where aid = "
    . $aid . ") and insures.car_id = car.car_id and customer.cid = insures.cid");
foreach ($res as $row) {
    echo "<tr>";
    echo "<td>" . $row["car_number"] . "</td>";
    echo "<td>" . $row["make"] . "</td>";
    echo "<td>" . $row["model"] . "</td>";
    echo "<td>" . $row["name"] . "</td>";
    echo "<td>" . $row["idate"] . "</td>";
    echo "<td>" . $row["amount"] . "</td>";
    echo "</tr>";
}
?>
        </table>
        </form>
    </body>
</html>
