<?php
if(!defined('_TUBEWEB_')) exit;
?>

<!-- 회원정보 입력/수정 시작 { -->
<h2 class="pg_tit">
    <span><?php echo $tb['title']; ?></span>
    <p class="pg_nav">HOME<i>&gt;</i><?php echo $tb['title']; ?></p>
</h2>

<script src="<?php echo TB_JS_URL; ?>/jquery.register_form.js"></script>
<?php if($config['cf_cert_use'] && ($config['cf_cert_ipin'] || $config['cf_cert_hp'])) { ?>
<script src="<?php echo TB_JS_URL; ?>/certify.js?v=<?php echo TB_JS_VER; ?>"></script>
<?php } ?>

<form name="fregisterform" id="fregisterform" action="<?php echo $register_action_url; ?>" onsubmit="return fregisterform_submit(this);" method="post" autocomplete="off">
    <input type="hidden" name="w" value="<?php echo $w; ?>">
    <input type="hidden" name="agree" value="<?php echo $agree; ?>">
    <input type="hidden" name="agree2" value="<?php echo $agree2; ?>">
    <input type="hidden" name="cert_type" value="<?php echo $member['mb_certify']; ?>">
    <input type="hidden" name="cert_no" value="">

    <h3 class="anc_tit">사이트 이용정보 입력</h3>
    <div class="tbl_frm01 tbl_wrap">
        <table>
            <colgroup>
                <col class="w140">
                <col>
            </colgroup>
            <tbody>
                <tr>
                    <th scope="row"><label for="reg_mb_id">
                           <span class="red_star">*</span>아이디
                        </label>
                    </th>
                    <td>
                        <input type="text" name="mb_id" value="<?php echo $member['id'] ?>" id="reg_mb_id" <?php echo $required; ?><?php echo $readonly; ?> class="frm_input<?php echo $required; ?>" size="20" maxlength="20">
                        <span id="msg_mb_id"></span>
                        <span class="frm_info">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label for="reg_mb_password"><span class="red_star">*</span>비밀번호</label></th>
                    <td><input type="password" name="mb_password" id="reg_mb_password" <?php echo $required; ?> class="frm_input<?php echo $required; ?>" size="20" maxlength="20"></td>
                </tr>
                <tr>
                    <th scope="row"><label for="reg_mb_password_re"><span class="red_star">*</span>비밀번호 확인</label></th>
                    <td><input type="password" name="mb_password_re" id="reg_mb_password_re" <?php echo $required; ?> class="frm_input<?php echo $required; ?>" size="20" maxlength="20"></td>
                </tr>
                <tr>
                    <th scope="row"><label class="label_left" for="reg_mb_gubun">회원구분</label></th>
                    <td>
                        <label><input type="radio" id="company_chk" name="gubun" value="사업자" checked> 사업자회원</label>&nbsp;&nbsp;
                        <label><input type="radio" id="people_chk" name="gubun" value="개인"> 개인회원</label>
                    </td>
                </tr>
                <tr>
                    <th scope="row"><label class="label_left"  for="reg_mb_recommend">추천인ID</label></th>
                    <td><input type="text" name="mb_recommend" value="admin" id="reg_mb_recommend" class="frm_input"></td>
                </tr>
            </tbody>
        </table>
    </div>

    <div class="tbl_company">
        <h3 class="anc_tit mart30">사업자정보 입력</h3>
        <div class="tbl_frm01 tbl_wrap">
            <table>
                <colgroup>
                    <col class="w140">
                    <col>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><label for="reg_company_name"><span class="red_star">*</span>업체(법인)명</label></th>
                        <td><input type="text" name="company_name" id="reg_company_name" itemname="업체(법인)명" required class="frm_input required" size="30" value="<?php echo get_text($member['company_name']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_company_owner"><span class="red_star">*</span>대표자명</label></th>
                        <td><input type="text" name="company_owner" id="reg_company_owner" itemname="대표자명" required class=" frm_input required" size="30" value="<?php echo get_text($member['company_owner']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_company_saupja_no"><span class="red_star">*</span>사업자등록번호</label></th>
                        <td><input type="text" onkeypress='return checkNumber(event)' name="company_saupja_no" id="reg_company_saupja_no" itemname="사업자등록번호" required class="required frm_input" size="30" placeholder="예) 123-45-67890" value="<?php echo get_text($member['company_saupja_no']); ?>">
                            <!--a href="javascript:saupjaonopen('<?php echo conv_number($config['company_saupja_no']); ?>');" class="btn_ssmall grey2 marl5">사업자정보확인</a-->
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_company_item"><span class="red_star">*</span>업태</label></th>
                        <td><input type="text" name="company_item" id="reg_company_item" itemname="업태" required class="required frm_input" size="30" placeholder="예) 서비스업" value="<?php echo get_text($member['company_item']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_company_service"><span class="red_star">*</span>종목</label></th>
                        <td><input type="text" name="company_service" id="reg_company_service" itemname="종목" required class="required frm_input" size="30" placeholder="예) 전자상거래업" value="<?php echo get_text($member['company_service']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label class="label_left"  for="reg_company_tel">전화번호</label></th>
                        <td><input type="text" onkeypress='return checkNumber(event)' name="company_tel" id="reg_company_tel" class="frm_input" size="30" placeholder="예) 02-1234-5678" value="<?php echo get_text($member['company_tel']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label class="label_left"  for="reg_company_fax">팩스번호</label></th>
                        <td><input type="text" onkeypress='return checkNumber(event)' name="company_fax" id="reg_company_fax" class="frm_input" size="30" placeholder="예) 02-1234-5678" value="<?php echo get_text($member['company_fax']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_company_email"><span class="red_star">*</span>세금계산서용 이메일</label></th>
                        <td><input type="text" name="company_email" id="reg_company_email" email itemname="세금계산서용 이메일" required class="required frm_input" size="30" value="<?php echo get_text($member['company_email']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row" style="font-size:13px;"><span class="red_star">*</span>사업장주소</th>
                        <td>
                            <label for="reg_company_zip" class="sound_only">우편번호</label>
                            <input type="text" name="company_zip" id="reg_company_zip" value="<?php echo $member['zip']; ?>" itemname="우편번호" required class="required frm_input" size="8" maxlength="5" readonly>
                            <button type="button" class="btn_small grey" onclick="win_zip('fregisterform', 'company_zip', 'company_addr1', 'company_addr2', 'company_addr3', 'company_addr_jibeon');">주소검색</button><br>

                            <label for="reg_company_addr1" class="sound_only">주소</label>
                            <input type="text" name="company_addr1" value="<?php echo get_text($member['addr1']); ?>" id="reg_company_addr1" itemname="기본주소" required class="required frm_input frm_address" size="60" readonly> 기본주소<br>

                            <label for="reg_company_addr2" class="sound_only">상세주소</label>
                            <input type="text" name="company_addr2" value="<?php echo get_text($member['addr2']); ?>" id="reg_company_addr2" class="frm_input frm_address" size="60"> 상세주소<br>

                            <label for="reg_company_addr3" class="sound_only">참고항목</label>
                            <input type="text" name="company_addr3" value="<?php echo get_text($member['addr3']); ?>" id="reg_company_addr3" class="frm_input frm_address" size="60" readonly> 참고항목
                            <input type="hidden" name="company_addr_jibeon" value="<?php echo get_text($member['addr_jibeon']); ?>">
                        </td>
                    </tr>
                    <tr>
                        <th scope="row"><label class="label_left" for="reg_company_hompage">홈페이지</label></th>
                        <td><input type="text" name="company_hompage" id="reg_company_hompage" class="frm_input" size="30" placeholder="예) http://homepage.com" value="<?php echo get_text($member['company_hompage']); ?>"></td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h3 class="anc_tit mart30">담당자정보 입력</h3>
        <div class="tbl_frm01 tbl_wrap">
            <table>
                <colgroup>
                    <col class="w140">
                    <col>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><label for="reg_info_name"><span class="red_star">*</span>담당자명</label></th>
                        <td><input type="text" name="info_name" id="reg_info_name" itemname="담당자명" required class="required frm_input" size="30" value="<?php echo get_text($member['info_name']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_info_tel"><span class="red_star">*</span>담당자 핸드폰</label></th>
                        <td><input type="text" onkeypress='return checkNumber(event)' name="info_tel" id="reg_info_tel" itemname="담당자 핸드폰" required class="required frm_input" size="30" value="<?php echo get_text($member['info_tel']); ?>"></td>
                    </tr>
                    <tr>
                        <th scope="row"><label for="reg_info_email"><span class="red_star">*</span>담당자 이메일</label></th>
                        <td><input type="text" name="info_email" id="reg_info_email" itemname="담당자 이메일" required class="required frm_input" size="30" value="<?php echo get_text($member['info_email']); ?>"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>



    <div class="tbl_people" style="display:none;">
        <h3 class="anc_tit mart30">개인정보 입력</h3>
        <div class="tbl_frm01 tbl_wrap">
            <table>
                <colgroup>
                    <col class="w140">
                    <col>
                </colgroup>
                <tbody>
                    <tr>
                        <th scope="row"><label for="reg_mb_name">이름</label></th>
                        <td>
                            <input type="text" name="mb_name" value="<?php echo get_text($member['name']); ?>" id="reg_mb_name" <?php echo $readonly; ?> class="frm_input" size="20">
                            <?php
				if($config['cf_cert_use']) {
					if($config['cf_cert_ipin'])
						echo '<button type="button" id="win_ipin_cert" class="btn_small">아이핀 본인인증</button>'.PHP_EOL;
					if($config['cf_cert_hp'])
						echo '<button type="button" id="win_hp_cert" class="btn_small">휴대폰 본인인증</button>'.PHP_EOL;

					echo '<noscript>본인인증을 위해서는 자바스크립트 사용이 가능해야합니다.</noscript>'.PHP_EOL;
				}
				if($config['cf_cert_use'] && $member['mb_certify']) {
					if($member['mb_certify'] == 'ipin')
						$mb_cert = '아이핀';
					else
						$mb_cert = '휴대폰';
				?>
                            <div id="msg_certify">
                                <strong><?php echo $mb_cert; ?> 본인인증</strong><?php if($member['mb_adult']) { ?> 및 <strong>성인인증</strong><?php } ?> 완료
                            </div>
                            <?php } ?>
                            <?php if($config['cf_cert_use']) { ?>
                            <span class="frm_info">아이핀 본인인증 후에는 이름이 자동 입력되고 휴대폰 본인인증 후에는 이름과 휴대폰번호가 자동 입력되어 수동으로 입력할수 없게 됩니다.</span>
                            <?php } ?>
                        </td>
                    </tr>
                    <?php if($config['register_use_tel']) { ?>
                    <tr>
                        <th scope="row"><label for="reg_mb_tel">전화번호</label></th>
                        <td><input type="text" name="mb_tel" value="<?php echo get_text($member['telephone']); ?>" id="reg_mb_tel" class="frm_input" size="20" maxlength="20"></td>
                    </tr>
                    <?php } ?>
                    <?php if($config['register_use_hp'] || $config['cf_cert_hp']) { ?>
                    <tr>
                        <th scope="row"><label for="reg_mb_hp">휴대폰번호</label></th>
                        <td>
                            <input type="text" onkeypress='return checkNumber(event)' name="mb_hp" value="<?php echo get_text($member['cellphone']); ?>" id="reg_mb_hp" class="frm_input" size="20" maxlength="20">
                            <span class="frm_info">
                                <label><input type="checkbox" name="mb_sms" value="Y" <?php echo ($w=='' || $member['smsser'] == 'Y')?' checked':''; ?>> 휴대폰 문자메세지를 받겠습니다.</label>
                            </span>
                            <?php if($config['cf_cert_use'] && $config['cf_cert_hp']) { ?>
                            <input type="hidden" name="old_mb_hp" value="<?php echo get_text($member['cellphone']); ?>">
                            <?php } ?>
                        </td>
                    </tr>
                    <?php } ?>
                    <tr>
                        <th scope="row"><label for="reg_mb_email">E-mail</label></th>
                        <td>
                            <input type="hidden" name="old_email" value="<?php echo $member['email']; ?>">
                            <input type="text" name="mb_email" value="<?php echo isset($member['email'])?$member['email']:''; ?>" id="reg_mb_email" class="frm_input " size="40" maxlength="100">
                            <span class="frm_info">
                                <label><input type="checkbox" name="mb_mailling" value="Y" id="reg_mb_mailling" <?php echo ($w=='' || $member['mailser'] == 'Y')?' checked':''; ?>> 정보 메일을 받겠습니다.</label>
                            </span>
                        </td>
                    </tr>
                    <?php if($config['register_use_addr']) { ?>
                    <tr>
                        <th scope="row">주소</th>
                        <td>
                            <label for="reg_mb_zip" class="sound_only">우편번호</label>
                            <input type="text" name="mb_zip" value="<?php echo $member['zip']; ?>" id="reg_mb_zip" class="frm_input" size="8" maxlength="5">
                            <button type="button" class="btn_small" onclick="win_zip('fregisterform', 'mb_zip', 'mb_addr1', 'mb_addr2', 'mb_addr3', 'mb_addr_jibeon');">주소검색</button><br>
                            <input type="text" name="mb_addr1" value="<?php echo get_text($member['addr1']); ?>" id="reg_mb_addr1" class="frm_input frm_address" size="60">
                            <label for="reg_mb_addr1">기본주소</label><br>
                            <input type="text" name="mb_addr2" value="<?php echo get_text($member['addr2']); ?>" id="reg_mb_addr2" class="frm_input frm_address" size="60">
                            <label for="reg_mb_addr2">상세주소</label><br>
                            <input type="text" name="mb_addr3" value="<?php echo get_text($member['addr3']); ?>" id="reg_mb_addr3" class="frm_input frm_address" size="60" readonly="readonly">
                            <label for="reg_mb_addr3">참고항목</label>
                            <input type="hidden" name="mb_addr_jibeon" value="<?php echo get_text($member['addr_jibeon']); ?>">
                        </td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>

    <div class="btn_confirm">
        <input type="submit" value="<?php echo $w==''?'회원가입':'정보수정'; ?>" id="btn_submit" class="btn_large wset" accesskey="s">
        <a href="<?php echo TB_URL; ?>" class="btn_large bx-white">취소</a>
    </div>
</form>

<script>
    $(function() {

        $("#company_chk").click(function() { //사업자 회원

            $(".tbl_people").css("display", "none");
            $(".tbl_company").css("display", "block");

            $("[name=company_name]").attr("required", true);
            $("[name=company_owner]").attr("required", true);
            $("[name=company_saupja_no]").attr("required", true);
            $("[name=company_item]").attr("required", true);
            $("[name=company_service]").attr("required", true);
            $("[name=company_email]").attr("required", true);
            $("[name=info_name]").attr("required", true);
            $("[name=info_tel]").attr("required", true);
            $("[name=info_email]").attr("required", true);
            $("[name=company_zip]").attr("required", true);
            $("[name=company_addr1]").attr("required", true);

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

            $("[name=mb_name]").attr("required", false);
            $("[name=mb_hp]").attr("required", false);
            $("[name=mb_email]").attr("required", false);
            $("[name=mb_zip]").attr("required", false);
            $("[name=mb_addr1]").attr("required", false);

            $("[name=mb_name]").removeClass("required");
            $("[name=mb_hp]").removeClass("required");
            $("[name=mb_email]").removeClass("required");
            $("[name=mb_zip]").removeClass("required");
            $("[name=mb_addr1]").removeClass("required");

        });

        $("#people_chk").click(function() {

            $(".tbl_people").css("display", "block");
            $(".tbl_company").css("display", "none");

            $("[name=company_name]").attr("required", false);
            $("[name=company_owner]").attr("required", false);
            $("[name=company_saupja_no]").attr("required", false);
            $("[name=company_item]").attr("required", false);
            $("[name=company_service]").attr("required", false);
            $("[name=company_email]").attr("required", false);
            $("[name=info_name]").attr("required", false);
            $("[name=info_tel]").attr("required", false);
            $("[name=info_email]").attr("required", false);
            $("[name=company_zip]").attr("required", false);
            $("[name=company_addr1]").attr("required", false);

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

            $("[name=mb_name]").attr("required", true);
            $("[name=mb_hp]").attr("required", true);
            $("[name=mb_email]").attr("required", true);
            $("[name=mb_zip]").attr("required", true);
            $("[name=mb_addr1]").attr("required", true);

            $("[name=mb_name]").addClass("required");
            $("[name=mb_hp]").addClass("required");
            $("[name=mb_email]").addClass("required");
            $("[name=mb_zip]").addClass("required");
            $("[name=mb_addr1]").addClass("required");

        });

        <?php if($config['cf_cert_use'] && $config['cf_cert_ipin']) { ?>
        // 아이핀인증
        $("#win_ipin_cert").click(function() {
            if (!cert_confirm())
                return false;

            var url = "<?php echo TB_OKNAME_URL; ?>/ipin1.php";
            certify_win_open('kcb-ipin', url);
            return;
        });

        <?php } ?>
        <?php if($config['cf_cert_use'] && $config['cf_cert_hp']) { ?>
        // 휴대폰인증



        $("#win_hp_cert").click(function() {
            if (!cert_confirm())
                return false;

            <?php
		switch($config['cf_cert_hp']) {
			case 'kcb':
				$cert_url = TB_OKNAME_URL.'/hpcert1.php';
				$cert_type = 'kcb-hp';
				break;
			case 'kcp':
				$cert_url = TB_KCPCERT_URL.'/kcpcert_form.php';
				$cert_type = 'kcp-hp';
				break;
			case 'lg':
				$cert_url = TB_LGXPAY_URL.'/AuthOnlyReq.php';
				$cert_type = 'lg-hp';
				break;
			default:
				echo 'alert("기본환경설정에서 휴대폰 본인인증 설정을 해주십시오");';
				echo 'return false;';
				break;
		}
		?>

            certify_win_open("<?php echo $cert_type; ?>", "<?php echo $cert_url; ?>");
            return;
        });
        <?php } ?>
    });

    function fregisterform_submit(f) {

        // 회원아이디 검사
        if (f.w.value == "") {
            var msg = reg_mb_id_check();
            if (msg) {
                alert(msg);
                f.mb_id.select();
                return false;
            }
        }

        if (f.w.value == "") {
            if (f.mb_password.value.length < 4) {
                alert("비밀번호를 4글자 이상 입력하십시오.");
                f.mb_password.focus();
                return false;
            }
        }

        if (f.mb_password.value != f.mb_password_re.value) {
            alert("비밀번호가 같지 않습니다.");
            f.mb_password_re.focus();
            return false;
        }

        if (f.mb_password.value.length > 0) {
            if (f.mb_password_re.value.length < 4) {
                alert("비밀번호를 4글자 이상 입력하십시오.");
                f.mb_password_re.focus();
                return false;
            }
        }


        if (typeof(f.mb_recommend) != "undefined" && f.mb_recommend.value) {
            if (f.mb_id.value == f.mb_recommend.value) {
                alert("본인을 추천할 수 없습니다.");
                f.mb_recommend.focus();
                return false;
            }

            var msg = reg_mb_recommend_check();
            if (msg) {
                alert(msg);
                f.mb_recommend.select();
                return false;
            }
        }



        <?php if($w == '' && $config['cf_cert_use'] && $config['cf_cert_req']) { ?>
        // 본인인증 체크
        if (f.cert_no.value == "") {
            alert("회원가입을 위해서는 본인인증을 해주셔야 합니다.");
            return false;
        }
        <?php } ?>



        if (f.gubun.value == "사업자") {

            // 이름 검사
            if (f.w.value == "") {
                if (f.company_name.value.length < 1) {
                    alert("업체명을 입력하십시오.");
                    f.company_name.focus();
                    return false;
                }

                if (f.company_owner.value.length < 1) {
                    alert("대표자명을 입력하십시오.");
                    f.company_owner.focus();
                    return false;
                }

                if (f.company_saupja_no.value.length < 10 && f.company_saupja_no.value.length > 12) {
                    alert("사업자등록번호를 정확히 입력하십시오.");
                    f.company_saupja_no.focus();
                    return false;
                }

                if (f.company_item.value.length < 1) {
                    alert("업태를 입력하십시오.");
                    f.company_item.focus();
                    return false;
                }

                if (f.company_service.value.length < 1) {
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
            if ((f.w.value == "") || (f.w.value == "u" && f.company_email.defaultValue != f.company_email.value)) {
                var msg = reg_company_email_check();
                if (msg) {
                    alert(msg);
                    f.reg_company_email.select();
                    return false;
                }
            }

            // 휴대폰번호 체크
            var msg = reg_info_hp_check();
            if (msg) {
                alert(msg);
                f.reg_info_hp.select();
                return false;
            }


        } else {

            // 이름 검사
            if (f.w.value == "") {
                if (f.mb_name.value.length < 1) {
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
            if ((f.w.value == "") || (f.w.value == "u" && f.mb_email.defaultValue != f.mb_email.value)) {
                var msg = reg_mb_email_check();
                if (msg) {
                    alert(msg);
                    f.reg_mb_email.select();
                    return false;
                }
            }

            <?php if(($config['register_use_hp'] || $config['cf_cert_hp']) && $config['register_req_hp']) { ?>
            // 휴대폰번호 체크
            var msg = reg_mb_hp_check();
            if (msg) {
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
<!-- } 회원정보 입력/수정 끝 -->
