<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once("./_common.php");

//$admin = "true";
if($admin == "true"){

	define('TB_IS_ADMIN', true);

	include_once(TB_ADMIN_PATH.'/admin_menu.php');

	include_once(TB_ADMIN_PATH."/admin_access.php");
	include_once(TB_ADMIN_PATH."/admin_head.php");

	$pg_title = ADMIN_MENU8;
	$pg_num = 8;
	$snb_icon = "<i class=\"fa fa-comments-o\"></i>";

	if($member['id'] != 'admin' && !$member['auth_'.$pg_num]) {
		alert("접근권한이 없습니다.");
	}

	if($code == "qa")			$pg_title2 = ADMIN_MENU8_01;
	if($code == "qa_form")		$pg_title2 = ADMIN_MENU8_01;

	if($code == "notice")		$pg_title2 = ADMIN_MENU8_02;

	if($code == "qna")			$pg_title2 = ADMIN_MENU8_03;

	if($code == "leave")		$pg_title2 = ADMIN_MENU8_04;
	if($code == "faq_group")	$pg_title2 = ADMIN_MENU8_05;
	if($code == "faq")			$pg_title2 = ADMIN_MENU8_06;
	if($code == "faq_from")		$pg_title2 = ADMIN_MENU8_06;

	include_once(TB_ADMIN_PATH."/admin_topmenu.php");
?>

	<div class="s_wrap">
		<h1><?php echo $pg_title2; ?></h1>
		<?php	
			if(TB_IS_MOBILE) {
				goto_url(TB_MBBS_URL.'/board_list.php?boardid='.$boardid);
			}

			if($board['width'] <= 100) {	
				$board['width'] = $board['width'] ."%";	
			}

			$token = md5(uniqid(rand(), true));
			set_session("ss_token", $token);

			$bo_img_url = TB_BBS_URL.'/skin/'.$board['skin'];
			$from_action_url = TB_HTTPS_BBS_URL."/admin_write_update.php";

			include_once(TB_BBS_PATH."/skin/admin/write.php");

		?>
	</div>
	<?php
	include_once(TB_ADMIN_PATH."/admin_tail.php");
	?>

<?php

}else{

	if(!$is_member) { $member['grade'] = 99; }

	if($board['write_priv'] < 99) {
		if($member['grade'] > $board['write_priv']) {
			alert("권한이 없습니다.", TB_BBS_URL."/list.php?boardid=$boardid");
		}
	}

	if($board['topfile']) {
		@include_once($board['topfile']);
	}

	if($board['content_head']) {
		echo $board['content_head'];
	}

	if($board['width'] <= 100) {
		$board['width'] = $board['width'] ."%";
	}

	$token = md5(uniqid(rand(), true));
	set_session("ss_token", $token);

	$bo_img_url = TB_BBS_URL.'/skin/'.$board['skin'];
	$from_action_url = TB_HTTPS_BBS_URL."/write_update.php";

	include_once(TB_BBS_PATH."/skin/{$board['skin']}/write.php");

	if($board['content_tail']) {
		echo $board['content_tail'];
	}

	if($board['downfile']) {
		@include_once($board['downfile']);
	}

}
?>