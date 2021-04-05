<?php
if(!defined("_TUBEWEB_")) exit; // 개별 페이지 접근 불가

// 전자결제를 사용할 때만 실행
if($default['de_iche_use'] || $default['de_vbank_use'] || $default['de_hp_use'] || $default['de_card_use'] || $default['de_easy_pay_use']) {

	include_once "config.php"; 
	header('Content-Type: text/html; charset=utf-8');
	date_default_timezone_set('Asia/Seoul');
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo PAYMENT_SERVER ?>/resources/js/SettlePG.js"></script>
<script type="text/javascript">
$(function(){
	var curr_date = new Date();
	var year = curr_date.getFullYear().toString();
	var month = ("0" + (curr_date.getMonth() + 1)).slice(-2).toString();
	var day = ("0" + (curr_date.getDate())).slice(-2).toString();
	var hours = ("0" + curr_date.getHours()).slice(-2).toString();
	var mins = ("0" + curr_date.getMinutes()).slice(-2).toString();
	var secs = ("0" + curr_date.getSeconds()).slice(-2).toString();
	
	$('#forderform [name="trdDt"]').val(year + month + day);	//요청일자 세팅
	$('#forderform [name="trdTm"]').val(hours + mins + secs);	//요청시간 세팅
	$('#forderform [name="mchtTrdNo"]').val("PAYMENT" + year + month + day + hours + mins + secs);//주문번호 세팅


});

/** 결제 버튼 동작 */
function pay(type){
	//결제 수단 설정
	$('#forderform [name="method"]').val(type);

	
	
	//용도 : SHA256 해쉬 처리 및 민감정보 AES256암호화
	$.ajax({
		type : "POST",
		url : "./settle/pay_encryptParams.php", 
		dataType : "json",
		data : $("#forderform").serialize(),
		success : function(rsp){
			//암호화 된 파라미터 세팅
			for(name in rsp.encParams) {
				$('#forderform [name='+name+']').val( rsp.encParams[name] );
			};
			
			//가맹점 -> 세틀뱅크로 결제 요청
			SETTLE_PG.pay({
				env : "<?php echo PAYMENT_SERVER ?>",	//결제서버 URL
				mchtId : $('#forderform [name="mchtId"]').val(),
				method : $('#forderform [name="method"]').val(),
				trdDt : $('#forderform [name="trdDt"]').val(),
				trdTm : $('#forderform [name="trdTm"]').val(),
				mchtTrdNo : $('#forderform [name="mchtTrdNo"]').val(),
				mchtName : $('#forderform [name="mchtName"]').val(),
				mchtEName : $('#forderform [name="mchtEName"]').val(),
				pmtPrdtNm : $('#forderform [name="pmtPrdtNm"]').val(),
				trdAmt : $('#forderform [name="trdAmt"]').val(),
				mchtCustNm : $('#forderform [name="mchtCustNm"]').val(),
				custAcntSumry : $('#forderform [name="custAcntSumry"]').val(),
				expireDt : $('#forderform [name="expireDt"]').val(),
				notiUrl : $('#forderform [name="notiUrl"]').val(),
				nextUrl : $('#forderform [name="nextUrl"]').val(),
				cancUrl : $('#forderform [name="cancUrl"]').val(),
				mchtParam : $('#forderform [name="mchtParam"]').val(),
				cphoneNo : $('#forderform [name="cphoneNo"]').val(),
				email : $('#forderform [name="email"]').val(),
				telecomCd : $('#forderform [name="telecomCd"]').val(),
				prdtTerm : $('#forderform [name="prdtTerm"]').val(),
				mchtCustId : $('#forderform [name="mchtCustId"]').val(),
				taxTypeCd : $('#forderform [name="taxTypeCd"]').val(),
				taxAmt : $('#forderform [name="taxAmt"]').val(),
				vatAmt : $('#forderform [name="vatAmt"]').val(),
				taxFreeAmt : $('#forderform [name="taxFreeAmt"]').val(),
				svcAmt : $('#forderform [name="svcAmt"]').val(),
				cardType : $('#forderform [name="cardType"]').val(),
				chainUserId : $('#forderform [name="chainUserId"]').val(),
				cardGb : $('#forderform [name="cardGb"]').val(),
				clipCustNm : $('#forderform [name="clipCustNm"]').val(),
				clipCustCi : $('#forderform [name="clipCustCi"]').val(),
				clipCustPhoneNo : $('#forderform [name="clipCustPhoneNo"]').val(),
				certNotiUrl : $('#forderform [name="certNotiUrl"]').val(),
				skipCd : $('#forderform [name="skipCd"]').val(),
				multiPay : $('#forderform [name="multiPay"]').val(),
				autoPayType : $('#forderform [name="autoPayType"]').val(),
				linkMethod : $('#forderform [name="linkMethod"]').val(),
				appScheme : $('#forderform [name="appScheme"]').val(),
				custIp : $('#forderform [name="custIp"]').val(),
				pktHash : rsp.hashCipher,	//SHA256 처리된 해쉬 값 세팅
				
				ui :{
					type:"popup",	//popup, iframe, self, blank
					width: "430",	//popup창의 너비
					height: "660"	//popup창의 높이
				}
			}, function(rsp){	
				//iframe인 경우 전달된 결제 완료 후 응답 파라미터 처리
				console.log(rsp);
			});
		},
		error : function(){
		    alert("에러 발생");
		},
	});
}


/** pay_receiveResult.php로부터 응답 값을 받아와서 main폼에 세팅 */
function rstparamSet(rslt){
	$('#forderform [name="respMchtId"]').val(rslt.mchtId);
	$('#forderform [name="respOutStatCd"]').val(rslt.outStatCd);
	$('#forderform [name="respOutRsltCd"]').val(rslt.outRsltCd);
	$('#forderform [name="respOutRsltMsg"]').val(rslt.outRsltMsg);
	$('#forderform [name="respMethod"]').val(rslt.method);
	$('#forderform [name="respMchtTrdNo"]').val(rslt.mchtTrdNo);
	$('#forderform [name="respMchtCustId"]').val(rslt.mchtCustId);
	$('#forderform [name="respTrdNo"]').val(rslt.trdNo);
	$('#forderform [name="respTrdAmt"]').val(rslt.trdAmt);
	$('#forderform [name="respMchtParam"]').val(rslt.mchtParam);
	$('#forderform [name="respAuthDt"]').val(rslt.authDt);
	$('#forderform [name="respAuthNo"]').val(rslt.authNo);
	$('#forderform [name="respIntMon"]').val(rslt.intMon);
	$('#forderform [name="respFnNm"]').val(rslt.fnNm);
	$('#forderform [name="respFnCd"]').val(rslt.fnCd);
	$('#forderform [name="respPointTrdNo"]').val(rslt.pointTrdNo);
	$('#forderform [name="respPointTrdAmt"]').val(rslt.pointTrdAmt);
	$('#forderform [name="respRtNowDiscountAmt"]').val(rslt.RtNowDiscountAmt);
	$('#forderform [name="respAlacDiscountAmt"]').val(rslt.AlacDiscountAmt);
	$('#forderform [name="respCardTrdAmt"]').val(rslt.cardTrdAmt);
	$('#forderform [name="respVAcntNo"]').val(rslt.vAcntNo);
	$('#forderform [name="respExpireDt"]').val(rslt.expireDt);
	$('#forderform [name="respCphoneNo"]').val(rslt.cphoneNo);
	$('#forderform [name="respBillkey"]').val(rslt.billkey);
}
/** main폼에 세팅된 응답 값 출력 */
function goResult(){
	$('#forderform').attr("action", "/shop/orderformresult.php");
	$('#forderform').attr("method", "post");
	$('#forderform').attr("target", "");
	$('#forderform').submit();
}
</script>
<?php } ?>