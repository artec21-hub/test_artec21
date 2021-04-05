<?php
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
	
	$('#STPG_payForm [name="trdDt"]').val(year + month + day);	//요청일자 세팅
	$('#STPG_payForm [name="trdTm"]').val(hours + mins + secs);	//요청시간 세팅
	$('#STPG_payForm [name="mchtTrdNo"]').val("PAYMENT" + year + month + day + hours + mins + secs);//주문번호 세팅

	$('#STPG_payForm2 [name="trdDt"]').val(year + month + day);	//요청일자 세팅
	$('#STPG_payForm2 [name="trdTm"]').val(hours + mins + secs);//요청시간 세팅
	$('#STPG_payForm2 [name="mchtTrdNo"]').val("AUTOPAY" + year + month + day + hours + mins + secs);//주문번호 세팅
});

/** 결제 버튼 동작 */
function pay(type){
	//결제 수단 설정
	$('#STPG_payForm [name="method"]').val(type);

	//휴대폰 자동결제인 경우
	if( type === 'mobileAuto'){
		$('#STPG_payForm [name="method"]').val('mobile');
		$('#STPG_payForm [name="autoPayType"]').val('M'); //M으로 설정
	}

	
	//용도 : SHA256 해쉬 처리 및 민감정보 AES256암호화
	$.ajax({
		type : "POST",
		url : "pay_encryptParams.php", 
		dataType : "json",
		data : $("#STPG_payForm").serialize(),
		success : function(rsp){
			//암호화 된 파라미터 세팅
			for(name in rsp.encParams) {
				$('#STPG_payForm [name='+name+']').val( rsp.encParams[name] );
			};
			
			//가맹점 -> 세틀뱅크로 결제 요청
			SETTLE_PG.pay({
				env : "<?php echo PAYMENT_SERVER ?>",	//결제서버 URL
				mchtId : $('#STPG_payForm [name="mchtId"]').val(),
				method : $('#STPG_payForm [name="method"]').val(),
				trdDt : $('#STPG_payForm [name="trdDt"]').val(),
				trdTm : $('#STPG_payForm [name="trdTm"]').val(),
				mchtTrdNo : $('#STPG_payForm [name="mchtTrdNo"]').val(),
				mchtName : $('#STPG_payForm [name="mchtName"]').val(),
				mchtEName : $('#STPG_payForm [name="mchtEName"]').val(),
				pmtPrdtNm : $('#STPG_payForm [name="pmtPrdtNm"]').val(),
				trdAmt : $('#STPG_payForm [name="trdAmt"]').val(),
				mchtCustNm : $('#STPG_payForm [name="mchtCustNm"]').val(),
				custAcntSumry : $('#STPG_payForm [name="custAcntSumry"]').val(),
				expireDt : $('#STPG_payForm [name="expireDt"]').val(),
				notiUrl : $('#STPG_payForm [name="notiUrl"]').val(),
				nextUrl : $('#STPG_payForm [name="nextUrl"]').val(),
				cancUrl : $('#STPG_payForm [name="cancUrl"]').val(),
				mchtParam : $('#STPG_payForm [name="mchtParam"]').val(),
				cphoneNo : $('#STPG_payForm [name="cphoneNo"]').val(),
				email : $('#STPG_payForm [name="email"]').val(),
				telecomCd : $('#STPG_payForm [name="telecomCd"]').val(),
				prdtTerm : $('#STPG_payForm [name="prdtTerm"]').val(),
				mchtCustId : $('#STPG_payForm [name="mchtCustId"]').val(),
				taxTypeCd : $('#STPG_payForm [name="taxTypeCd"]').val(),
				taxAmt : $('#STPG_payForm [name="taxAmt"]').val(),
				vatAmt : $('#STPG_payForm [name="vatAmt"]').val(),
				taxFreeAmt : $('#STPG_payForm [name="taxFreeAmt"]').val(),
				svcAmt : $('#STPG_payForm [name="svcAmt"]').val(),
				cardType : $('#STPG_payForm [name="cardType"]').val(),
				chainUserId : $('#STPG_payForm [name="chainUserId"]').val(),
				cardGb : $('#STPG_payForm [name="cardGb"]').val(),
				clipCustNm : $('#STPG_payForm [name="clipCustNm"]').val(),
				clipCustCi : $('#STPG_payForm [name="clipCustCi"]').val(),
				clipCustPhoneNo : $('#STPG_payForm [name="clipCustPhoneNo"]').val(),
				certNotiUrl : $('#STPG_payForm [name="certNotiUrl"]').val(),
				skipCd : $('#STPG_payForm [name="skipCd"]').val(),
				multiPay : $('#STPG_payForm [name="multiPay"]').val(),
				autoPayType : $('#STPG_payForm [name="autoPayType"]').val(),
				linkMethod : $('#STPG_payForm [name="linkMethod"]').val(),
				appScheme : $('#STPG_payForm [name="appScheme"]').val(),
				custIp : $('#STPG_payForm [name="custIp"]').val(),
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

/** 휴대폰 자동연장 결제(2회차) 버튼 동작 */
function autoPay(){
		$('#STPG_payForm2').attr("action", "pay_autoPayResult.php");
		$('#STPG_payForm2').attr("method", "post");
		$('#STPG_payForm2').attr("target", "_self");
		$('#STPG_payForm2').submit();
}

/** pay_receiveResult.php로부터 응답 값을 받아와서 main폼에 세팅 */
function rstparamSet(rslt){
	$('#STPG_payForm [name="respMchtId"]').val(rslt.mchtId);
	$('#STPG_payForm [name="respOutStatCd"]').val(rslt.outStatCd);
	$('#STPG_payForm [name="respOutRsltCd"]').val(rslt.outRsltCd);
	$('#STPG_payForm [name="respOutRsltMsg"]').val(rslt.outRsltMsg);
	$('#STPG_payForm [name="respMethod"]').val(rslt.method);
	$('#STPG_payForm [name="respMchtTrdNo"]').val(rslt.mchtTrdNo);
	$('#STPG_payForm [name="respMchtCustId"]').val(rslt.mchtCustId);
	$('#STPG_payForm [name="respTrdNo"]').val(rslt.trdNo);
	$('#STPG_payForm [name="respTrdAmt"]').val(rslt.trdAmt);
	$('#STPG_payForm [name="respMchtParam"]').val(rslt.mchtParam);
	$('#STPG_payForm [name="respAuthDt"]').val(rslt.authDt);
	$('#STPG_payForm [name="respAuthNo"]').val(rslt.authNo);
	$('#STPG_payForm [name="respIntMon"]').val(rslt.intMon);
	$('#STPG_payForm [name="respFnNm"]').val(rslt.fnNm);
	$('#STPG_payForm [name="respFnCd"]').val(rslt.fnCd);
	$('#STPG_payForm [name="respPointTrdNo"]').val(rslt.pointTrdNo);
	$('#STPG_payForm [name="respPointTrdAmt"]').val(rslt.pointTrdAmt);
	$('#STPG_payForm [name="respRtNowDiscountAmt"]').val(rslt.RtNowDiscountAmt);
	$('#STPG_payForm [name="respAlacDiscountAmt"]').val(rslt.AlacDiscountAmt);
	$('#STPG_payForm [name="respCardTrdAmt"]').val(rslt.cardTrdAmt);
	$('#STPG_payForm [name="respVAcntNo"]').val(rslt.vAcntNo);
	$('#STPG_payForm [name="respExpireDt"]').val(rslt.expireDt);
	$('#STPG_payForm [name="respCphoneNo"]').val(rslt.cphoneNo);
	$('#STPG_payForm [name="respBillkey"]').val(rslt.billkey);
}
/** main폼에 세팅된 응답 값 출력 */
function goResult(){
	$('#STPG_payForm').attr("action", "pay_showResult.php");
	$('#STPG_payForm').attr("method", "post");
	$('#STPG_payForm').attr("target", "");
	$('#STPG_payForm').submit();
}
</script>
</head>
<body>
<a href="pay_form.php">[결제 샘플로]</a>
<a href="cancel_form.php">[취소 샘플로]</a>
<h2 class="header">Payment Sample</h2>
<div class="wrapper">  
	<form id="STPG_payForm" name="STPG_payForm" >
		<div class="tab">결제 정보</div>
		<!-- 승인 요청 파라미터(필수) -->
		<table>
			<tr>
				<td class="left">상점아이디</td>
				<td class="right"><input type="text" name="mchtId" value="<?php echo PG_MID ?>"/><span>* 필수 *</span></td>
			</tr>
			<tr>
				<td class="left">거래금액</td>
				<td class="right"><input type="text" name="plainTrdAmt" value="1000" maxlength="13"/><span>* 필수 *</span></td>
			</tr>
		</table>
		<input type="hidden" name="method" value="" />	<!-- 결제수단 -->
		<input type="hidden" name="trdDt" value="" />	<!-- 요청일자(yyyyMMdd) -->
		<input type="hidden" name="trdTm" value="" />	<!-- 요청시간(HHmmss)-->
		<input type="hidden" name="mchtTrdNo" value="" />	<!-- 상점주문번호 -->
		<input type="hidden" name="mchtName" value="세틀뱅크" />	<!-- 상점한글명 -->
		<input type="hidden" name="mchtEName" value="Settlebank" />	<!-- 상점영문명 -->
		<input type="hidden" name="pmtPrdtNm" value="테스트상품" />	<!-- 상품명 -->
		<input type="hidden" name="notiUrl" value="http://localhost/receiveNoti.php" />	<!-- 결과처리 URL -->
		<input type="hidden" name="nextUrl" value="http://localhost/pay_receiveResult.php" />	<!-- 결과화면 URL -->
		<input type="hidden" name="cancUrl" value="http://localhost/pay_receiveResult.php" />	<!-- 결제취소 URL -->

		<!-- 승인 요청 파라미터(옵션) -->
		<input type="hidden" name="plainMchtCustNm" value="홍길동" />			 <!-- 고객명 -->
		<input type="hidden" name="custAcntSumry" value="세틀뱅크" />			 <!-- 통장인자내용 : 계좌이체, 가상계좌 -->
		<input type="hidden" name="expireDt" value="20211231235959" />			<!-- 입금만료일시(필수) : 가상계좌 -->
		<input type="hidden" name="mchtParam" value="상점 예약 필드" />			 <!-- 상점예약필드 -->
		<input type="hidden" name="plainCphoneNo" value="" />					<!-- 핸드폰번호 : 휴대폰결제 -->
		<input type="hidden" name="plainEmail" value="test@test.test" />		<!-- 이메일주소 : 신용카드, 계좌이체, 가상계좌, 휴대폰결제, 클립포인트 -->
		<input type="hidden" name="telecomCd" value="" />						<!-- 통신사코드 : 휴대폰결제 -->
		<input type="hidden" name="prdtTerm" value="20211231235959" />			<!-- 상품제공기간 : 신용카드, 클립포인트 -->
		<input type="hidden" name="plainMchtCustId" value="HongGilDong" />		<!-- 상점고객아이디(문상만 필수) -->
		<input type="hidden" name="taxTypeCd" value="" />						<!-- 면세여부(Y:면세, N:과세, G:복합과세) -->
		<input type="hidden" name="plainTaxAmt" value="" />						<!-- 과세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="plainVatAmt" value="" />						<!-- 부가세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="plainTaxFreeAmt" value="" />					<!-- 비과세금액(복합과세인 경우 필수) -->
		<input type="hidden" name="plainSvcAmt" value="" />						<!-- 봉사료 : 신용카드 -->
		<input type="hidden" name="cardType" value="" />						<!-- 카드결제타입 : 신용카드 -->
		<input type="hidden" name="chainUserId" value="" />						<!-- 현대카드Payshot ID : 신용카드 -->
		<input type="hidden" name="cardGb" value="" />							<!-- 특정카드사코드 : 신용카드 -->
		<input type="hidden" name="plainClipCustNm" value="" />					<!-- 클립포인트고객명 : 클립포인트 -->
		<input type="hidden" name="plainClipCustCi" value="" />					<!-- 클립포인트CI : 클립포인트 -->
		<input type="hidden" name="plainClipCustPhoneNo" value="" />			<!-- 클립포인트고객핸드폰번호 : 클립포인트 -->
		<input type="hidden" name="certNotiUrl" value="" />						<!-- 인증결과URL : 클립포인트 -->
		<input type="hidden" name="skipCd" value="" />							<!-- 스킵여부 : 클립포인트 -->
		<input type="hidden" name="multiPay" value="" />						<!-- 포인트복합결제 : 클립포인트 -->
		<input type="hidden" name="autoPayType" value="" />						<!-- 자동결제 타입 : 휴대폰결제(M:월자동 1회차) -->
		<input type="hidden" name="linkMethod" value="" />						<!-- 연동방식 : 휴대폰결제(STD, HBRD) -->
		<input type="hidden" name="appScheme" value="" />						<!-- 앱스키마 : 신용카드 -->
		<input type="hidden" name="custIp" value="" />							<!-- 고객IP주소 -->

		
		<!-- 응답 파라미터 -->
		<input type="hidden" name="respMchtId" />			<!-- 상점아이디 -->
		<input type="hidden" name="respOutStatCd" />		<!-- 거래상태 -->
		<input type="hidden" name="respOutRsltCd" />		<!-- 거절코드 -->
		<input type="hidden" name="respOutRsltMsg" />		<!-- 결과메세지 -->
		<input type="hidden" name="respMethod" />			<!-- 결제수단 -->
		<input type="hidden" name="respMchtTrdNo" />		<!-- 상점주문번호 -->
		<input type="hidden" name="respMchtCustId" />		<!-- 상점고객아이디 -->
		<input type="hidden" name="respTrdNo" />			<!-- 세틀뱅크 거래번호 -->
		<input type="hidden" name="respTrdAmt" />			<!-- 거래금액 -->
		<input type="hidden" name="respMchtParam" />		<!-- 상점예약필드 -->
		<input type="hidden" name="respAuthDt" />			<!-- 승인일시 -->
		<input type="hidden" name="respAuthNo" />			<!-- 승인번호 -->	
		<input type="hidden" name="respIntMon" />			<!-- 할부개월수 -->
		<input type="hidden" name="respFnNm" />				<!-- 카드사명 -->
		<input type="hidden" name="respFnCd" />				<!-- 카드사코드 -->
		<input type="hidden" name="respPointTrdNo" />		<!-- 포인트거래번호 -->
		<input type="hidden" name="respPointTrdAmt" />		<!-- 포인트거래금액 -->
		<input type="hidden" name="respRtNowDiscountAmt" />	<!-- 즉시할인금액 -->
		<input type="hidden" name="respAlacDiscountAmt" />	<!-- 제휴할인금액 -->
		<input type="hidden" name="respCardTrdAmt" />		<!-- 신용카드결제금액 -->
		<input type="hidden" name="respVAcntNo" />			<!-- 가상계좌번호 -->
		<input type="hidden" name="respExpireDt" />			<!-- 입금기한 -->
		<input type="hidden" name="respCphoneNo" />			<!-- 휴대폰번호 -->
		<input type="hidden" name="respBillkey" />			<!-- 자동결제키 -->
		
		<!-- 암호화 처리 후 세팅될 파라미터-->
		<input type="hidden" name="trdAmt" />
		<input type="hidden" name="mchtCustNm" />
		<input type="hidden" name="cphoneNo" />
		<input type="hidden" name="email" />
		<input type="hidden" name="mchtCustId" />
		<input type="hidden" name="taxAmt" />
		<input type="hidden" name="vatAmt" />
		<input type="hidden" name="taxFreeAmt" />
		<input type="hidden" name="svcAmt" />
		<input type="hidden" name="clipCustNm" />
		<input type="hidden" name="clipCustCi" />
		<input type="hidden" name="clipCustPhoneNo" />
		
		<div class="tab">결제 수단</div>
		<div class="content">
			<input type="button" class="payBtn" value="신용카드" onclick="pay('card')"/>
			<input type="button" class="payBtn" value="계좌이체" onclick="pay('bank')"/> 
			<input type="button" class="payBtn" value="가상계좌" onclick="pay('vbank')"/>
			<input type="button" class="payBtn" value="휴대폰(일반)" onclick="pay('mobile')"/>
			<input type="button" class="payBtn" value="휴대폰(자동결제)" onclick="pay('mobileAuto')"/>
			<input type="button" class="payBtn" value="틴캐시" onclick="pay('teencash')"/>
			<input type="button" class="payBtn" value="해피머니" onclick="pay('happymoney')"/>
			<input type="button" class="payBtn" value="문화상품권" onclick="pay('culturecash')"/>
			<input type="button" class="payBtn" value="스마트문상" onclick="pay('smartcash')"/>
			<input type="button" class="payBtn" value="도서상품권" onclick="pay('booknlife')"/>
			<input type="button" class="payBtn" value="티머니" onclick="pay('tmoney')"/>
			<input type="button" class="payBtn" value="KT클립포인트" onclick="pay('point')"/>
		</div>
	</form>
</div>

</body>
</html>