<?php
if(!defined('_TUBEWEB_')) exit;
?>

<!-- 퀵메뉴 좌측날개 시작 { -->
<div id="qcl">
	<div id="mbn_side1">
		<div class="mbn_side_img1" style="background:url('http://casefarm.kr/data/banner/side_banner.png') no-repeat top center;"><a href=""><img src="/data/banner/side_banner.png"></a></div>
	</div>
</div>
<!-- } 퀵메뉴 좌측날개 끝 -->

<!-- 퀵메뉴 우측날개 시작 { -->
<div id="qcr">
	<ul>
		<li class="tit">최근 본 상품</li>
		<li>
			<?php
			$pr_tmp = get_cookie('ss_pr_idx');
			$pr_idx = explode('|',$pr_tmp);
			$pr_tot_count = 0;
			$k = 0;
			$mod = 3;
			foreach($pr_idx as $idx)
			{
				$rowx = get_goods($idx, 'index_no, simg1');
				if(!$rowx['index_no'])
					continue;

				$href = TB_SHOP_URL.'/view.php?index_no='.$idx;

				if($pr_tot_count % $mod == 0) $k++;

				$pr_tot_count++;
			?>
			<p class="dn c<?php echo $k; ?>">
				<a href="<?php echo $href; ?>"><?php echo get_it_image($idx, $rowx['simg1'], 100, 100); ?></a>
			</p>
			<?php
			}
			if(!$pr_tot_count)
				echo '<p class="no_item">없음</p>'
			?>
		</li>
		<?php if($pr_tot_count > 0){ ?>
		<li class="stv_wrap">
			<img src="<?php echo TB_IMG_URL; ?>/bt_qcr_prev.gif" id="up">
			<span id="stv_pg"></span>
			<img src="<?php echo TB_IMG_URL; ?>/bt_qcr_next.gif" id="down">
		</li>
		<?php } ?>
		
	</ul>
	
</div>
<div id="qcr2">
	<?php echo display_banner_rows(90, $pt_id); ?>
</div>
<!-- } 퀵메뉴 우측날개 끝 -->

<div class="qbtn_bx">
	<button type="button" id="anc_up">TOP</button>
	<button type="button" id="anc_dw">DOWN</button>
</div>

<script>
$(function() {
	var itemQty = <?php echo $pr_tot_count; ?>; // 총 아이템 수량
	var itemShow = <?php echo $mod; ?>; // 한번에 보여줄 아이템 수량
	var Flag = 1; // 페이지
	var EOFlag = parseInt(itemQty/itemShow); // 전체 리스트를 나눠 페이지 최댓값을 구하고
	var itemRest = parseInt(itemQty%itemShow); // 나머지 값을 구한 후
	if(itemRest > 0) // 나머지 값이 있다면
	{
		EOFlag++; // 페이지 최댓값을 1 증가시킨다.
	}
	$('.c'+Flag).css('display','block');
	$('#stv_pg').text(Flag+'/'+EOFlag); // 페이지 초기 출력값
	$('#up').click(function() {
		if(Flag == 1)
		{
			alert('목록의 처음입니다.');
		} else {
			Flag--;
			$('.c'+Flag).css('display','block');
			$('.c'+(Flag+1)).css('display','none');
		}
		$('#stv_pg').text(Flag+'/'+EOFlag); // 페이지 값 재설정
	})
	$('#down').click(function() {
		if(Flag == EOFlag)
		{
			alert('더 이상 목록이 없습니다.');
		} else {
			Flag++;
			$('.c'+Flag).css('display','block');
			$('.c'+(Flag-1)).css('display','none');
		}
		$('#stv_pg').text(Flag+'/'+EOFlag); // 페이지 값 재설정
	});

	$(window).scroll(function () {
		var pos = $("#ft").offset().top - $(window).height();
		if($(this).scrollTop() > 0) {
			$(".qbtn_bx").fadeIn(300);
			$("#qcr2").fadeIn(300);
			if($(this).scrollTop() > pos) {
				$(".qbtn_bx").addClass('active');
				$("#qcr2").addClass('active');
			}else{
				$(".qbtn_bx").removeClass('active');
				$("#qcr2").removeClass('active');
			}
		} else {
			$(".qbtn_bx").fadeOut(300);
			$("#qcr2").fadeOut(300);
		}
	});

	// 퀵메뉴 상위로이동
    $("#anc_up").click(function(){
        $("html, body").animate({ scrollTop: 0 }, 400);
    });

	// 하위로이동
    $("#anc_dw").click(function(){
		$("html, body").animate({ scrollTop: $(document).height() }, 400);
    });

	// 좌/우 퀵메뉴 높이 자동조절
	<?php if(defined('_INDEX_')) { ?>
	var Theight = $("#header").height() - $("#gnb").height();
	var ptop = 20;
	<?php } else { ?>
	var Theight = $("#header").height() - $("#gnb").height();
	var ptop = 20;
	<?php } ?>
	$("#qcr, #qcl").css({'top':ptop + 'px'});

	$(window).scroll(function () {
		if($(this).scrollTop() > Theight) {
			$("#qcr, #qcl").css({'position':'fixed','top':'67px','z-index':'999'});
		//	$("#qcr2").css({'position':'fixed','top':'250px','z-index':'999'});
		} else {
			$("#qcr, #qcl").css({'position':'absolute','top':ptop + 'px'});
		//	$("#qcr2").css({'position':'absolute','top':'220px'});
		}
	});
});
</script>
<!-- } 우측 퀵메뉴 끝 -->
