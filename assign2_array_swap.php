<?php
	$arr = array(374, 7483);
	
	echo "Before swap : ";
	print_r($arr);
	echo "<br>";
	
	function swap_inplace($arr) {
		$arr[0] = $arr[0] + $arr[1];
		$arr[1] = $arr[0] - $arr[1];
		$arr[0] = $arr[0] - $arr[1];
	
		return $arr;
	}
	
	$arr = swap_inplace($arr);
	
	echo "After swap : ";
	print_r($arr);
	echo "<br>";
?>