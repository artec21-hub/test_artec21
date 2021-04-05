<?php
	include_once "config.php"; 
	header('Content-Type: text/html; charset=utf-8');
	date_default_timezone_set('Asia/Seoul');
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>S'Pay 취소 페이지</title>
<style type="text/css">
	body      			    {font-family:굴림; font-size:10pt; color:#000000; text-decoration:none;}
	font      			    {font-family:굴림; font-size:10pt; color:#000000; text-decoration:none;}
	td        			    {font-family:굴림; font-size:10pt; color:#000000; text-decoration:none; padding:1px; border:1px solid #e1e1e1;}
	table 				    {width:100%; border-collapse:collapse;}
	.left 				    {padding-left:10px; width:20%;}
	.right 				    {width:80%;}
	.right span 		    {font-size:9pt; color:red;padding: 0px 2px;}
	input[type='text'] 	    {width:302px;margin:5px 5px;}
	select					{width:310px;margin:5px 5px;}
	form                    {margin:0;}
	.header					{font-style:italic; font-weight:bold; padding-left:20px;}
	.wrapper 				{width:470px;border:1px solid #e1e1e1;}
	.tab 					{background-color:#f1f1f1;padding:10px 20px;border:1px solid #e1e1e1; font-weight: bold; font-size:1.1em;}
	.content 		    	{padding:3px 3px; border:1px solid #e1e1e1;}
  	.cnclBtn				{padding:5px 20px; border-radius:20px; border:1px solid #ccc; width:70%; margin:5px 0px; transition:0.3s; cursor:pointer;}
	.cnclBtn:hover			{background-color:#aaa;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var curr_date = new Date();
	var year = curr_date.getFullYear().toString();
	var month = ("0" + (curr_date.getMonth() + 1)).slice(-2).toString();
	var day = ("0" + (curr_date.getDate())).slice(-2).toString();
	var hours = ("0" + curr_date.getHours()).slice(-2).toString();
	var mins = ("0" + curr_date.getMinutes()).slice(-2).toString();
	var secs = ("0" + curr_date.getSeconds()).slice(-2).toString();
	
	$('#STPG_cnclForm [name="trdDt"]').val(year + month + day);	//취소요청일자 세팅
	$('#STPG_cnclForm [name="trdTm"]').val(hours + mins + secs);//취소요청시간 세팅
	$('#STPG_cnclForm [name="mchtTrdNo"]').val("CANCEL" + year + month + day + hours + mins + secs);//취소주문번호 세팅
	
	
	//셀렉트박스 동작
	$('#method').change(function(){
		if("VA1" == $(this).val() ){ //가상계좌 채번취소시
			$('.t1').each(function(index, item){$(item).css("display", "none");});
			$('.t2').each(function(index, item){$(item).css("display", "");});
			$('.t3').each(function(index, item){$(item).css("display", "none");});
			$('#STPG_cnclForm [name="bizType"]').val("A2");
	   	}else if("VA2" == $(this).val() ){ //가상계좌 환불시
			$('.t1').each(function(index, item){$(item).css("display", "");});
			$('.t2').each(function(index, item){$(item).css("display", "none");});
			$('.t3').each(function(index, item){$(item).css("display", "");});
			$('#STPG_cnclForm [name="bizType"]').val("C0");
		}
		else{ //공통 취소시
	   		$('.t1').each(function(index, item){$(item).css("display", "");});
			$('.t2').each(function(index, item){$(item).css("display", "none");});
			$('.t3').each(function(index, item){$(item).css("display", "none");});
			$('#STPG_cnclForm [name="bizType"]').val("C0");
	   	}
	});
});

/** 취소 버튼 동작 */
function cancel(){
	$('#STPG_cnclForm').attr("action", "cancel_showResult.php");
	$('#STPG_cnclForm').attr("method", "post");
	$('#STPG_cnclForm').attr("target", "_self");
	$('#STPG_cnclForm').submit();
}
</script>
</head>
<body>
<a href="pay_form.php">[결제 샘플로]</a>
<a href="cancel_form.php">[취소 샘플로]</a>
<h2 class="header">Cancel Smaple</h2>
<div class="wrapper" >
	<form id="STPG_cnclForm" name="STPG_cnclForm" >
		
		<!-- 취소 요청 파라미터 (헤더) -->
		<div class="tab">취소 정보</div>
		<table>
			<tr>
				<td class="left">결제 수단</td>
				<td class="right">
					<select id="method" name="method">
						<option value="CA" selected="selected">신용카드</option>
						<option value="RA">계좌이체</option>
						<option value="VA1">가상계좌(채번 취소)</option>
						<option value="VA2">가상계좌(환불)</option>
						<option value="MP">휴대폰결제</option>
						<option value="TC">틴캐시</option>
						<option value="HM">해피머니</option>
						<option value="CG">문화상품권</option>
						<option value="SG">스마트문상</option>
						<option value="BG">도서상품권</option>
						<option value="TM">티머니</option>
						<option value="CP">KT클립포인트</option>
					</select><span>* 필수 *</span>
				</td>
			</tr>
			<tr class="t1">
				<td class="left">원거래번호</td>
				<td class="right"><input type="text" name="orgTrdNo" value="STBK_0123456789"/><span>* 필수 *</span></td>
			</tr>
			<tr class="t1">
				<td class="left">취소거래금액</td>
				<td class="right"><input type="text" name="cnclAmt" value="1000" maxlength="9"/><span>* 필수 *</span></td>
			</tr>
			<tr class="t2" style="display:none;">
				<td class="left">가상계좌번호</td>
				<td class="right"><input type="text" name="vAcntNo" value="" /><span>* 필수 *</span></td>
			</tr>
			<tr class="t3" style="display:none;">
				<td class="left">환불은행코드</td>
				<td class="right"><input type="text" name="refundBankCd" value="000" maxlength="3"/><span>* 필수 *</span></td>
			</tr>
			<tr class="t3" style="display:none;">
				<td class="left">환불계좌번호</td>
				<td class="right"><input type="text" name="refundAcntNo" value="1234567890" maxlength="16"/><span>* 필수 *</span></td>
			</tr>
			<tr class="t3" style="display:none;">
				<td class="left">환불계좌 예금주명</td>
				<td class="right"><input type="text" name="refundDpstrNm" value="홍길동" maxlength="15"/><span>* 필수 *</span></td>
			</tr>
			<tr>
				<td colspan="2" class="right" style="text-align: center;"><input class="cnclBtn" type="button" value="결제 취소 하기" onclick="cancel()"/></td>
			</tr>
		</table>
		<input type="hidden" name="mchtId" value="<?php echo PG_MID ?>" />	<!-- 상점아이디 -->
		<input type="hidden" name="ver" value="0A14" />						<!-- 버전(0A**, **:메뉴얼버전) -->
		<input type="hidden" name="bizType" value="C0" />					<!-- 업무구분(C0:공통취소, A2:가상계좌채번취소) -->
		<input type="hidden" name="encCd" value="23" />						<!-- 암호화구분 -->
		<input type="hidden" name="mchtTrdNo" value="" />					<!-- 상점주문번호(원거래 주문번호가 아닌 취소요청에 대한 상점고유 주문번호) -->
		<input type="hidden" name="trdDt" value="" />						<!-- 취소요청일자 -->
		<input type="hidden" name="trdTm" value="" />						<!-- 취소요청시간 -->
		<input type="hidden" name="mobileYn" value="N" />					<!-- 모바일여부(Y, N) -->
		<input type="hidden" name="osType" value="W" />						<!-- OS구분(A:Android, I:IOS, W:Windows, M:Mac, E:others)-->
		
		<!-- 취소 요청 파라미터 (바디) -->
		<input type="hidden" name="crcCd" value="KRW" />					<!-- 통화구분 -->
		<input type="hidden" name="cnclOrd" value="001" />					<!-- 부분취소회차 -->
		<input type="hidden" name="cnclRsn" value="상품이 마음에 들지 않습니다." />	<!-- 취소사유 -->
		<input type="hidden" name="taxTypeCd" value="" />					<!-- 면세여부(Y:면세, N:과세, G:복합과세) -->
		<input type="hidden" name="taxAmt" value="" />						<!-- 과세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="vatAmt" value="" />						<!-- 부가세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="taxFreeAmt" value="" />					<!-- 비과세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="svcAmt" value="" />						<!-- 봉사료 -->
	</form>
</div>
</body>
</html>