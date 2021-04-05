<?php
if(!defined('_TUBEWEB_')) exit;

$pg_title = "도매 예치금내역";
include_once("./admin_head.sub.php");


if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $fr_date)) $fr_date = '';
if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $to_date)) $to_date = '';

$query_string = "code=$code$qstr";
$q1 = $query_string;
$q2 = $query_string."&page=$page";

$sql_common = " from shop_cash_history a, shop_member b ";
$sql_search = " where a.id = b.id and a.gubun = '가맹점' and b.id = '".get_session('ss_mb_id')."' ";
$sql_order  = " order by a.ch_id desc ";

if($sfl) {
    $sql_search .= " and a.to_id = '$sfl' ";
}

// 기간검색
if($fr_date && $to_date)
    $sql_search .= " and a.action_date between '$fr_date 00:00:00' and '$to_date 23:59:59' ";
else if($fr_date && !$to_date)
	$sql_search .= " and a.action_date between '$fr_date 00:00:00' and '$fr_date 23:59:59' ";
else if(!$fr_date && $to_date)
	$sql_search .= " and a.action_date between '$to_date 00:00:00' and '$to_date 23:59:59' ";

// 테이블의 전체 레코드수만 얻음
$sql = " select count(*) as cnt $sql_common $sql_search ";


$row = sql_fetch($sql);
$total_count = $row['cnt'];

// 테이블의 전체 레코드수만 얻음
$sql = " select sum(cash_now) as cash_minus $sql_common $sql_search and plus_minus = '-' ";
$row = sql_fetch($sql);
$total_minus = $row['cash_minus'];

// 테이블의 전체 레코드수만 얻음
$sql = " select sum(cash_now) as cash_plus $sql_common $sql_search and plus_minus = '+' ";
$row = sql_fetch($sql);
$total_plus = $row['cash_plus'];

$total_remain = $total_plus + $total_minus;


$rows = 30;
$total_page = ceil($total_count / $rows); // 전체 페이지 계산
if($page == "") { $page = 1; } // 페이지가 없으면 첫 페이지 (1 페이지)
$from_record = ($page - 1) * $rows; // 시작 열을 구함
$num = $total_count - (($page-1)*$rows);

$sql = " select a.*, b.name
			$sql_common
			$sql_search
			$sql_order
			limit $from_record, $rows ";
$result = sql_query($sql);

include_once(TB_PLUGIN_PATH.'/jquery-ui/datepicker.php');

$btn_frmline = <<<EOF
<a href="./seller/seller_pay_history_excel.php?$q1" class="btn_lsmall bx-white"><i class="fa fa-file-excel-o"></i> 엑셀저장</a>
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
	<!--tr>
		<th scope="row">공급사</th>
		<td><?php 
			$sql = " select company_name,mb_id from shop_seller";
			$result2 = sql_query($sql);
		
		?>
			<select name="sfl">

				<?php echo option_selected('', $sfl, '전체'); ?>
			<?php
				for($i=0; $row2=sql_fetch_array($result2); $i++) {
			?>				
				<?php echo option_selected($row2['mb_id'], $sfl, $row2['company_name']); ?>

			<?php } ?>
			</select>
		</td>
	</tr-->
	<tr>
		<th scope="row">기간검색</th>
		<td>
			<?php echo get_search_date("fr_date", "to_date", $fr_date, $to_date); ?>
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

<form name="forderlist" id="forderlist" method="post" action="./seller/seller_pay_delete.php" onsubmit="return forderlist_submit(this);">
<input type="hidden" name="q1" value="<?php echo $q1; ?>">
<input type="hidden" name="page" value="<?php echo $page; ?>">

<div class="local_ov01 local_ov mart30">
    <a href="/adm/shop_admin/money_list_branch.php" class="ov_listall">전체목록</a>    
	&nbsp;<span class="btn_ov01"><span class="ov_txt">전체 </span><span class="ov_num"> <?php echo number_format($total_count); ?> 건 </span></span>
    &nbsp;<span class="btn_ov01"><span class="ov_txt">증가액 합계 </span><span class="ov_num"> <?php echo number_format($total_plus); ?> 원 </span></span>
    &nbsp;<span class="btn_ov01"><span class="ov_txt">소진액 합계 </span><span class="ov_num"> <?php echo number_format($total_minus); ?> 원 </span></span>
    &nbsp;<span class="btn_ov01"><span class="ov_txt"><?php echo get_session('ss_mb_id'); ?> 님 예치금 잔액 </span><span class="ov_num"> <?php echo number_format($total_remain); ?> 원</span></span>
</div>

<!--div class="local_ov mart30">
	전체 : <b class="fc_red"><?php echo number_format($total_count); ?></b> 건 조회
</div-->

<div class="tbl_head01">
	<table>
	<colgroup>		
		<col class="w50">
		<col class="w180">
		<col class="w120">
		<col class="w60">
		<col>
		<col class="w90">
		<col class="w90">
	</colgroup>
	<thead>
	<tr>		
		<th scope="col">번호</th>
		<th scope="col">일시</th>
		<th scope="col">본사</th>
		<th scope="col">아이디</th>
		<th scope="col">예치금내용</th>
		<th scope="col">예치금</th>
		<th scope="col">예치금잔액</th>
	</tr>
	</thead>
	<tbody>
	<?php
	for($i=0; $row=sql_fetch_array($result); $i++) {
		$order_idx = explode(',', $row['order_idx']);

		$bg = 'list'.($i%2);
	?>
	<tr class="<?php echo $bg; ?>">
		
		<td><?php echo $num--; ?></td>
		<td><?php echo $row['action_date']; ?></td>
		<td class="tal"><?php echo $row['company_name']; ?></td>
		<td class="tal"><?php echo $row['id']; ?></td>
		<td class="tal"><?php echo $row['action']; ?></td>
		<td class="tar"><?php echo number_format($row['cash_now']); ?></td>
		<td class="tar"><?php echo number_format($row['cash_remain']); ?></td>

	</tr>
	<?php
	}
	if($i==0)
		echo '<tr><td colspan="15" class="empty_table">자료가 없습니다.</td></tr>';
	?>
	</tbody>
	</table>
</div>

</form>



<?php
include_once("./admin_tail.sub.php");
?>