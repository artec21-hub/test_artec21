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
			
			$comment = sql_fetch("select * from shop_board_{$boardid}_tail where index_no='$tailindex'");

			if($mode=='d') {
				if($comment['writer']) {
					if(!$is_member) {
						goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
					}

					if(!is_admin()) {
						if($comment['writer'] != $member['index_no']) {
							alert('권한이 없습니다.');
						}
					}
				} else {
					if(!is_admin()) {
						$passwd = $_POST['passwd'];
						if($passwd != $comment['passwd']) {
							alert('비밀번호가 일치하지 않습니다.');
						}
					}
				}
				
				sql_query("delete from shop_board_{$boardid}_tail where index_no='$tailindex'");
				sql_query("update shop_board_{$boardid} set tailcount=tailcount-1 where index_no='$index_no'");
				
				goto_url(TB_BBS_URL."/read.php?index_no=$index_no&boardid=$boardid$qstr&page=$page");
			}

			if($comment['writer'])
			{
				if(!$is_member) {
					goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
				}

				if(!is_admin()) {
					if($comment['writer'] != $member['index_no']) {
						alert('권한이 없습니다.');
					}
				}
			}
	
			if($board['width'] <= 100) {	
				$board['width'] = $board['width'] ."%";	
			}

			include_once(TB_BBS_PATH."/skin/admin/tail_del.php");

				

		?>
	</div>
	<?php
	include_once(TB_ADMIN_PATH."/admin_tail.php");
	?>

<?php

}else{

	$comment = sql_fetch("select * from shop_board_{$boardid}_tail where index_no='$tailindex'");

	if($mode=='d') {
		if($comment['writer']) {
			if(!$is_member) {
				goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
			}

			if(!is_admin()) {
				if($comment['writer'] != $member['index_no']) {
					alert('권한이 없습니다.');
				}
			}
		} else {
			if(!is_admin()) {
				$passwd = $_POST['passwd'];
				if($passwd != $comment['passwd']) {
					alert('비밀번호가 일치하지 않습니다.');
				}
			}
		}
		
		sql_query("delete from shop_board_{$boardid}_tail where index_no='$tailindex'");
		sql_query("update shop_board_{$boardid} set tailcount=tailcount-1 where index_no='$index_no'");
		
		goto_url(TB_BBS_URL."/read.php?index_no=$index_no&boardid=$boardid$qstr&page=$page");
	}

	if($comment['writer'])
	{
		if(!$is_member) {
			goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
		}

		if(!is_admin()) {
			if($comment['writer'] != $member['index_no']) {
				alert('권한이 없습니다.');
			}
		}
	}

	if($board['topfile']) {	
		@include_once($board['topfile']);
	}

	if($board['width'] <= 100) {	
		$board['width'] = $board['width'] ."%";	
	}

	include_once(TB_BBS_PATH."/skin/{$board['skin']}/tail_del.php");

	if($board['downfile']) {	
		@include_once($board['downfile']);
	}
}
?>