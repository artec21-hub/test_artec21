<?php

	include_once("./_common.php");

	$stock = king_post_stock("C004338501");//curl 수행 결과, json 형식으로 받아 온다.

	echo $stock;		
	
?>
