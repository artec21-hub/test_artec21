<?php
include_once("./_common.php");


$mode = $_GET["mode"];
$to_id = $_GET["to_id"];
$id = $_GET["id"];
$action = $_GET["action"];
$plusminus = $_GET["plusminus"];
$gubun = "도매";
$cash = $_GET["cash"];
$ch_id = $_GET["ch_id"];


if($mode == "tax") {
	$sql = "update shop_cash_charge set tax_result = 'Y' where ch_id = {$ch_id} ";
} else {
	$sql = "update shop_cash_charge set result = 'Y' where ch_id = {$ch_id} ";
	cash_charge($id,$to_id,$cash,$action,$gubun,$plusminus);
}
$result = sql_query($sql);

if($result){
	alert("정상적으로 처리되었습니다");
	goto_url(TB_MYPAGE_URL."/seller_cash_charge.php");
}
else
{
	die("{\"error\":\"일시적인 오류\"}");
}
?>