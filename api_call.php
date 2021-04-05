<?php

function API_CALL($URL, $PARAM='', $METHOD='')
{
	if (function_exists('curl_init')) {
		$ch = curl_init();										// curl 리소스를 초기화
		curl_setopt($ch, CURLOPT_URL, $URL);					// url을 설정
		if($METHOD=="POST") {
			curl_setopt($ch, CURLOPT_POST, True);				// POST
			curl_setopt($ch, CURLOPT_POSTFIELDS, $PARAM);		// paramet
		}
	   curl_setopt($ch, CURLOPT_HEADER, 0);						// 헤더는 제외하고 content 만 받음
	   curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);				// 응답 값을 브라우저에 표시하지 말고 값을 리턴
	   // 브라우저처럼 보이기 위해 user agent 사용
	   curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.7.5) Gecko/20041107 Firefox/1.0');
	   $Result = curl_exec($ch);
	   curl_close($ch);
	   return $Result;
	} else {
		return "E";
	}
}

function king_post_stock($WMSKEY)
{
	$URL	      = "http://115.68.100.11/api/getstock.php";
	$param	      = "";
	$method	      = "POST";
	$stock	      = 0;
	$arr			= [];
	$arr['mskey']	= "caseking";
	$arr['uid']		= "casefarm";
	$arr['wmskey']	= $WMSKEY;
	$param	      = json_encode($arr);
	$rst = json_decode( API_CALL($URL, $param, $method), true );
	if($rst['status'] == "success"){
		$stock	= $rst['stock'];
	}
	return $stock;
}


$i = 1; //i변수에 1을 대입합니다.

while($i<=250) //i가 10보다 작거나 같을 때 반복합니다
{
	echo king_post_stock("C004329905");
	$i++; //i를 1씩 증가합니다.(증감식)
}

?>
