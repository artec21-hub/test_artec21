<?php
if(!defined('_TUBEWEB_')) exit;
?>

<div class="cont_wrap">
	<!-- 베스트 쇼핑특가 및 배너 시작 { -->
	<div class="best_wrap">
		<div class="bnr1_top"></div>
		<div class="bnr1"><?php echo display_banner(3, $pt_id); ?></div>
		<div class="bnr2_top"></div>
		<div class="bnr2"><?php echo display_banner(4, $pt_id); ?></div>

		<div class="bnr3"><?php echo display_banner(5, $pt_id); ?></div>
		<div class="bnr4"><?php echo display_banner(6, $pt_id); ?></div>
		<div class="bnr5"><?php echo display_banner(77, $pt_id); ?></div>
	</div>

	<!-- } 베스트 쇼핑특가 및 배너 끝 -->
</div>

<!-- 카테고리별 베스트 시작 {-->
<div class="cont_wrap">
	<?php
	if($default['de_skin1_best']) {
		$list_best = unserialize(base64_decode($default['de_skin1_best']));
		$list_count = count($list_best);
		$tab_width = (float)(100 / $list_count);
	?>
	<h2 class="mtit mart65"><span><?php echo $default['de_skin1_name']; ?></span></h2>
	<ul class="bestca_tab">
		<?php for($i=0; $i<$list_count; $i++) { ?>
		<li data-tab="bstab_c<?php echo $i; ?>" style="width:<?php echo $tab_width; ?>%"><span><?php echo trim($list_best[$i]['subj']); ?></span></li>
		<?php } ?>
	</ul>
	<div class="bestca">
		<?php echo get_listtype_cate($list_best, '209', '209'); ?>
	</div>
	<script>
	$(document).ready(function(){
		$(".bestca_tab>li:eq(0)").addClass('active');
		$("#bstab_c0").show();

		$(".bestca_tab>li").click(function() {
			var activeTab = $(this).attr('data-tab');
			$(".bestca_tab>li").removeClass('active');
			$(".bestca ul").hide();
			$(this).addClass('active');
			$("#"+activeTab).fadeIn(250);
		});
	});
	</script>
	<?php } ?>
	<!--
	<?php if($banner6 = display_banner(6, $pt_id)) { ?>
	<div class="wide_bn mart40"><?php echo $banner6; ?></div>
	<?php } ?>
	-->
</div>
<!-- } 카테고리별 베스트 끝 -->

<!-- 신상품 시작 { -->
<div class="cont_wrap mart60">
	<h2 class="mtit"><span><?php echo $default['de_pname_3']; ?></span></h2>
	<h3 class="mtit_sub">매주 새로운 신상품으로 업데이트 됩니다!</h3>
	<?php echo get_listtype_skin("3", '238', '238', '10', 'wli4 mart5'); ?>	
</div>
<!-- } 신상품 끝 -->


<!-- 베스트상품 시작 {-->
<div class="cont_wrap mart50">
	<div class="bst_img"><p align="right"><img class="hard" src="/img/hard_w.png" width="184px"><img class="soft" src="/img/soft_b.png" width="184px"><img class="diary" src="/img/diary_b.png" width="184px"><img class="accessroy" src="/img/accessroy_b.png" width="184px"></p></div>

	<div class="hard_goods">
	<?php echo get_listtype_best("3", '400', '400', '5', 'mart0'); ?>
	</div>
	<div class="soft_goods">
	<?php echo get_listtype_best("2", '400', '400', '5', 'mart0'); ?>
	</div>
	<div class="diary_goods">
	<?php echo get_listtype_best("5", '400', '400', '5', 'mart0'); ?>
	</div>
	<div class="accessory_goods">
	<?php echo get_listtype_best("4", '400', '400', '5', 'mart0'); ?>
	</div>

	<script>
		$(document).ready(function(){
			$(".soft_goods").hide();
			$(".diary_goods").hide();
			$(".accessory_goods").hide();
			$(".hard_goods").show();
		});
		$(function(){							
			$('.hard').mouseover(function(){
				$(".soft_goods").hide();
				$(".diary_goods").hide();
				$(".accessory_goods").hide();
				$(".hard_goods").show();

				$(".hard").attr("src", $(".hard").attr("src").replace("_b","_w"));
				$(".soft").attr("src", $(".soft").attr("src").replace("_w","_b"));
				$(".diary").attr("src", $(".diary").attr("src").replace("_w","_b"));
				$(".accessroy").attr("src", $(".accessroy").attr("src").replace("_w","_b"));
			});
			
			$('.soft').mouseover(function(){
				$(".soft_goods").show();
				$(".diary_goods").hide();
				$(".accessory_goods").hide();
				$(".hard_goods").hide();

				$(".hard").attr("src", $(".hard").attr("src").replace("_w","_b"));
				$(".soft").attr("src", $(".soft").attr("src").replace("_b","_w"));
				$(".diary").attr("src", $(".diary").attr("src").replace("_w","_b"));
				$(".accessroy").attr("src", $(".accessroy").attr("src").replace("_w","_b"));
			});

			$('.diary').mouseover(function(){
				$(".soft_goods").hide();
				$(".diary_goods").show();
				$(".accessory_goods").hide();
				$(".hard_goods").hide();

				$(".hard").attr("src", $(".hard").attr("src").replace("_w","_b"));
				$(".soft").attr("src", $(".soft").attr("src").replace("_w","_b"));
				$(".diary").attr("src", $(".diary").attr("src").replace("_b","_w"));
				$(".accessroy").attr("src", $(".accessroy").attr("src").replace("_w","_b"));
			});

			$('.accessroy').mouseover(function(){
				$(".soft_goods").hide();
				$(".diary_goods").hide();
				$(".accessory_goods").show();
				$(".hard_goods").hide();

				$(".hard").attr("src", $(".hard").attr("src").replace("_w","_b"));
				$(".soft").attr("src", $(".soft").attr("src").replace("_w","_b"));
				$(".diary").attr("src", $(".diary").attr("src").replace("_w","_b"));
				$(".accessroy").attr("src", $(".accessroy").attr("src").replace("_b","_w"));
			});
		
		});
		
	</script>

	
</div>
<!-- } 베스트상품 끝 -->

<!-- 추천상품 시작 { -->
<div class="cont_wrap mart60">
	<h2 class="mtit"><span><?php echo $default['de_pname_5']; ?></span></h2>
	<h3 class="mtit_sub">매력적이고 인기많은 상품들을 골라 추천드립니다.</h3>
	<?php echo get_listtype_skin("5", '232', '232', '10', 'wli4 mart5'); ?>
</div>
<!-- } 추천상품 끝 -->

<!-- 큰 배너 배경 및 문구 시작 { -->
<?php echo mask_banner(7, $pt_id); ?>
<!-- } 큰 배너 배경 및 문구 끝 -->

<!-- 인기상품 시작 { -->
<!--
<div class="cont_wrap mart60">
	<h2 class="mtit"><span><?php echo $default['de_pname_4']; ?></span></h2>
	<?php echo get_listtype_skin("4", '315', '315', '6', 'wli3 mart5'); ?>
</div>-->
<!-- } 인기상품 끝 -->

<!-- 추천상품 시작 { -->
<div class="cont_wrap mart60">
	<h2 class="mtit"><span><?php echo $default['de_pname_7']; ?></span></h2>
	<h3 class="mtit_sub">필름,이어폰,충전기등 필수 악세사리 모음!</h3>
	<?php echo get_listtype_skin("5", '232', '232', '10', 'wli4 mart5'); ?>
</div>
<!-- } 추천상품 끝 -->




<?php
$bnr1 = display_banner(8, $pt_id);
$bnr2 = display_banner(9, $pt_id);
$bnr3 = display_banner(10, $pt_id);

//$bnr4 = display_banner(11, $pt_id);
if($bnr1 || $bnr2 || $bnr3 || $bnr4) {
?>
<!-- 중간 배너영역 시작 { -->
<ul class="mmd_bn mart60">
	<li class="bnr1"><?php echo $bnr1; ?></li>
	<li class="bnr2"><?php echo $bnr2; ?></li>
	<li class="bnr3"><?php echo $bnr3; ?></li>
<!--	<li class="bnr4"><?php echo $bnr4; ?></li>-->
</ul>
<!-- } 중간 배너영역 끝 -->
<?php } ?>