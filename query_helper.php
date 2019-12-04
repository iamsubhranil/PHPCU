<?php
function run_query($query, $isUpdate)
{
    $conn = new mysqli('localhost', 'root', '', 'gallery');
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
    case 'showall':
        run_query("select * from art", false);
    break;
}
?>