
<input type="hidden" name="od_id" value="<?php echo $od_id; ?>">
<input type="hidden" name="od_settle_case" value="<?php echo $od['paymethod']; ?>">
<input type="hidden" name="od_name" value="<?php echo $od['name']; ?>">
<input type="hidden" name="od_tel" value="<?php echo $od['telephone']; ?>">
<input type="hidden" name="od_hp" value="<?php echo $od['cellphone']; ?>">
<input type="hidden" name="od_zip" value="<?php echo $od['zip']; ?>">
<input type="hidden" name="od_addr1" value="<?php echo $od['addr1']; ?>">
<input type="hidden" name="od_addr2" value="<?php echo $od['addr2']; ?>">
<input type="hidden" name="od_addr3" value="<?php echo $od['addr3']; ?>">
<input type="hidden" name="od_addr_jibeon" value="<?php echo $od['addr_jibeon']; ?>">
<input type="hidden" name="od_email" value="<?php echo $od['email']; ?>">
<input type="hidden" name="od_b_name" value="<?php echo $od['b_name']; ?>">
<input type="hidden" name="od_b_tel" value="<?php echo $od['b_telephone']; ?>">
<input type="hidden" name="od_b_hp" value="<?php echo $od['b_cellphone']; ?>">
<input type="hidden" name="od_b_zip" value="<?php echo $od['b_zip']; ?>">
<input type="hidden" name="od_b_addr1" value="<?php echo $od['b_addr1']; ?>">
<input type="hidden" name="od_b_addr2" value="<?php echo $od['b_addr2']; ?>">
<input type="hidden" name="od_b_addr3" value="<?php echo $od['b_addr3']; ?>">
<input type="hidden" name="od_b_addr_jibeon" value="<?php echo $od['b_addr_jibeon']; ?>">

<?php if($default['de_tax_flag_use']) { ?>
<input type="hidden" name="comm_tax_mny" value="<?php echo $comm_tax_mny; ?>"> <!-- 과세금액 -->
<input type="hidden" name="comm_vat_mny" value="<?php echo $comm_vat_mny; ?>"> <!-- 부가세 -->
<input type="hidden" name="comm_free_mny" value="<?php echo $comm_free_mny; ?>"> <!-- 비과세 금액 -->
<?php } ?>

<input type="hidden" name="mchtId" value="<?php echo PG_MID; ?>" />	<!-- 결제수단 -->
<input type="hidden" name="plainTrdAmt" value="<?php echo $tot_price; ?>" />	<!-- 결제금액 -->
<input type="hidden" name="method" value="<?php echo $od['paymethod']; ?>" />	<!-- 결제수단 -->
<input type="hidden" name="trdDt" value="" />	<!-- 요청일자(yyyyMMdd) -->
<input type="hidden" name="trdTm" value="" />	<!-- 요청시간(HHmmss)-->
<input type="hidden" name="mchtTrdNo" value="" />	<!-- 상점주문번호 -->
<input type="hidden" name="mchtName" value="<?php echo $config['shop_name']; ?>" />	<!-- 상점한글명 -->
<input type="hidden" name="mchtEName" value="<?php echo $config['shop_name_us']; ?>" />	<!-- 상점영문명 -->
<input type="hidden" name="pmtPrdtNm" value="<?php echo $goods; ?>" />	<!-- 상품명 -->
<input type="hidden" name="notiUrl" value="<?php echo TB_SHOP_URL ?>/settle/receiveNoti.php" />	<!-- 결과처리 URL -->
<input type="hidden" name="nextUrl" value="<?php echo TB_SHOP_URL ?>/settle/pay_receiveResult.php" />	<!-- 결과화면 URL -->
<input type="hidden" name="cancUrl" value="<?php echo TB_SHOP_URL ?>/settle/pay_receiveResult.php" />	<!-- 결제취소 URL -->

<!-- 승인 요청 파라미터(옵션) -->
<input type="hidden" name="plainMchtCustNm" value="<?php echo $od['name']; ?>" />			 <!-- 고객명 -->
<input type="hidden" name="custAcntSumry" value="세틀뱅크" />			 <!-- 통장인자내용 : 계좌이체, 가상계좌 -->
<input type="hidden" name="expireDt" value="20211231235959" />			<!-- 입금만료일시(필수) : 가상계좌 -->
<input type="hidden" name="mchtParam" value="<?php echo $od_id; ?>" />			 <!-- 상점예약필드 -->
<input type="hidden" name="plainCphoneNo" value="<?php echo $od['cellphone']; ?>" />					<!-- 핸드폰번호 : 휴대폰결제 -->
<input type="hidden" name="plainEmail" value="<?php echo $od['email']; ?>"  />		<!-- 이메일주소 : 신용카드, 계좌이체, 가상계좌, 휴대폰결제, 클립포인트 -->
<input type="hidden" name="telecomCd" value="" />						<!-- 통신사코드 : 휴대폰결제 -->
<input type="hidden" name="prdtTerm" value="20211231235959" />			<!-- 상품제공기간 : 신용카드, 클립포인트 -->
<input type="hidden" name="plainMchtCustId" value="<?php echo get_session('ss_mb_id'); ?>" />		<!-- 상점고객아이디(문상만 필수) -->
<input type="hidden" name="taxTypeCd" value="N" />						<!-- 면세여부(Y:면세, N:과세, G:복합과세) -->
<input type="hidden" name="plainTaxAmt" value="<?php echo $comm_tax_mny; ?>" />						<!-- 과세금액(복합과세인 경우 필수) -->
<input type="hidden" name="plainVatAmt" value="<?php echo $comm_vat_mny; ?>" />						<!-- 부가세금액(복합과세인 경우 필수) -->
<input type="hidden" name="plainTaxFreeAmt" value="<?php echo $comm_free_mny; ?>" />					<!-- 비과세금액(복합과세인 경우 필수) -->
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