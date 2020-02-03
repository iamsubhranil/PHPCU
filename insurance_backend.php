<?php
function run_query($query, $isUpdate = false)
{
    $conn = new mysqli("localhost", "root", "", "insurance");
    if ($conn->connect_error) {
        die("Unable to connect to the database : " . $conn->connect_error);
    } else {
        $res = $conn->query($query);
        if ($isUpdate == false) {
            $txt = json_encode(mysqli_fetch_all($res, MYSQLI_ASSOC));
            echo $txt;
        } else {
            echo '{"result" :' . $res . '}';
        }
        $conn->close();
    }
}

switch ($_POST['query']) {
    case 'get_accidents':
        run_query("SELECT aid from accident");
        break;
    case 'accident_details':
        run_query("SELECT aid, date_, time_ FROM accident WHERE aid =" . $_POST["aid"]);
        break;
    case 'car_details':
        run_query("SELECT car_number, make, model, name, idate, amount FROM car, customer, insures WHERE car.car_id in "
            . "(SELECT car_id from cars_involved where aid = "
            . $_POST["aid"] . ") and insures.car_id = car.car_id and customer.cid = insures.cid");
        break;
}
