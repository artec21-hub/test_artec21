<?php
if(!defined('_TUBEWEB_')) exit;

$pg_title = "포인트 내역관리";
include_once("./admin_head.sub.php");

if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $fr_date)) $fr_date = '';
if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $to_date)) $to_date = '';

if(isset($gubun) && $gubun) {
	$qstr .= "&gubun=$gubun";
}

$query_string = "code=$code$qstr";
$q1 = $query_string;
$q2 = $query_string."&page=$page";

$sql_common = " from shop_point a, shop_member b ";
$sql_search = " where a.mb_id = b.id and mb_id = '{$member['id']}' ";

if($gubun)
	$sql_search .= " and a.gubun = '{$gubun}' ";

if($fr_date && $to_date)
    $sql_search .= " and a.po_datetime between '$fr_date 00:00:00' and '$to_date 23:59:59' ";
else if($fr_date && !$to_date)
	$sql_search .= " and a.po_datetime between '$fr_date 00:00:00' and '$fr_date 23:59:59' ";
else if(!$fr_date && $to_date)
	$sql_search .= " and a.po_datetime between '$to_date 00:00:00' and '$to_date 23:59:59' ";

if(!$orderby) {
    $filed = "a.po_id";
    $sod = "desc";
} else {
	$sod = $orderby;
}

$sql_order = " order by {$filed} {$sod} ";

// 테이블의 전체 레코드수만 얻음
$sql = " select count(*) as cnt {$sql_common} {$sql_search} ";
$row = sql_fetch($sql);
$total_count = $row['cnt'];

$rows = 30;
$total_page  = ceil($total_count / $rows);  // 전체 페이지 계산
if($page < 1) $page = 1; // 페이지가 없으면 첫 페이지 (1 페이지)
$from_record = ($page - 1) * $rows; // 시작 열을 구함
$num = $total_count - (($page-1)*$rows);

$sql = " select a.*, b.name, b.grade,b.point {$sql_common} {$sql_search} {$sql_order} limit {$from_record}, {$rows} ";
$result = sql_query($sql);

include_once(TB_PLUGIN_PATH.'/jquery-ui/datepicker.php');

$btn_frmline = <<<EOF
<a href="./partner_payhistoryexcel.php?$q1" class="btn_lsmall bx-white"><i class="fa fa-file-excel-o"></i> 엑셀저장</a>
EOF;
?>

<h2>기본검색</h2>
<form name="fsearch" id="fsearch" method="get">
<input type="hidden" name="code" value="<?php echo $code; ?>">
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w100">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row">기간검색</th>
		<td>
			<?php echo get_search_date("fr_date", "to_date", $fr_date, $to_date); ?>
		</td>				
	</tr>
	<tr>
		<th scope="row">구분</th>
		<td>
			<?php echo radio_checked('gubun', $gubun, '', '전체'); ?>
			<?php echo radio_checked('gubun', $gubun, '판매포인트', '판매포인트'); ?>
			<?php echo radio_checked('gubun', $gubun, '추천포인트', '추천포인트'); ?>
			<?php echo radio_checked('gubun', $gubun, '회원가입포인트', '회원가입포인트'); ?>
			<?php echo radio_checked('gubun', $gubun, '포인트출금', '포인트출금'); ?>	
			<?php echo radio_checked('gubun', $gubun, '포인트구매', '포인트구매'); ?>
		</td>
	</tr>
	</tbody>
	</table>
</div>
<div class="btn_confirm">
	<input type="submit" value="검색" class="btn_medium">
	<input type="button" value="초기화" id="frmRest" class="btn_medium grey">
</div>	
</form>

<div class="local_ov mart30">
	전체 : <b class="fc_red"><?php echo number_format($total_count); ?></b> 건 조회
</div>
<div class="local_frm01">
	<?php echo $btn_frmline; ?>
</div>
<div class="tbl_head01">
	<table>
	<colgroup>
		<col class="w50">
		<col class="w130">
		<col class="w130">
		<col class="w130">
		<col>			
		<col class="w130">		
		<col class="w90">
		<col class="w90">
		<col class="w90">
		<col class="w90">
	</colgroup>
	<thead>
	<tr>
		<th scope="col">번호</th>		
		<th scope="col"><?php echo subject_sort_link('b.name', $q2); ?>회원명</a></th>
		<th scope="col"><?php echo subject_sort_link('a.mb_id', $q2); ?>아이디</a></th>
		<th scope="col"><?php echo subject_sort_link('b.grade', $q2); ?>레벨</a></th>	
		<th scope="col"><?php echo subject_sort_link('a.po_content', $q2); ?>포인트내용</a></th>
		<th scope="col"><?php echo subject_sort_link('a.po_datetime', $q2); ?>일시</a></th>	
		<th scope="col" class="th_bg"><?php echo subject_sort_link('a.gubun', $q2); ?>구분</a></th>	
		<th scope="col" class="th_bg"><?php echo subject_sort_link('a.po_point', $q2); ?>지급포인트</a></th>			
		<th scope="col" class="th_bg"><?php echo subject_sort_link('a.po_use_point', $q2); ?>사용포인트</a></th>			
		<th scope="col"><?php echo subject_sort_link('b.point', $q2); ?>포인트잔액</a></th>
	</tr>
	</thead>
	<?php
	for($i=0; $row=sql_fetch_array($result); $i++) {
		if($i==0)
			echo '<tbody class="list">'.PHP_EOL;

		$bg = 'list'.($i%2);
	?>
	<tr class="<?php echo $bg; ?>">
		<td><?php echo $num--; ?></td>
		<td class="tal"><?php echo get_text($row['name']); ?></td>
		<td class="tal"><?php echo $row['mb_id']; ?></td>
		<td><?php echo get_grade($row['grade']); ?></td>
		<td class="tal"><?php echo $row['po_content']; ?></td>
		<td><?php echo $row['po_datetime']; ?></td>	
		<td><?php echo $row['gubun']; ?></td>	
		<td class="tar"><?php echo number_format($row['po_point']); ?></td>							
		<td class="tar"><?php echo number_format($row['po_use_point']); ?></td>							
		<td class="tar"><?php echo number_format($row['point']); ?></td>
	</tr>
	<?php 
	}
	if($i==0)
		echo '<tbody><tr><td colspan="9" class="empty_table">자료가 없습니다.</td></tr>';
	?>
	</tbody>
	</table>
</div>
<div class="local_frm02">
	<?php echo $btn_frmline; ?>
</div>

<?php
echo get_paging($config['write_pages'], $page, $total_page, $_SERVER['SCRIPT_NAME'].'?'.$q1.'&page=');
?>




<script>
$(function(){
	// 날짜 검색 : TODAY MAX값으로 인식 (maxDate: "+0d")를 삭제하면 MAX값 해제
	$("#fr_date, #to_date").datepicker({ changeMonth: true, changeYear: true, dateFormat: "yy-mm-dd", showButtonPanel: true, yearRange: "c-99:c+99", maxDate: "+0d" });
});
</script>

<?php
include_once("./admin_tail.sub.php");
?>