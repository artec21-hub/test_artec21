<?php
define('_PURENESS_', true);
include_once("./_common.php");

$hash = trim($_POST['hash']);
$od_id = trim($_POST['od_id']);

//if(empty($hash))
  //  die('hash 정보가 넘어오지 않았습니다.');

//$sql = " update shop_order
//			set user_ok = '1'
//			  , dan = '10'
//			  , user_date = '".TB_TIME_YMDHIS."'
//		  where md5(concat(gs_id,od_no,od_id)) = '{$hash}'
//			and user_ok = '0'
//			and dan = '5' ";

$sql = " select * from shop_order where od_id = '{$od_id}'";
$result = sql_query($sql);

for($i=0; $row=sql_fetch_array($result); $i++) {
    // 상품에 대한 현재고수량
    $sql2 = " update shop_order
			set user_ok = '1'
			  , dan = '10'
			  , user_date = '".TB_TIME_YMDHIS."'
		  where od_no = '{$row['od_no']}'
			and user_ok = '0'
			and dan = '5' ";
	$result2 = sql_query($sql2, FALSE);

	yechigrm_calc($row['od_no']);

	if($row['shop_id'] == "admin"){

		$sql2 = " select pt_id from shop_member where id = '{$row['mb_id']}' ";
		$row2 = sql_fetch($sql2);

		$price = (int)$row['use_price'] - (int)$row['baesong_price'] - (int)$row['baesong_price2'];

		if($row['paymethod'] != "포인트"){
			if($price > 0){
				choochun_save($row['od_no'],$row['paymethod'],$row['mb_id'],$row2['pt_id'],$price);
			}
		}
	}
    
}

if(!$result)
	die('일치하는 주문정보가 없습니다.');
else
	die('');
?>