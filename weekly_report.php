<?php

$conn1 = new mysqli('localhost','root','','restaurant');
if($conn1->connect_error)
	die("Connection Failed : ".$conn1->connect_error);
else 
{
	$query1 = "SELECT
    SUM(bill.amount) as y,
    employee.name as label
FROM
    employee,
    online_order,
    bill
WHERE
    employee.employee_id = online_order.employee_id AND online_order.billno = bill.billno 
	
GROUP BY
    online_order.employee_id";
	$result = $conn1->query($query1);
	//$i=1;
	$dataPoints = array();
	while ($row = mysqli_fetch_assoc($result))
	{
		array_push($dataPoints, $row);
	}
	$conn1->close();
}
/*
$dataPoints = array( 
	array("y" => 7,"label" => "March" ),
	array("y" => 12,"label" => "April" ),
	array("y" => 28,"label" => "May" ),
	array("y" => 18,"label" => "June" ),
	array("y" => 41,"label" => "July" )
);
*/
 
?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title:{
		text: "Weekly report on delivery person"
	},
	axisY: {
		title: "Revenue (in USD)",
		prefix: "$",
		suffix:  "k"
	},
	data: [{
		type: "bar",
		yValueFormatString: "Rs #,##0",
		indexLabel: "{y}",
		indexLabelPlacement: "inside",
		indexLabelFontWeight: "bolder",
		indexLabelFontColor: "white",
		dataPoints: <?php echo json_encode($dataPoints, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>