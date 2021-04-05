<?php
include_once("./_common.php");

check_demo();

check_admin_token();

$de_skin1_gijong_menu = '';
$de_skin1_jepum_menu = '';

for($i=0; $i<count($_POST['menu_subj_gijong']); $i++) {
	if(!trim($_POST['menu_subj_gijong'][$i]))
		continue;

	$arr_menu_gijong[$i]['subj'] = trim($_POST['menu_subj_gijong'][$i]);
	$arr_menu_gijong[$i]['href'] = preg_replace("/\s+/", "", $_POST['menu_href_gijong'][$i]);
	$arr_menu_gijong[$i]['mobile_href'] = preg_replace("/\s+/", "", $_POST['menu_mobile_href_gijong'][$i]);
}

if(is_array($arr_menu_gijong))
	$de_skin1_gijong_menu = base64_encode(serialize($arr_menu_gijong));

for($i=0; $i<count($_POST['menu_subj_jepum']); $i++) {
	if(!trim($_POST['menu_subj_jepum'][$i]))
		continue;

	$arr_menu_jepum[$i]['subj'] = trim($_POST['menu_subj_jepum'][$i]);
	$arr_menu_jepum[$i]['href'] = preg_replace("/\s+/", "", $_POST['menu_href_jepum'][$i]);
	$arr_menu_jepum[$i]['mobile_href'] = preg_replace("/\s+/", "", $_POST['menu_mobile_href_jepum'][$i]);
}

if(is_array($arr_menu_jepum))
	$de_skin1_jepum_menu = base64_encode(serialize($arr_menu_jepum));

$de_skin1_best = '';
for($i=0; $i<count($_POST['item_subj']); $i++) {
	if(!trim($_POST['item_subj'][$i]))
		continue;

	$arr_best[$i]['subj'] = trim($_POST['item_subj'][$i]);
	$arr_best[$i]['code'] = preg_replace("/\s+/", "", $_POST['item_code'][$i]);
}

if(is_array($arr_best))
	$de_skin1_best = base64_encode(serialize($arr_best));


$value['de_skin1_gijong_menu'] = $de_skin1_gijong_menu;
$value['de_skin1_jepum_menu'] = $de_skin1_jepum_menu;
$value['de_skin1_best'] = $de_skin1_best;
$value['de_skin1_name'] = $_POST['de_skin1_name'];
$value['de_pname_1']	= $_POST['de_pname_1'];
$value['de_pname_2']	= $_POST['de_pname_2'];
$value['de_pname_3']	= $_POST['de_pname_3'];
$value['de_pname_4']	= $_POST['de_pname_4'];
$value['de_pname_5']	= $_POST['de_pname_5'];
$value['de_pname_6']	= $_POST['de_pname_6'];
$value['de_pname_7']	= $_POST['de_pname_7'];
$value['de_pname_8']	= $_POST['de_pname_8'];
update('shop_default', $value);

goto_url(TB_ADMIN_URL.'/design.php?code=skin1_form');
?>