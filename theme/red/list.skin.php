<?php
if(!defined('_TUBEWEB_')) exit;
?>
<script src="<?php echo TB_JS_URL; ?>/shop.js"></script>

<?php

$qstr1 = 'ca_id='.$ca_id.'&page_rows='.$page_rows.'&sort='.$sort.'&sortodr='.$sortodr;
$qstr2 = 'ca_id='.$ca_id.'&page_rows='.$page_rows;
$qstr3 = 'ca_id='.$ca_id.'&sort='.$sort.'&sortodr='.$sortodr;

$sort_str = '';
for($i=0; $i<count($gw_psort); $i++) {
	list($tsort, $torder, $tname) = $gw_psort[$i];

	$sct_sort_href = $_SERVER['SCRIPT_NAME'].'?'.$qstr2.'&sort='.$tsort.'&sortodr='.$torder;

	$active = '';
	if($sort == $tsort && $sortodr == $torder)
		$active = ' class="active"';
	if($i==0 && !($sort && $sortodr))
		$active = ' class="active"';

	$sort_str .= '<li><a href="'.$sct_sort_href.'"'.$active.'>'.$tname.'</a></li>'.PHP_EOL;
}
?>

<h2 class="pg_tit">
	<span><?php echo $ca['catename']; ?></span>
	<p class="pg_nav">HOME<?php echo get_move($ca_id); ?></p>
</h2>

<?php
$cgy = get_category_head_image($ca_id);
echo $cgy['headimg']; // 분류별 상단이미지

echo tree_category($ca_id); // 하위분류
if(substr($ca_id,0,3) == "002"){
	echo tree_category2($ca_id); // 하위분류
}
?>
<form name="fbuyform" method="post">
<input type="hidden" name="select_rows" value="">
<input type="hidden" name="sw_direct">
<div class="sub_list_btn_ct">
	<ul>
		<li><a href="javascript:fbuyform_chk('buy');"><input type="button" value="체크상품 바로구매" class="bdark twhite w150 h30 abtn bda1"></a> <a href="javascript:fbuyform_chk('cart');"><input type="button" value="체크상품 장바구니담기" class="bbgray twhite w150 h30 abtn bda1"></a></li>
		<li><!--선택상품 총합계 : <span id="list_total_price" class="bd">0</span> 원--></li>
	</ul>
</div>
<div class="tab_sort">
	<span class="total">전체상품 <b class="fc_90" id="total"><?php echo number_format($total_count); ?></b>개</span>
	<ul>
		<?php echo $sort_str; // 탭메뉴 ?>
	</ul>
	<select id="page_rows" onchange="location='<?php echo "{$_SERVER['SCRIPT_NAME']}?{$qstr3}";?>&page_rows='+this.value;">
		<?php echo option_selected(($mod*5),  $page_rows, '5줄 정렬'); ?>
		<?php echo option_selected(($mod*10), $page_rows, '10줄 정렬'); ?>
		<?php echo option_selected(($mod*15), $page_rows, '15줄 정렬'); ?>
	</select>
</div>

<div class="pr_desc wli6">
	
	<ul class="item_list">
	<?php

	$select_count = 0;
	$t_idx = 0;

	for($i=0; $row=sql_fetch_array($result); $i++) {

/* 상품옵션정보값 가져오기 시작 */

		// 수량체크
		if(!$row['stock_mod']) {
			$row['stock_qty'] = 999999999;
		}

		if($row['odr_min']) // 최소구매수량
			$odr_min = (int)$row['odr_min'];
		else
			$odr_min = 0;

		if($row['odr_max']) // 최대구매수량
			$odr_max = (int)$row['odr_max'];
		else
			$odr_max = 0;


		$is_only = false;
		$is_buy_only = false;
		$is_pr_msg = false;
		$is_social_end = false;
		$is_social_ing = false;
		
	
		// 품절체크
		$is_soldout = is_soldout($row['index_no']);

		if($is_soldout) {
			$script_msg = "현재상품은 품절 상품입니다.";
		} else {
			if(get_session('ss_mb_id') == ""){
				$script_msg = "회원전용몰";
				$is_pr_msg = true;
			}else{

				if($row['price_msg']) {
					$is_pr_msg = true;
					$script_msg = "현재상품은 구매신청 하실 수 없습니다.";
				} else if($row['buy_only'] == 1 && $member['grade'] > $row['buy_level']) {
					$is_only = true;
					$script_msg = "현재상품은 구매하실 권한이 없습니다.";
				} else if($row['buy_only'] == 0 && $member['grade'] > $row['buy_level']) {
					if(!$is_member) {
						$is_buy_only = true;
						$script_msg = "현재상품은 회원만 구매 하실 수 있습니다.";
					} else {
						$script_msg = "현재상품을 구매하실 권한이 없습니다.";
					}
				} else {
					$script_msg = "";
					// 필수 옵션
					$option_item = get_list_item_options($row['index_no'], $row['opt_subject'], $select_count);
					$select_count = $select_count + 1;
				}
			}
			if(substr($row['sb_date'],0,1) != '0' && substr($row['eb_date'],0,1) != '0') {
				if($row['eb_date'] < TB_TIME_YMD) {
					$is_social_end	= true;
					$is_social_txt	= "<span>[판매종료]</span>&nbsp;&nbsp;시작일 : ".substr($row['sb_date'],0,4)."년 ";
					$is_social_txt .= substr($row['sb_date'],5,2)."월 ";
					$is_social_txt .= substr($row['sb_date'],8,2)."일 ~ ";
					$is_social_txt .= "종료일 : ".substr($row['eb_date'],0,4)."년 ";
					$is_social_txt .= substr($row['eb_date'],5,2)."월 ";
					$is_social_txt .= substr($row['eb_date'],8,2)."일";

					$script_msg	= "현재 상품은 판매기간이 종료 되었습니다.";
				} else if($row['sb_date'] > TB_TIME_YMD) {
					$is_social_end	= true;
					$is_social_txt	= "<span>[판매대기]</span>&nbsp;&nbsp;시작일 : ".substr($row['sb_date'],0,4)."년 ";
					$is_social_txt .= substr($row['sb_date'],5,2)."월 ";
					$is_social_txt .= substr($row['sb_date'],8,2)."일 ~ ";
					$is_social_txt .= "종료일 : ".substr($row['eb_date'],0,4)."년 ";
					$is_social_txt .= substr($row['eb_date'],5,2)."월 ";
					$is_social_txt .= substr($row['eb_date'],8,2)."일";

					$script_msg	= "현재 상품은 판매대기 상품 입니다.";
				} else if($row['sb_date'] <= TB_TIME_YMD && $row['eb_date'] >= TB_TIME_YMD) {
					$is_social_ing	= true;
				} 
			}
		}
		


		// 필수 옵션
	//	$option_item = get_list_item_options($row['index_no'], $row['opt_subject'], $select_count);


/* 상품옵션정보값 가져오기 끝 */

		$it_href = TB_SHOP_URL.'/view.php?index_no='.$row['index_no'];
		$it_image = get_it_image($row['index_no'], $row['simg1'], 160, 160);
		
		$it_explan = $row['explan'];
		$it_model = $row['model'];
		$it_brand = $row['brand_nm'];
		$it_name = cut_str($row['gname'], 100);

		$it_price = get_price($row['index_no']);
		$it_amount = get_sale_price($row['index_no']);
		$it_point = display_point($row['gpoint']);

		$is_uncase = is_uncase($row['index_no']);
		$is_free_baesong = is_free_baesong($row);
		$is_free_baesong2 = is_free_baesong2($row);

		// (시중가 - 할인판매가) / 시중가 X 100 = 할인률%
		$it_sprice = $sale = '';
		if($row['normal_price'] > $it_amount && !$is_uncase) {
			$sett = ($row['normal_price'] - $it_amount) / $row['normal_price'] * 100;
			$sale = '<p class="sale">'.number_format($sett,0).'<span>%</span></p>';
			$it_sprice = display_price2($row['normal_price']);
		}

		//echo $script_msg;

	?>

		
		<li>			
			<ul class="item_box">		
				<li>
					<?php if(!$script_msg) { ?>	
					<input type="checkbox" name="chkAttr" value="<?php echo $select_count-1; ?>" class="big_check">
					<?php } ?>
				</li>
				<li><a href="<?php echo $it_href; ?>"><?php echo $it_image; ?></a></li>
				<li><dd class="price2"><a href="<?php echo $it_href; ?>"><?php echo $it_explan; ?> / <?php echo $it_model; ?><br>(<?php echo $it_brand; ?>)<?php echo $it_name; ?></a><br><a href="<?php echo $it_href; ?>"><?php echo $it_sprice; ?><?php echo $it_price; ?></a></dd></li>
				
				<li>
					<!-- 선택된 옵션 시작 { -->
					<?php if(!$is_only && !$is_pr_msg && !$is_buy_only && !$is_soldout) { ?>

					<div class="vi_txt_li2">
						<input type="hidden" name="gs_id[]" value="<?php echo $row['index_no']; ?>">
						<input type="hidden" id="it_price" value="<?php echo get_sale_price($row['index_no']); ?>">
						<input type="hidden" name="ca_id" value="<?php echo $row['ca_id']; ?>">
						
						<?php if($option_item) { ?>					
							<?php echo $option_item; ?>
						<?php } ?>						
					</div>

						<div class="option_set_list">						
							<?php if(!$option_item) { ?>
							<ul class="option_set_added">
								<li class="sit_opt_list2 vi_txt_li4">
									<dl>
										<input type="hidden" name="io_type[<?php echo $row['index_no']; ?>][]" value="0">
										<input type="hidden" name="io_id[<?php echo $row['index_no']; ?>][]" value="">
										<input type="hidden" name="io_value[<?php echo $row['index_no']; ?>][]" value="<?php echo $row['gname']; ?>">
										<input type="hidden" class="io_price" value="0">
										<input type="hidden" class="io_stock" value="<?php echo $row['stock_qty']; ?>">
										<input type="hidden" class="t_idx" value="<?php echo $t_idx; ?>">
										<?php $t_idx = $t_idx + 1; ?>
										<dt>
											<span class="sit_opt_subj">수량</span>
											<span class="sit_opt_prc"></span>
										</dt>
										<dd class="li_ea button_etc">
											<span>
												<button type="button" class="defbtn_minus">감소</button><input type="text" name="ct_qty[<?php echo $row['index_no']; ?>][]" value="<?php echo $odr_min; ?>" class="inp_opt" title="수량설정" size="2"><button type="button" class="defbtn_plus">증가</button>
											</span>
											<span class="marl7">(재고수량 : <?php echo $row['stock_mod'] ? display_qty($row['stock_qty']) : '무제한'; ?>)</span>
										</dd>
									</dl>
								</li>
							</ul>
							
							<?php } ?>
						</div>
						<!-- } 선택된 옵션 끝 -->
						<div class="sit_tot_views2 dn">
							<span class="fl">총 합계금액</span>
							<span class="sit_tot_price prdc_price"></span>
						</div>
					<?php }else{ ?>
						<div class="vi_txt_li3">
						<?php if($script_msg) { ?>					
							<?php echo $script_msg; ?>
						<?php } ?>						
						</div>												
					<?php } ?>
				</li>
				<!--li><?php if($row['gpoint']) { ?>
					<span class="fbx_small fbx_bg6"><?php echo $it_point; ?> 적립</span>
                    <?php } ?>
                    <?php if($is_free_baesong) { ?>
					<span class="fbx_small fbx_bg4">무료배송</span>
                    <?php } ?>
                    <?php if($is_free_baesong2) { ?>
					<span class="fbx_small fbx_bg4">조건부무료배송</span>
                    <?php } ?></li-->
				
				<li>			
					<?php if(!$script_msg) { ?>
						<?php echo get_list_buy_button($script_msg, $select_count-1); ?>			
					<?php } ?>
				</li>
				
			</ul>
			
			<!--
			<a href="<?php echo $it_href; ?>">
			<dl>
				<dt><?php echo $it_image; ?></dt>
				<dd class="pname"><?php echo $it_name; ?></dd>
				<dd class="price"><?php echo $it_sprice; ?><?php echo $it_price; ?></dd>
                <?php if( !$is_uncase && ($row['gpoint'] || $is_free_baesong || $is_free_baesong2) ) { ?>
				<dd class="petc">
                    <?php if($row['gpoint']) { ?>
					<span class="fbx_small fbx_bg6"><?php echo $it_point; ?> 적립</span>
                    <?php } ?>
                    <?php if($is_free_baesong) { ?>
					<span class="fbx_small fbx_bg4">무료배송</span>
                    <?php } ?>
                    <?php if($is_free_baesong2) { ?>
					<span class="fbx_small fbx_bg4">조건부무료배송</span>
                    <?php } ?>
                </dd>
				<?php } ?>
			</dl>
			</a>
			<p class="ic_bx"><span onclick="javascript:itemlistwish('<?php echo $row['index_no']; ?>');" id="<?php echo $row['index_no']; ?>" class="<?php echo $row['index_no'].' '.zzimCheck($row['index_no']); ?>"></span> <a href="<?php echo $it_href; ?>" target="_blank" class="nwin"></a></p>
			-->

		</li>
		
	<?php } ?>
	</ul>
</div>
</form>
<?php if(!$total_count) { ?>
<div class="empty_list bb">자료가 없습니다.</div>
<?php } ?>

<?php
echo get_paging($config['write_pages'], $page, $total_page, $_SERVER['SCRIPT_NAME'].'?'.$qstr1.'&page=');
?>

<script>
// 상품보관
function fsubmit_check(f)
{
    // 판매가격이 0 보다 작다면
    if (document.getElementById("it_price").value < 0) {
        alert("전화로 문의해 주시면 감사하겠습니다.");
        return false;
    }

	if($(".sit_opt_list").size() < 1) {
		alert("주문옵션을 선택해주시기 바랍니다.");
		return false;
	}

    var val, io_type, result = true;
    var sum_qty = 0;
	var min_qty = parseInt('<?php echo $odr_min; ?>');
	var max_qty = parseInt('<?php echo $odr_max; ?>');
    var $el_type = $("input[name^=io_type]");

    $("input[name^=ct_qty]").each(function(index) {
        val = $(this).val();

        if(val.length < 1) {
            alert("수량을 입력해 주십시오.");
            result = false;
            return false;
        }

        if(val.replace(/[0-9]/g, "").length > 0) {
            alert("수량은 숫자로 입력해 주십시오.");
            result = false;
            return false;
        }

        if(parseInt(val.replace(/[^0-9]/g, "")) < 1) {
            alert("수량은 1이상 입력해 주십시오.");
            result = false;
            return false;
        }

        io_type = $el_type.eq(index).val();
        if(io_type == "0")
            sum_qty += parseInt(val);
    });

    if(!result) {
        return false;
    }

    if(min_qty > 0 && sum_qty < min_qty) {
		alert("주문옵션 개수 총합 "+number_format(String(min_qty))+"개 이상 주문해 주세요.");
        return false;
    }

    if(max_qty > 0 && sum_qty > max_qty) {
		alert("주문옵션 개수 총합 "+number_format(String(max_qty))+"개 이하로 주문해 주세요.");
        return false;
    }

    return true;
}
// 바로구매, 장바구니 폼 전송
function fbuyform_chk(sw_direct)
{
	var f = document.fbuyform;
	f.sw_direct.value = sw_direct;

	if(sw_direct == "cart") {
		f.sw_direct.value = 0;
	} else { // 바로구매
		f.sw_direct.value = 1;
	}
	
	var result = true;
	var sum_idx = [];

	$("input:checkbox[name='chkAttr']").each(function(){

		if($(this).is(":checked") == true) {

			t_idx = $(this).val();

			sum_idx.push(t_idx);		

			var val, io_type, result = true;
			var sum_qty = 0;
			var min_qty = parseInt('<?php echo $odr_min; ?>');
			var max_qty = parseInt('<?php echo $odr_max; ?>');
			var $el_type = $(".option_set_list:eq("+t_idx+") input[name^=io_type]");

			if($(".option_set_list:eq("+t_idx+") .sit_opt_list2").size() < 1) {
				alert("주문옵션을 선택해주시기 바랍니다.");
				result = false;
				return false;
			}

			$(".option_set_list:eq("+t_idx+") input[name^=ct_qty]").each(function(index) {

				val = $(this).val();

				if(val.length < 1) {
					alert("수량을 입력해 주세요.");
					result = false;
					return;
				}

				if(val.replace(/[0-9]/g, "").length > 0) {
					alert("수량은 숫자로 입력해 주세요.");
					result = false;
					return;
				}

				if(parseInt(val.replace(/[^0-9]/g, "")) < 1) {
					alert("수량은 1이상 입력해 주세요.");
					result = false;
					return;
				}

				io_type = $el_type.eq(index).val();
				if(io_type == "0")
					sum_qty += parseInt(val);
			});

			if(!result) {
				result = false;
				return;
			}

			if(min_qty > 0 && sum_qty < min_qty) {
				alert("주문옵션 개수 총합 "+number_format(String(min_qty))+"개 이상 주문해 주세요.");
				result = false;
				return;
			}

			if(max_qty > 0 && sum_qty > max_qty) {
				alert("주문옵션 개수 총합 "+number_format(String(max_qty))+"개 이하로 주문해 주세요.");
				result = false;
				return;
			}

			f.select_rows.value = sum_idx;
		
			if(result){
				f.action = "./cartupdate.php";
				f.submit();
			}
		}		

	});
}

// 바로구매, 장바구니 폼 전송
function fbuyform_submit(sw_direct,t_idx)
{
	var f = document.fbuyform;
	f.sw_direct.value = sw_direct;
	f.select_rows.value = t_idx;

	if(sw_direct == "cart") {
		f.sw_direct.value = 0;
	} else { // 바로구매
		f.sw_direct.value = 1;
	}

	if($(".option_set_list:eq("+t_idx+") .sit_opt_list2").size() < 1) {
		alert("주문옵션을 선택해주시기 바랍니다.");
		return;
	}

	var val, io_type, result = true;
	var sum_qty = 0;
	var min_qty = parseInt('<?php echo $odr_min; ?>');
	var max_qty = parseInt('<?php echo $odr_max; ?>');
	var $el_type = $(".option_set_list:eq("+t_idx+") input[name^=io_type]");

	$(".option_set_list:eq("+t_idx+") input[name^=ct_qty]").each(function(index) {
		val = $(this).val();

		if(val.length < 1) {
			alert("수량을 입력해 주세요.");
			result = false;
			return;
		}

		if(val.replace(/[0-9]/g, "").length > 0) {
			alert("수량은 숫자로 입력해 주세요.");
			result = false;
			return;
		}

		if(parseInt(val.replace(/[^0-9]/g, "")) < 1) {
			alert("수량은 1이상 입력해 주세요.");
			result = false;
			return;
		}

		io_type = $el_type.eq(index).val();
		if(io_type == "0")
			sum_qty += parseInt(val);
	});

	if(!result) {
		return;
	}

	if(min_qty > 0 && sum_qty < min_qty) {
		alert("주문옵션 개수 총합 "+number_format(String(min_qty))+"개 이상 주문해 주세요.");
		return;
	}

	if(max_qty > 0 && sum_qty > max_qty) {
		alert("주문옵션 개수 총합 "+number_format(String(max_qty))+"개 이하로 주문해 주세요.");
		return;
	}
	

	f.action = "./cartupdate.php";
	f.submit();
}
</script>
