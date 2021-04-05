<?php
if(!defined('_TUBEWEB_')) exit;

$pg_title = "도매 예치금충전";
include_once("./admin_head.sub.php");

if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $fr_date)) $fr_date = '';
if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $to_date)) $to_date = '';

$query_string = "code=$code$qstr";
$q1 = $query_string;
$q2 = $query_string."&page=$page";

$sql_common = " from shop_cash_charge a, shop_member b ";
$sql_search = " where a.to_id = b.id and a.gubun = '가맹점' and b.id = 'admin' and a.id = '{$member['id']}'";
$sql_order  = " order by a.ch_id desc ";

if($sfl) {
    $sql_search .= " and a.to_id = '$sfl' ";
}

if($sf2) {
    $sql_search .= " and a.result = '$sf2' ";
}

if($sf3) {
    $sql_search .= " and a.tax_result = '$sf3' ";
}

// 기간검색
if($fr_date && $to_date)
    $sql_search .= " and a.input_date between '$fr_date 00:00:00' and '$to_date 23:59:59' ";
else if($fr_date && !$to_date)
	$sql_search .= " and a.input_date between '$fr_date 00:00:00' and '$fr_date 23:59:59' ";
else if(!$fr_date && $to_date)
	$sql_search .= " and a.input_date between '$to_date 00:00:00' and '$to_date 23:59:59' ";


$sql = " select a.* $sql_common $sql_search";
$result = sql_query($sql);

// 테이블의 전체 레코드수만 얻음
$sql = " select count(*) as cnt $sql_common $sql_search ";
$row = sql_fetch($sql);
$total_count = $row['cnt'];

$rows = 30;
$total_page = ceil($total_count / $rows); // 전체 페이지 계산
if($page == "") { $page = 1; } // 페이지가 없으면 첫 페이지 (1 페이지)
$from_record = ($page - 1) * $rows; // 시작 열을 구함
$num = $total_count - (($page-1)*$rows);


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
		<th scope="row">입금처리여부</th>
		<td><select name="sf2">
				<?php echo option_selected('', $sf2, '전체'); ?>
				<?php echo option_selected('N', $sf2, '미처리'); ?>
				<?php echo option_selected('Y', $sf2, '처리완료'); ?>
			</select>
			
		</td>
	</tr>
		<tr>
		<th scope="row">세금계산서처리여부</th>
		<td><select name="sf3">
				<?php echo option_selected('', $sf3, '전체'); ?>
				<?php echo option_selected('N', $sf3, '미처리'); ?>
				<?php echo option_selected('Y', $sf3, '처리완료'); ?>
			</select>
			
		</td>
	</tr>
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

<h2> 예치금 충전 신청내역</h2>
<div class="tbl_head01">
	<table>
	<colgroup>		
		<col class="w50">
		<col class="w80">
		<col>
		<col class="w180">
		<col class="w180">
		<col class="w200">
		<col class="w90">
		<col class="w90">
	</colgroup>
	<thead>
	<tr>		
		<th scope="col">번호</th>
		<th scope="col">아이디</th>
		<th scope="col">예치금내용</th>
		<th scope="col">결제금액</th>
		<th scope="col">신청일시</th>
		<th scope="col">세금계산서처리여부</th>
		<th scope="col">입금처리완료여부</th>
	</tr>
	</thead>
	<tbody>
	<?php
	for($i=0; $row=sql_fetch_array($result); $i++) {
		$ch_idx = explode(',', $row['ch_idx']);

		$bg = 'list'.($i%2);
	?>
	<tr class="<?php echo $bg; ?>">
		
		<td><?php echo $num--; ?></td>
		<td><?php echo $row['id']; ?></td>
		<td class="tal"><?php echo $row['action']; ?></td>
		<td class="tar"><?php echo number_format($row['charge_money']); ?> 원</td>
		<td><?php echo $row['input_date']; ?></td>
		<td><?php 
			if($row['tax_result'] == "Y"){
				echo "<p class='red marl10'>처리완료</p>";
			}else{
				echo "<p class='btn_small gray marl10'>미처리</p>";
			}
			?></td>
		<td><?php 
			if($row['result'] == "Y"){
				echo "<p class='red marl10'>처리완료</p>";
			}else{
				echo "<p class='btn_small gray marl10'>미처리</p>";
			}
			?></td>

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
echo get_paging($config['write_pages'], $page, $total_page, $_SERVER['SCRIPT_NAME'].'?'.$q1.'&page=');
?>




<h2> 예치금 충전 신청</h2>
<form name="fplist" id="fplist" method="post" action="./partner_charge_update.php" onsubmit="return fplist_submit(this);" autocomplete="off">
<input type="hidden" name="id" value="<?php echo get_session('ss_mb_id'); ?>">
<input type="hidden" name="to_id" value="admin">
<input type="hidden" name="token" value="">
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w120">
		<col>
	</colgroup>
	<tbody>	
	
	<tr>
		<th scope="row"><label for="pp_content">예치금충전내용</label></th>
		<td><input type="text" name="action" id="pp_content" required class="required frm_input" size="60"></td>
	</tr>
	<tr>
		<th scope="row"><label for="pp_pay">예치금충전금액</label></th>
		<td><input type="text" name="charge_money" id="charge_money" required class="required frm_input" size="10"> 원</td>
	</tr>
	</tbody>
	</table>
</div>

<div class="btn_confirm">
	<input type="submit" value="예치금충전신청" class="btn_large red">
</div>
</form>
<div class="information">
	<h4>도움말</h4>
	<div class="content">
		<div class="desc02">
			<p>ㆍ예치금충전 신청을 한 후 입금해주시면 처리가 됩니다.</p>
			<p>ㆍ충전금액은 최소 100,000이상입니다.</p>
			<p class="fc_red">ㆍ관리자가 승인처리를 완료해야 예치금이 업데이트 됩니다.</p>
		</div>
	</div>
</div>

<script>
function fplist_submit(f)
{
    
	if(f.charge_money.value < 100000) {
		alert('최소 충전금액은 100,000이상입니다.');
		f.charge_money.focus();
		return false;
	}

    return true;
}
</script>

<?php
include_once("./admin_tail.sub.php");
?>