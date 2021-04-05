<?php
include_once("./_common.php");

check_demo();

check_admin_token();


unset($value);
$value['action']		= $_POST['action'];
$value['charge_money']		= $_POST['charge_money'];
$value['id']			= $_POST['id'];
$value['gubun']			= '가맹점';
$value['to_id']			= $_POST['to_id'];
$value['input_date']	= TB_TIME_YMDHIS; //가입일시
insert("shop_cash_charge", $value);

alert("충전신청이 완료되었습니다.");

goto_url(TB_MYPAGE_URL.'/page.php?code=partner_cashcharge');
?>