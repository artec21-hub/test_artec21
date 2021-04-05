<?php
include_once("./_common.php");


$token = md5(uniqid(rand(), true));
set_session("ss_token", $token);

$bo_img_url = TB_BBS_URL.'/skin/admin';
$from_action_url = TB_HTTPS_BBS_URL."/write_update.php";

include_once(TB_BBS_PATH."/skin/admin/write.php");


?>