<?php

include_once("./_common.php");

if(TB_IS_MOBILE) {
	goto_url(TB_MBBS_URL.'/board_list.php?boardid='.$boardid);
}



$bo_img_url = TB_BBS_URL.'/skin/admin';


include_once(TB_BBS_PATH."/skin/admin/list.php");

?>