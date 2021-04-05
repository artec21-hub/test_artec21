<?php
if(!defined('_TUBEWEB_')) exit;
?>

<script src="<?php echo TB_JS_URL; ?>/jquery.register_form.js"></script>

<form name="fregisterform" id="fregisterform" action="./member/member_register_form_update.php" onsubmit="return fregisterform_submit(this);" method="post" autocomplete="off">
<input type="hidden" name="token" value="">

<h2>사이트 이용정보 입력</h2>
<div class="tbl_frm01">
	<table>
	<colgroup>
		<col class="w180">
		<col>
	</colgroup>
	<tbody>
	<tr>
		<th scope="row"><label for="reg_mb_id">아이디</label></th>
		<td>
			<input type="text" name="mb_id" id="reg_mb_id" required class="frm_input required" size="20" maxlength="20">
			<span id="msg_mb_id"></span>
			<?php echo help('영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.'); ?>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="reg_mb_password">비밀번호</label></th>
		<td><input type="password" name="mb_password" id="reg_mb_password" required class="frm_input required" size="20" maxlength="20"> 4자 이상의 영문 및 숫자</td>
	</tr>
	<tr>
		<th scope="row"><label for="reg_mb_password_re">비밀번호 확인</label></th>
		<td><input type="password" name="mb_password_re" id="reg_mb_password_re" required class="frm_input required" size="20" maxlength="20"></td>
	</tr>
	<tr>
		<th scope="row"><label for="reg_mb_gubun">회원구분</label></th>
		<td>
			<label><input type="radio" id="company_chk" name="gubun" value="사업자" checked> 사업자회원</label>&nbsp;&nbsp;
			<label><input type="radio" id="people_chk" name="gubun" value="개인"> 개인회원</label>
		</td>
	</tr>
	<tr>
		<th scope="row"><label for="reg_mb_recommend">추천인ID</label></th>
		<td><input type="text" name="mb_recommend" value="" id="reg_mb_recommend" class="frm_input"></td>
	</tr>
	</tbody>
	</table>
</div>

<div class="tbl_company">
	<h2 class="mart30">사업자정보 입력</h2>
	<div class="tbl_frm01">
		<table>
		<colgroup>
			<col class="w180">
			<col>
		</colgroup>
		<tbody>		
		<tr>
			<th scope="row"><label for="reg_company_name">업체(법인)명</label></th>
			<td><input type="text" name="company_name" id="reg_company_name"  itemname="업체(법인)명" required class="frm_input required" size="30"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_owner">대표자명</label></th>
			<td><input type="text" name="company_owner" id="reg_company_owner"  itemname="대표자명" required class=" frm_input required" size="30"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_saupja_no">사업자등록번호</label></th>
			<td><input type="text" onkeypress='return checkNumber(event)' name="company_saupja_no" id="reg_company_saupja_no"  itemname="사업자등록번호" required class="required frm_input" size="30" placeholder="예) 123-45-67890"><!--a href="javascript:saupjaonopen('<?php echo conv_number($config['company_saupja_no']); ?>');" class="btn_ssmall grey2 marl5">사업자정보확인</a--></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_item">업태</label></th>
			<td><input type="text" name="company_item" id="reg_company_item"  itemname="업태" required class="required frm_input" size="30" placeholder="예) 서비스업" ></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_service">종목</label></th>
			<td><input type="text" name="company_service" id="reg_company_service"  itemname="종목" required class="required frm_input" size="30" placeholder="예) 전자상거래업" ></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_tel">전화번호</label></th>
			<td><input type="text" onkeypress='return checkNumber(event)' name="company_tel" id="reg_company_tel" class="frm_input" size="30" placeholder="예) 02-1234-5678" ></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_fax">팩스번호</label></th>
			<td><input type="text" onkeypress='return checkNumber(event)' name="company_fax" id="reg_company_fax" class="frm_input" size="30" placeholder="예) 02-1234-5678"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_email">세금계산서용 이메일</label></th>
			<td><input type="text" name="company_email" id="reg_company_email"  email itemname="세금계산서용 이메일" required class="required frm_input" size="30"></td>
		</tr>
		<tr>
			<th scope="row">사업장주소</th>
			<td>
				<label for="reg_company_zip" class="sound_only">우편번호</label>
				<input type="text" name="company_zip" id="reg_company_zip"  itemname="우편번호" required class="required frm_input" size="8" maxlength="5" readonly>
				<button type="button" class="btn_small grey" onclick="win_zip('fregisterform', 'company_zip', 'company_addr1', 'company_addr2', 'company_addr3', 'company_addr_jibeon');">주소검색</button><br>

				<label for="reg_company_addr1" class="sound_only">주소</label>
				<input type="text" name="company_addr1"  id="reg_company_addr1"  itemname="기본주소" required class="required frm_input frm_address" size="60" readonly> 기본주소<br>

				<label for="reg_company_addr2" class="sound_only">상세주소</label>
				<input type="text" name="company_addr2"  id="reg_company_addr2" class="frm_input frm_address" size="60"> 상세주소<br>

				<label for="reg_company_addr3" class="sound_only">참고항목</label>
				<input type="text" name="company_addr3"  id="reg_company_addr3" class="frm_input frm_address" size="60" readonly> 참고항목
				<input type="hidden" name="company_addr_jibeon" >
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_company_hompage">홈페이지</label></th>
			<td><input type="text" name="company_hompage" id="reg_company_hompage" class="frm_input" size="30" placeholder="예) http://homepage.com" ></td>
		</tr>		
		</tbody>
		</table>
	</div>

	<h2 class="mart30">담당자정보 입력</h2>
	<div class="tbl_frm01">
		<table>
		<colgroup>
			<col class="w180">
			<col>
		</colgroup>
		<tbody>
		<tr>
			<th scope="row"><label for="reg_info_name">담당자명</label></th>
			<td><input type="text" name="info_name" id="reg_info_name"  itemname="담당자명" required class="required frm_input" size="30" ></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_info_tel">담당자 핸드폰</label></th>
			<td><input type="text" onkeypress='return checkNumber(event)' name="info_tel" id="reg_info_tel"  itemname="담당자 핸드폰" required class="required frm_input" size="30"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_info_email">담당자 이메일</label></th>
			<td><input type="text" name="info_email" id="reg_info_email" itemname="담당자 이메일" required class="required frm_input" size="30"></td>
		</tr>
		</tbody>
		</table>
	</div>
</div>



<div class="tbl_people" style="display:none;">
	<h2 class="mart30">개인정보 입력</h2>
	<div class="tbl_frm01">
		<table>
		<colgroup>
			<col class="w180">
			<col>
		</colgroup>
		<tbody>
		<tr>
			<th scope="row"><label for="reg_mb_name">이름(실명)</label></th>
			<td><input type="text" name="mb_name" id="reg_mb_name"  class="frm_input" size="20"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_mb_tel">전화번호</label></th>
			<td><input type="text" name="mb_tel" id="reg_mb_tel" class="frm_input" size="20" maxlength="20"></td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_mb_hp">휴대폰번호</label></th>
			<td>
				<input type="text" name="mb_hp" id="reg_mb_hp" class="frm_input" size="20" maxlength="20">
				<span class="frm_info">
					<label><input type="checkbox" name="mb_sms" value="Y" checked="checked"> 휴대폰 문자메세지를 받겠습니다.</label>
				</span>
			</td>
		</tr>
		<tr>
			<th scope="row"><label for="reg_mb_email">E-mail</label></th>
			<td>
				<input type="text" name="mb_email" id="reg_mb_email"  class="frm_input " size="40" maxlength="100">
				<span class="frm_info">
					<label><input type="checkbox" name="mb_mailling" value="Y" id="reg_mb_mailling" checked="checked"> 정보 메일을 받겠습니다.</label>
				</span>
			</td>
		</tr>
		<!--tr>
			<th scope="row">본인확인방법</th>
			<td>
				<input type="radio" name="mb_certify_case" value="ipin" id="mb_certify_ipin">
				<label for="mb_certify_ipin">아이핀</label>
				<input type="radio" name="mb_certify_case" value="hp" id="mb_certify_hp">
				<label for="mb_certify_hp">휴대폰</label>
			</td>
		</tr>
		<tr>
			<th scope="row">본인확인</th>
			<td>
				<input type="radio" name="mb_certify" value="1" id="mb_certify_yes">
				<label for="mb_certify_yes">예</label>
				<input type="radio" name="mb_certify" value="" id="mb_certify_no" checked="checked">
				<label for="mb_certify_no">아니오</label>
			</td>
		</tr>
		<tr>
			<th scope="row">성인인증</th>
			<td>
				<input type="radio" name="mb_adult" value="1" id="mb_adult_yes">
				<label for="mb_adult_yes">예</label>
				<input type="radio" name="mb_adult" value="0" id="mb_adult_no" checked="checked">
				<label for="mb_adult_no">아니오</label>
			</td>
		</tr-->
		<tr>
			<th scope="row">주소</th>
			<td>
				<label for="reg_mb_zip" class="sound_only">우편번호</label>
				<input type="text" name="mb_zip" id="reg_mb_zip" class="frm_input" size="8" maxlength="5">
				<button type="button" class="btn_small" onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">주소검색</button><br>
				<input type="text" name="mb_addr1" id="reg_mb_addr1" class="frm_input frm_address" size="60">
				<label for="reg_mb_addr1">기본주소</label><br>
				<input type="text" name="mb_addr2" id="reg_mb_addr2" class="frm_input frm_address" size="60">
				<label for="reg_mb_addr2">상세주소</label><br>
				<input type="text" name="mb_addr3" id="reg_mb_addr3" class="frm_input frm_address" size="60" readonly="readonly">
				<label for="reg_mb_addr3">참고항목</label>
				<input type="hidden" name="mb_addr_jibeon" value="">
			</td>
		</tr>
		
		</tbody>
		</table>
	</div>

</div>
<div class="btn_confirm">
	<input type="submit" value="저장" id="btn_submit" class="btn_large" accesskey="s">
</div>
</form>


<script>
$(function() {

	$("#company_chk").click(function() { //사업자 회원

		$(".tbl_people").css("display","none");
		$(".tbl_company").css("display","block");

		$("[name=company_name]").attr("required" , true);
		$("[name=company_owner]").attr("required" , true);
		$("[name=company_saupja_no]").attr("required" , true);
		$("[name=company_item]").attr("required" , true);
		$("[name=company_service]").attr("required" , true);
		$("[name=company_email]").attr("required" , true);
		$("[name=info_name]").attr("required" , true);
		$("[name=info_tel]").attr("required" , true);
		$("[name=info_email]").attr("required" , true);
		$("[name=company_zip]").attr("required" , true);
		$("[name=company_addr1]").attr("required" , true);

		$("[name=company_name]").addClass("required");
		$("[name=company_owner]").addClass("required");
		$("[name=company_saupja_no]").addClass("required");
		$("[name=company_item]").addClass("required");
		$("[name=company_service]").addClass("required");
		$("[name=company_email]").addClass("required");
		$("[name=info_name]").addClass("required");
		$("[name=info_tel]").addClass("required");
		$("[name=info_email]").addClass("required");
		$("[name=company_zip]").addClass("required");
		$("[name=company_addr1]").addClass("required");

		$("[name=mb_name]").attr("required" , false);
		$("[name=mb_hp]").attr("required" , false);
		$("[name=mb_email]").attr("required" , false);
		$("[name=mb_zip]").attr("required" , false);
		$("[name=mb_addr1]").attr("required" , false);

		$("[name=mb_name]").removeClass("required");
		$("[name=mb_hp]").removeClass("required");
		$("[name=mb_email]").removeClass("required");
		$("[name=mb_zip]").removeClass("required");
		$("[name=mb_addr1]").removeClass("required");

	});

	$("#people_chk").click(function() {

		$(".tbl_people").css("display","block");
		$(".tbl_company").css("display","none");

		$("[name=company_name]").attr("required" , false);
		$("[name=company_owner]").attr("required" , false);
		$("[name=company_saupja_no]").attr("required" , false);
		$("[name=company_item]").attr("required" , false);
		$("[name=company_service]").attr("required" , false);
		$("[name=company_email]").attr("required" , false);
		$("[name=info_name]").attr("required" , false);
		$("[name=info_tel]").attr("required" , false);
		$("[name=info_email]").attr("required" , false);
		$("[name=company_zip]").attr("required" , false);
		$("[name=company_addr1]").attr("required" , false);

		$("[name=company_name]").removeClass("required");
		$("[name=company_owner]").removeClass("required");
		$("[name=company_saupja_no]").removeClass("required");
		$("[name=company_item]").removeClass("required");
		$("[name=company_service]").removeClass("required");
		$("[name=company_email]").removeClass("required");
		$("[name=info_name]").removeClass("required");
		$("[name=info_tel]").removeClass("required");
		$("[name=info_email]").removeClass("required");
		$("[name=company_zip]").removeClass("required");
		$("[name=company_addr1]").removeClass("required");

		$("[name=mb_name]").attr("required" , true);
		$("[name=mb_hp]").attr("required" , true);
		$("[name=mb_email]").attr("required" , true);
		$("[name=mb_zip]").attr("required" , true);
		$("[name=mb_addr1]").attr("required" , true);

		$("[name=mb_name]").addClass("required");
		$("[name=mb_hp]").addClass("required");
		$("[name=mb_email]").addClass("required");
		$("[name=mb_zip]").addClass("required");
		$("[name=mb_addr1]").addClass("required");

	});

});

function fregisterform_submit(f)
{
	
	// 회원아이디 검사
	if(f.w.value == "") {
		var msg = reg_mb_id_check();
		if(msg) {
			alert(msg);
			f.mb_id.select();
			return false;
		}
	}

	if(f.w.value == "") {
		if(f.mb_password.value.length < 4) {
			alert("비밀번호를 4글자 이상 입력하십시오.");
			f.mb_password.focus();
			return false;
		}
	}

	if(f.mb_password.value != f.mb_password_re.value) {
		alert("비밀번호가 같지 않습니다.");
		f.mb_password_re.focus();
		return false;
	}

	if(f.mb_password.value.length > 0) {
		if(f.mb_password_re.value.length < 4) {
			alert("비밀번호를 4글자 이상 입력하십시오.");
			f.mb_password_re.focus();
			return false;
		}
	}
	

	if(typeof(f.mb_recommend) != "undefined" && f.mb_recommend.value) {
		if(f.mb_id.value == f.mb_recommend.value) {
			alert("본인을 추천할 수 없습니다.");
			f.mb_recommend.focus();
			return false;
		}

		var msg = reg_mb_recommend_check();
		if(msg) {
			alert(msg);
			f.mb_recommend.select();
			return false;
		}
	}

	

	<?php if($w == '' && $config['cf_cert_use'] && $config['cf_cert_req']) { ?>
	// 본인인증 체크
	if(f.cert_no.value=="") {
		alert("회원가입을 위해서는 본인인증을 해주셔야 합니다.");
		return false;
	}
	<?php } ?>

	

	if(f.gubun.value == "사업자"){
	
		// 이름 검사
		if(f.w.value=="") {
			if(f.company_name.value.length < 1) {
				alert("업체명을 입력하십시오.");
				f.company_name.focus();
				return false;
			}

			if(f.company_owner.value.length < 1) {
				alert("대표자명을 입력하십시오.");
				f.company_owner.focus();
				return false;
			}

			if(f.company_saupja_no.value.length < 10 && f.company_saupja_no.value.length > 12) {
				alert("사업자등록번호를 정확히 입력하십시오.");
				f.company_saupja_no.focus();
				return false;
			}

			if(f.company_item.value.length < 1) {
				alert("업태를 입력하십시오.");
				f.company_item.focus();
				return false;
			}

			if(f.company_service.value.length < 1) {
				alert("종목을 입력하십시오.");
				f.company_service.focus();
				return false;
			}

			/*
			var pattern = /([^가-힣\x20])/i;
			if(pattern.test(f.mb_name.value)) {
				alert("이름은 한글로 입력하십시오.");
				f.mb_name.select();
				return false;
			}
			*/
		}

		// E-mail 검사
		if((f.w.value == "") || (f.w.value == "u" && f.company_email.defaultValue != f.company_email.value)) {
			var msg = reg_company_email_check();
			if(msg) {
				alert(msg);
				f.reg_company_email.select();
				return false;
			}
		}
	
		// 휴대폰번호 체크
		var msg = reg_info_hp_check();
		if(msg) {
			alert(msg);
			f.reg_info_hp.select();
			return false;
		}		


	}else{
		
		// 이름 검사
		if(f.w.value=="") {
			if(f.mb_name.value.length < 1) {
				alert("이름을 입력하십시오.");
				f.mb_name.focus();
				return false;
			}

			/*
			var pattern = /([^가-힣\x20])/i;
			if(pattern.test(f.mb_name.value)) {
				alert("이름은 한글로 입력하십시오.");
				f.mb_name.select();
				return false;
			}
			*/
		}

		// E-mail 검사
		if((f.w.value == "") || (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
			var msg = reg_mb_email_check();
			if(msg) {
				alert(msg);
				f.reg_mb_email.select();
				return false;
			}
		}

		<?php if(($config['register_use_hp'] || $config['cf_cert_hp']) && $config['register_req_hp']) { ?>
		// 휴대폰번호 체크
		var msg = reg_mb_hp_check();
		if(msg) {
			alert(msg);
			f.reg_mb_hp.select();
			return false;
		}
		<?php } ?>

	}

	document.getElementById("btn_submit").disabled = "disabled";

    return true;
}
</script>
