<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');

include_once("./_common.php");

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

			$bo_wdate		= date("Y-m-d",$write['wdate']);
			$bo_writer		= $write['writer'];
			$bo_writer_s	= $write['writer_s'];
			$bo_issecret	= $write['issecret'];
			$bo_subject		= $write['subject'];
			$bo_memo		= nl2br($write['memo']);
			$bo_file1		= $write['fileurl1'];
			$bo_file2		= $write['fileurl2'];
			$bo_hit			= $write['readcount'] + 1;
			$bo_passwd		= $write['passwd'];

			$qstr1 = "admin=true&conde=notice&boardid=$boardid$qstr&page=$page";
			$qstr2 = "admin=true&conde=notice&index_no=$index_no&boardid=$boardid$qstr&page=$page";
			$qstr3 = "admin=true&conde=notice&boardid=$boardid$qstr";

			$mb = sql_fetch("select id from shop_member where index_no = '$bo_writer'");
			$bo_writer_id = $mb['id'];

			if($bo_file1)
				$refile1 = "<a href='".TB_DATA_URL."/board/$boardid/$bo_file1' target='_blank'>$bo_file1</a>";

			if($bo_file2)
				$refile2 = "<a href='".TB_DATA_URL."/board/$boardid/$bo_file2' target='_blank'>$bo_file1</a>";

			sql_query("update shop_board_{$boardid} set readcount='$bo_hit' where index_no='$index_no' ");

			$accept = array("gif","jpg","GIF","JPG","PNG","png");
			$bo_subject = "<b>".$bo_subject."</b>";

			if($bo_issecret=='Y')
			{
				if($bo_writer) {
					if(!$is_member) {
						goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
					}
				}

				if(!is_admin())
				{
					if($is_member)
					{
						//관리자가 답변을 달면 본인이 글을 볼수가 없었던문제 버그수정 jck
						$sb_sql = sql_query(" select fid from shop_board_{$boardid} where index_no = '$index_no' ");
						if( sql_num_rows($sb_sql) > 0 ) {
							$sb_row = sql_fetch_array($sb_sql);
							$wr_row = sql_fetch(" select writer from shop_board_{$boardid} where fid = '{$sb_row['fid']}' and thread = 'A' ");
							$bo_writer = $wr_row['writer'];
						}

						if($member['index_no'] != $bo_writer) {
							alert("비밀글은 열람하실 수 없습니다.");
						}
					}
					else
					{
						$inpasswd = $_GET['inpasswd'];
						$member['index_no'] = 0;

						if($inpasswd != $bo_passwd) {
							goto_url(TB_BBS_URL."/secret.php?index_no=$index_no&$qstr1");
						}
						else
						{
							//관리자가 답변을 달면 본인이 글을 볼수가 없었던문제 버그수정 jck
							$sb_sql = sql_query(" select fid from shop_board_{$boardid} where index_no = '$index_no' ");
							if( sql_num_rows($sb_sql) > 0 ) {
								$sb_row = sql_fetch_array($sb_sql);
								$wr_row = sql_fetch(" select writer from shop_board_{$boardid} where fid = '{$sb_row['fid']}' and thread = 'A' ");
								$bo_writer = $wr_row['writer'];
							}
						}
					}
				}
			}

			$bo_img_url = TB_BBS_URL.'/skin/'.$board['skin'];
			$from_action_url = TB_HTTPS_BBS_URL."/admin_tail_write.php";

			include_once(TB_BBS_PATH."/skin/admin/read.php");
		?>
	</div>
	<?php
	include_once(TB_ADMIN_PATH."/admin_tail.php");
	?>

<?php

}else{

	include_once("./_common.php");

	if(TB_IS_MOBILE) {
		goto_url(TB_MBBS_URL.'/board_read.php?boardid='.$boardid.'&index_no='.$index_no);
	}

	if(!$is_member) { $member['grade'] = 99; }

	if($board['read_priv'] < 99) {
		if($member['grade'] > $board['read_priv']) {
			alert('권한이 없습니다.');
		}
	}

	$bo_wdate		= date("Y-m-d",$write['wdate']);
	$bo_writer		= $write['writer'];
	$bo_writer_s	= $write['writer_s'];
	$bo_issecret	= $write['issecret'];
	$bo_subject		= $write['subject'];
	$bo_memo		= nl2br($write['memo']);
	$bo_file1		= $write['fileurl1'];
	$bo_file2		= $write['fileurl2'];
	$bo_hit			= $write['readcount'] + 1;
	$bo_passwd		= $write['passwd'];

	$qstr1 = "boardid=$boardid$qstr&page=$page";
	$qstr2 = "index_no=$index_no&boardid=$boardid$qstr&page=$page";
	$qstr3 = "boardid=$boardid$qstr";

	$mb = sql_fetch("select id from shop_member where index_no = '$bo_writer'");
	$bo_writer_id = $mb['id'];

	if($bo_file1)
		$refile1 = "<a href='".TB_DATA_URL."/board/$boardid/$bo_file1' target='_blank'>$bo_file1</a>";

	if($bo_file2)
		$refile2 = "<a href='".TB_DATA_URL."/board/$boardid/$bo_file2' target='_blank'>$bo_file1</a>";

	sql_query("update shop_board_{$boardid} set readcount='$bo_hit' where index_no='$index_no' ");

	$accept = array("gif","jpg","GIF","JPG","PNG","png");
	$bo_subject = "<b>".$bo_subject."</b>";

	if($bo_issecret=='Y')
	{
		if($bo_writer) {
			if(!$is_member) {
				goto_url(TB_BBS_URL.'/login.php?url='.$urlencode);
			}
		}

		if(!is_admin())
		{
			if($is_member)
			{
				//관리자가 답변을 달면 본인이 글을 볼수가 없었던문제 버그수정 jck
				$sb_sql = sql_query(" select fid from shop_board_{$boardid} where index_no = '$index_no' ");
				if( sql_num_rows($sb_sql) > 0 ) {
					$sb_row = sql_fetch_array($sb_sql);
					$wr_row = sql_fetch(" select writer from shop_board_{$boardid} where fid = '{$sb_row['fid']}' and thread = 'A' ");
					$bo_writer = $wr_row['writer'];
				}

				if($member['index_no'] != $bo_writer) {
					alert("비밀글은 열람하실 수 없습니다.");
				}
			}
			else
			{
				$inpasswd = $_GET['inpasswd'];
				$member['index_no'] = 0;

				if($inpasswd != $bo_passwd) {
					goto_url(TB_BBS_URL."/secret.php?index_no=$index_no&$qstr1");
				}
				else
				{
					//관리자가 답변을 달면 본인이 글을 볼수가 없었던문제 버그수정 jck
					$sb_sql = sql_query(" select fid from shop_board_{$boardid} where index_no = '$index_no' ");
					if( sql_num_rows($sb_sql) > 0 ) {
						$sb_row = sql_fetch_array($sb_sql);
						$wr_row = sql_fetch(" select writer from shop_board_{$boardid} where fid = '{$sb_row['fid']}' and thread = 'A' ");
						$bo_writer = $wr_row['writer'];
					}
				}
			}
		}
	}

	if($board['topfile']) {
		include $board['topfile'];
	}

	if($board['content_head']) {
		echo $board['content_head'];
	}

	if($board['width'] <= 100) {
		$board['width'] = $board['width'] ."%";
	}

	$bo_img_url = TB_BBS_URL.'/skin/'.$board['skin'];
	$from_action_url = TB_HTTPS_BBS_URL."/tail_write.php";

	include_once(TB_BBS_PATH."/skin/{$board['skin']}/read.php");

	if($board['content_tail']) {
		echo $board['content_tail'];
	}

	if($board['downfile']) {
		include $board['downfile'];
	}

}
?>