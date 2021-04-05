<?php
if(!defined('_TUBEWEB_')) exit;

if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $fr_date)) $fr_date = '';
if(!preg_match("/^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/", $to_date)) $to_date = '';

$query_string = "code=$code$qstr";
$q1 = $query_string;
$q2 = $query_string."&page=$page";

$sql_common = " from shop_cash_charge a, shop_partner b ";
$sql_search = " where a.id = b.mb_id and a.gubun = '가맹점' ";
$sql_order  = " order by a.ch_id desc ";

if($sfl) {
    $sql_search .= " and a.id = '$sfl' ";
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


$sql = " select * $sql_common $sql_search";
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
		<th scope="row">가맹점</th>
		<td>
		<?php 
			$sql = " select company_name,mb_id from shop_partner";
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
	</tr>
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

<h2> 가맹점 예치금 충전 신청내역</h2>
<div class="tbl_head01">
	<table>
	<colgroup>		
		<col class="w50">
		<col class="w80">
		<col>
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
		<th scope="col">충전금액</th>
		<th scope="col">신청일시</th>
		<th scope="col">세금계산서처리여부</th>
		<th scope="col">입금처리여부</th>
	</tr>
	</thead>
	<tbody>
	<?php
	for($i=0; $row=sql_fetch_array($result); $i++) {
		$ch_id = explode(',', $row['ch_id']);

		$bg = 'list'.($i%2);
	?>
	<tr class="<?php echo $bg; ?>">
		
		<td><?php echo $num--; ?></td>
		<td class="tal"><?php echo $row['id']; ?></td>
		<td class="tal"><?php echo $row['action']; ?></td>
		<td class="tar"><?php echo number_format($row['charge_money']); ?> 원</td>
		<td><?php echo $row['input_date']; ?></td>
		<td><?php 
			if($row['tax_result'] == "Y"){
				echo "<p class='btn_small red marl10'>처리완료</p>";
			}else{
				echo "<a href='partner/pt_cashcharge_update.php?mode=tax&ch_id={$row['ch_id']}'><p class='btn_small gray marl10'>미처리</p></a>";
			}
			?></td>
		
		<td><?php 
			if($row['result'] == "Y"){
				echo "<p class='btn_small red marl10'>처리완료</p>";
			}else{
				echo "<a href='partner/pt_cashcharge_update.php?cash={$row['charge_money']}&action={$row['action']}&id={$row['id']}&plusminus=plus&mode=charge&ch_id={$row['ch_id']}'><p class='btn_small gray marl10'>미처리</p></a>";
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


