<?php 
	header("Content-Type: application/json"); 
	include_once("./_common.php");
	
	check_demo();

	//check_admin_token();

	$supply_price = $_POST['supply_price']; 

	$sql = " select * from shop_member_grade order by gb_no desc";
	$result = sql_query($sql);
	for($i=0; $row=sql_fetch_array($result); $i++) {
		if($row["gb_no"] == 7){
			$level7_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 8){
			$level8_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 9){
			$level9_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 2){
			$goods_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 4){
			$level4_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 5){
			$level5_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}elseif($row["gb_no"] == 6){
			$level5_price = $supply_price + ($supply_price * ($row["gb_sale"] / 100));
		}
	
	}

	
	echo(json_encode(array("level7_price" => $level7_price, "level8_price" => $level8_price, "level9_price" => $level9_price, "goods_price" => $goods_price, "level4_price" => $level4_price, "level5_price" => $level5_price, "level6_price" => $level6_price))); // 2. JSON.stirngify() 함수로 전달 

?>
