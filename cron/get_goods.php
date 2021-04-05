<?php

	include_once("./_common.php");
	$DATA = array(
		'mskey'=>'caseking', 
		'uid'=>'casefarm'
	);

	$url = 'http://caseking.co.kr/api/goods.php';
	$json = king_post($url,$DATA);//curl 수행 결과, json 형식으로 받아 온다.

	echo $json."<br>";
	$array = json_decode($json, true); //이것을 php에서 사용하기 위해 array로 디코딩?
	//var_dump($array);

	//echo $array['totalcnt'];
	//for ($i =0; $i < count($array['items']); $i++){

	//	echo $array['items'][$i]['status'];
		

	//}

		
	
?>
