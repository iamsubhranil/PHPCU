<?php

function debug_to_console($data)
{
    $output = $data;
    if (is_array($output)) {
        $output = implode(',', $output);
    }

    echo "<script>console.log('Debug Objects: " . $output . "' );</script>";
}

function run_query($query, $isUpdate)
{
    $conn = new mysqli('localhost', 'root', '', 'restaurant');
    //debug_to_console($query);
    if ($conn->connect_error) {
        die('Unable to connect to the database : ' . $conn->connect_error);
    } else {
        $result = $conn->query($query);
        if ($isUpdate == false) {
            $txt = json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC));
            echo $txt;
        }
        $conn->close();
    }
}

switch ($_POST["query"]) {
    case 'delivery_boy_info':
        run_query("SELECT employee_id, name, AreaName from employee, area where employee_id=" . $_POST["id"] . " and
                employee.areaid = area.AreaCode", false);
        break;
    case 'delivery_boy_idx':
        run_query("SELECT employee_id from employee where type='ONLINE' order by employee_id asc", false);
        break;
    case 'areanames':
        run_query("SELECT AreaName from area", false);
        break;
    case 'delivery_boy_update':
        $q = "UPDATE employee SET name='" . $_POST["name"] .
            "', areaid=(select AreaCode from area where AreaName='" . $_POST["areaname"] . "')" .
            "where employee_id=" . $_POST["id"];
        run_query($q, true);
        break;
    case 'item_idx':
        run_query("SELECT item_id from items order by item_id asc", false);
        break;
    case 'item_info':
        run_query("SELECT item_id, name, price from items where item_id=" . $_POST["id"], false);
        break;
    case 'item_update':
        run_query("UPDATE items set name='" . $_POST["name"] .
            "', price=" . $_POST["price"] . " where item_id=" . $_POST["id"], true);
        break;
}
