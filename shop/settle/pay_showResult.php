<?php
	include_once "config.php";
	include_once "settleUtils.php";

	/** 넘어온 응답 파라미터 받기 */
	$mchtId 			= null_to_empty(get_param("respMchtId"));			//상점아이디
	$outStatCd 			= null_to_empty(get_param("respOutStatCd"));		//결과코드
	$outRsltCd 			= null_to_empty(get_param("respOutRsltCd"));		//거절코드
	$outRsltMsg			 = null_to_empty(get_param("respOutRsltMsg"));		//결과메세지
	$method 			= null_to_empty(get_param("respMethod"));			//결제수단
	$mchtTrdNo 			= null_to_empty(get_param("respMchtTrdNo"));		//상점주문번호
	$mchtCustId 		= null_to_empty(get_param("respMchtCustId"));		//상점고객아이디
	$trdNo 				= null_to_empty(get_param("respTrdNo"));			//세틀뱅크 거래번호
	$trdAmt 			= null_to_empty(get_param("respTrdAmt"));			//거래금액
	$mchtParam 			= null_to_empty(get_param("respMchtParam"));		//상점예약필드
	$authDt 			= null_to_empty(get_param("respAuthDt"));			//승인일시
	$authNo 			= null_to_empty(get_param("respAuthNo"));			//승인번호
	$intMon 			= null_to_empty(get_param("respIntMon"));			//할부개월수
	$fnNm 				= null_to_empty(get_param("respFnNm"));				//카드사명
	$fnCd 				= null_to_empty(get_param("respFnCd"));				//카드사코드
	$pointTrdNo 		= null_to_empty(get_param("respPointTrdNo"));		//포인트거래번호
	$pointTrdAmt 		= null_to_empty(get_param("respPointTrdAmt"));		//포인트거래금액
	$RtNowDiscountAmt 	= null_to_empty(get_param("respRtNowDiscountAmt"));	//즉시할인금액
	$AlacDiscountAmt 	= null_to_empty(get_param("respAlacDiscountAmt"));	//제휴할인금액
	$cardTrdAmt 		= null_to_empty(get_param("respCardTrdAmt"));		//신용카드결제금액
	$vAcntNo 			= null_to_empty(get_param("respVAcntNo"));			//가상계좌번호
	$expireDt 			= null_to_empty(get_param("respExpireDt"));			//입금기한
	$cphoneNo 			= null_to_empty(get_param("respCphoneNo"));			//휴대폰번호
	$billkey 			= null_to_empty(get_param("respBillkey"));			//자동결제키


	$tno        = trim($trdNo);
	$amount     = trim($trdAmt);
	$app_time   = trim($authDt);
	$mobile_no  = trim($cphoneNo);
	$app_no     = trim($authNo);
	$card_name  = trim($fnNm);

?>
