<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a19c66a46e7e0eef8b10f39d33359eab"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="../css/planing.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(36.715917, 128.026130), //지도의 중심좌표.
		level: 12 //지도의 레벨(확대, 축소 정도)
	
	};
  
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var polyline = new daum.maps.Polyline({
		map: map,
		strokeWeight: 3, // 선의 두께
		strokeColor: '#FF0000', // 선 색
		strokeOpacity: 0.9, // 선 투명도
		strokeStyle: 'solid' // 선 스타일
	});
	var path = new Array();
	var check = true;
	$("#folder").click(function(){
		if(check){
			$("#seltrip").animate({width: '0%'}, "fast");
			$("#seltrip").css("display", "none");
			$("#map").animate({width: '77%'}, "fast");
			$("#folder").css("background-image", 'url("../images/mapimage/open-btn.png")');
			check = !check;
		}else{
			$("#seltrip").animate({width: '17%'}, "fast");
			$("#seltrip").css("display", "inline-block");
			$("#map").animate({width: '60%'}, "fast");
			$("#folder").css("background-image", 'url("../images/mapimage/close-btn.png")');
			check = !check;
		}
	});
	
});
</script>
</head>
<body>
	<div id = "contents">
		<div id ="plan-day">
			
		</div>
		<div id = "myplan">
		
		</div>
		<div id = "seltrip">
			<div id= "selcity">
				${seoul}
				<select>
					<option>서울</option>
					<option>경기도</option>
					<option>강원도</option>
					<option>충청북도</option>
					<option>충청남도</option>
					<option>전라북도</option>
					<option>전라남도</option>
					<option>경상북도</option>
					<option>경상남도</option>
					<option>제주도</option>		
				</select>
			</div>
		</div>
		<div id="map">
			<span style="cursor:pointer"><div id="folder"></div></span>
		</div>
	</div>
</body>
</html>