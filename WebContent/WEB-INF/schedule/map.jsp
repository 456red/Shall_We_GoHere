<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a19c66a46e7e0eef8b10f39d33359eab"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="../css/map.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	var lat = ${lat};
	var lng = ${lng};
	var level = ${level};
	var container = document.getElementById('map1'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(lat, lng), //지도의 중심좌표.
		level: level //지도의 레벨(확대, 축소 정도)
	
	};
  
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var polyline = new daum.maps.Polyline({
		map : map,
		strokeWeight : 3, // 선의 두께
		strokeColor : '#FF0000', // 선 색
		strokeOpacity : 0.9, // 선 투명도
		strokeStyle : 'solid' // 선 스타일
	});
	var path = new Array();
		<c:forEach items="${ar}" var="i">
		
			if(${i.plan =='경복궁'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/18619553" target="_blank"><strong>경복궁</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/gyeongbokgung.jpg" alt="">';
				content += '        <span class="address">서울 종로구 세종로 1-91</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.579617, 126.9748523),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.579617, 126.9748523));
				polyline.setPath(path);
			}else if(${i.plan =='창덕궁'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/10771162" target="_blank"><strong>창덕궁</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/changdeokgung.jpg" alt="">';
				content += '        <span class="address">서울 종로구 율곡로 99</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5794351, 126.9888539),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5794351, 126.9888539));
				polyline.setPath(path);
			}else if(${i.plan =='63빌딩'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/26406915" target="_blank"><strong>63빌딩</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/63building.jpg" alt="">';
				content += '        <span class="address">서울 영등포구 63로 50</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5193818, 126.9380216),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5193818, 126.9380216));
				polyline.setPath(path);
			}else if(${i.plan =='남산타워'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/662864163" target="_blank"><strong>남산타워</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/nseoultower.jpg" alt="">';
				content += '        <span class="address">서울 용산구 남산공원길 105</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5511736, 126.9860379),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5511736, 126.9860379));
				polyline.setPath(path);
			}else if(${i.plan =='청계천'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/10849847" target="_blank"><strong>청계천</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/cheonggyecheon.jpg" alt="">';
				content += '        <span class="address">서울 종로구 서린동 148</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5713613, 127.0222202),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5713613, 127.0222202));
				polyline.setPath(path);
			}else if(${i.plan =='롯데월드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/27560699" target="_blank"><strong>롯데월드</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/lotteworld.jpg" alt="">';
				content += '        <span class="address">서울 송파구 올림픽로 240</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5088774, 127.0977706),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5088774, 127.0977706));
				polyline.setPath(path);
			}else if(${i.plan =='광화문'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/8234642" target="_blank"><strong>광화문</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/gwanghwamun.jpg" alt="">';
				content += '        <span class="address">서울 종로구 사직로 161</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5737396, 126.97554),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5737396, 126.97554));
				polyline.setPath(path);
			}else if(${i.plan =='명동성당'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/10327558" target="_blank"><strong>명동성당</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/myongdongcatedral.png" alt="">';
				content += '        <span class="address">서울 중구 명동길 74</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5631812, 126.9851717),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5631812, 126.9851717));
				polyline.setPath(path);
			}else if(${i.plan =='코엑스'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/17573702" target="_blank"><strong>코엑스</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/coex.png" alt="">';
				content += '        <span class="address">서울 강남구 영동대로 513</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5109092, 127.0580796),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5109092, 127.0580796));
				polyline.setPath(path);
			}/*경기도*/else if(${i.plan =='서울랜드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/8360993" target="_blank"><strong>서울랜드</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/seoulland.jpg" alt="">';
				content += '        <span class="address">경기 과천시 광명로 181</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.4341563, 127.017938),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.4341563, 127.017938));
				polyline.setPath(path);
			}else if(${i.plan =='에버랜드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/784414359" target="_blank"><strong>에버랜드</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/everland.jpg" alt="">';
				content += '        <span class="address">경기 용인시 처인구 포곡읍 에버랜드로 199</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2939146, 127.2003777),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2939146, 127.2003777));
				polyline.setPath(path);
			}else if(${i.plan =='에버랜드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/784414359" target="_blank"><strong>에버랜드</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/everland.jpg" alt="">';
				content += '        <span class="address">경기 용인시 처인구 포곡읍 에버랜드로 199</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2939146, 127.2003777),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2939146, 127.2003777));
				polyline.setPath(path);
			}else if(${i.plan =='킨텍스'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/11373858" target="_blank"><strong>킨텍스</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/kintex.jpg" alt="">';
				content += '        <span class="address">경기 고양시 일산서구 킨텍스로 217-60</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.6694205, 126.7444359),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.6694205, 126.7444359));
				polyline.setPath(path);
			}else if(${i.plan =='한국민속촌'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/8135083" target="_blank"><strong>한국민속촌</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/koreanfolk.jpg" alt="">';
				content += '        <span class="address">경기 용인시 기흥구 민속촌로 90</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2597586, 127.1183566),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2597586, 127.1183566));
				polyline.setPath(path);
			}else if(${i.plan =='스타필드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/25894201" target="_blank"><strong>스타필드 하남</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/starfield.jpg" alt="">';
				content += '        <span class="address">경기 하남시 미사대로 750</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5456355, 127.221339),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5456355, 127.221339));
				polyline.setPath(path);
			}else if(${i.plan =='월미도'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/12461589" target="_blank"><strong>월미도</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/wolmido.jpg" alt="">';
				content += '        <span class="address">인천 중구 북성동1가 산1</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.4754165, 126.58906),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.4754165, 126.58906));
				polyline.setPath(path);
			}else if(${i.plan =='팔당댐'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/8120017" target="_blank"><strong>팔당댐</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/paldangdam.jpg" alt="">';
				content += '        <span class="address">경기 하남시 배알미동 46-1</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.5259217, 127.2765151),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.5259217, 127.2765151));
				polyline.setPath(path);
			}else if(${i.plan =='광교호수공원'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/15099364" target="_blank"><strong>광교호수공원</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/gglakepark.jpg" alt="">';
				content += '        <span class="address">경기 수원시 영통구 하동 1020</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2831272, 127.0637281),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2831272, 127.0637281));
				polyline.setPath(path);
			}else if(${i.plan =='일산호수공원'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/26298671" target="_blank"><strong>일산호수공원</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/islakepark.jpg" alt="">';
				content += '        <span class="address">경기 고양시 일산동구 장항동 906</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.6589427, 126.7588216),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.6589427, 126.7588216));
				polyline.setPath(path);
			}else if(${i.plan =='수원화성'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/17985162" target="_blank"><strong>수원화성</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/hwaseong.jpg" alt="">';
				content += '        <span class="address">경기 수원시 장안구 영화동 320-2</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2876849, 127.0158681),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2876849, 127.0158681));
				polyline.setPath(path);
			}/*강원도*/else if(${i.plan =='경포대'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/10158575" target="_blank"><strong>경포대</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/kyungpo.jpg" alt="">';
				content += '        <span class="address">강원 강릉시 경포로 365</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.7950471, 128.8944488),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.7950471, 128.8944488));
				polyline.setPath(path);
			}else if(${i.plan =='정동진'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/11164998" target="_blank"><strong>정동진</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/jeongdongjin.jpg" alt="">';
				content += '        <span class="address">강원 강릉시 강동면 정동진리 257-2</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.6904356, 129.0261226),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.6904356, 129.0261226));
				polyline.setPath(path);
			}else if(${i.plan =='통일전망대'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/11272167" target="_blank"><strong>통일전망대</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/tongil.jpg" alt="">';
				content += '        <span class="address">강원 고성군 현내면 금강산로 481</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(38.5864577, 128.3728661),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(38.5864577, 128.3728661));
				polyline.setPath(path);
			}else if(${i.plan =='낙산사'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/8225120" target="_blank"><strong>낙산사</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/naksansa.jpg" alt="">';
				content += '        <span class="address">강원 양양군 강현면 낙산사로 100</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(38.1246198, 128.6258564),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(38.1246198, 128.6258564));
				polyline.setPath(path);
			}else if(${i.plan =='강원랜드'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/26542141" target="_blank"><strong>강원랜드</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/gangwonland.jpg" alt="">';
				content += '        <span class="address">강원 정선군 사북읍 하이원길 265</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.2118383, 128.8196123),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.2118383, 128.8196123));
				polyline.setPath(path);
			}else if(${i.plan =='알펜시아'}){
				var content = '<div class="overlay_info">';
				content += '    <a href="http://place.map.daum.net/26977193" target="_blank"><strong>알펜시아</strong></a>';
				content += '    <div class="desc">';
				content += '        <img src="../images/mapimage/naksansa.jpg" alt="">';
				content += '        <span class="address">강원 평창군 대관령면 솔봉로 325</span>';
				content += '    </div>';
				content += '</div>';
				var customOverlay = new daum.maps.CustomOverlay({
					position : new daum.maps.LatLng(37.652052, 128.6659824),
					content : content,
					xAnchor : 0.5,
					yAnchor : 1.1,
					map : map
				});
				path.push(new daum.maps.LatLng(37.652052, 128.6659824));
				polyline.setPath(path);
			}
		</c:forEach>
	var check = true;
	$("#folder").click(function() {
		if (check) {
			$("#seltrip").animate({
				width : '0%'
			}, "fast");
			$("#seltrip").css("display", "none");
			$("#map").animate({
				width : '77%'
			}, "fast");
			$("#folder").css("background-image", 'url("../images/mapimage/open-btn.png")');
			check = !check;
		} else {
			$("#seltrip").animate({
				width : '17%'
			}, "fast");
			$("#seltrip").css("display", "inline-block");
			$("#map").animate({
				width : '60%'
			}, "fast");
			$("#folder").css("background-image", 'url("../images/mapimage/close-btn.png")');
			check = !check;
		}
	});
	
	
});
</script>
</head>
<body>
	<div id="map1">
		<span style="cursor: pointer"><div id="folder"></div></span>
	</div>
</body>
</html>