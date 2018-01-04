<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a19c66a46e7e0eef8b10f39d33359eab"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="../css/planing.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<script type="text/javascript">
	$(function() {
		var ref=${ar[0].ref};
		var step=0;
		var day=1;
		var lat =${ar[0].lat};
		var lng =${ar[0].lng};
		var level =${ar[0].level};
		$.get("./days.schedule?ref=${ar[0].ref}",function(data){
			$("#myplan").html(data);
		});
		$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
			$("#map").html(data);
		});
		
		//서울시
		$("#gyeongbokgung").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"경복궁"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#changdeokgung").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"창덕궁"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#63building").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"63빌딩"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#nseoultower").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"남산타워"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#cheonggyecheon").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"청계천"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#lotteworld").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"롯데월드"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#gwanghwamun").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"광화문"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#myongdongcatedral").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"명동성당"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#coex").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"코엑스"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		//경기도
		$("#seoulland").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"서울랜드"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#kintex").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"킨텍스"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#everland").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"에버랜드"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		$("#koreanfolk").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"한국민속촌"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#starfield").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"스타필드"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#wolmido").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"월미도"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#paldangdam").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"팔당댐"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#gglakepark").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"광교호수공원"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#islakepark").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"일산호수공원"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#hwaseong").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"수원화성"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		//강원도
		$("#kyungpo").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"경포대"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#jeongdongjin").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"정동진"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#tongil").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"통일전망대"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#naksansa").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"낙산사"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#gangwonland").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"강원랜드"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		$("#alpensia").click(function() {
			$.post("./days.schedule", {ref:ref, step:step, day:day, name:"알펜시아"}, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
		});
		
		
		$(".select-city").hide();
		$("#select-${ar[0].city}").show();
		
		$("#choosecity").change(function() {
			$("#choice").text(this.value);
			if ($("#choice").text() == "서울시") {
				$(".select-city").hide();
				$("#select-서울시").show();
				lat=37.550913;
				lng=126.990934;
				level=8;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			} else if ($("#choice").text() == "경기도") {
				$(".select-city").hide();
				$("#select-경기도").show();
				lat=37.435819;
				lng=127.258403;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "강원도") {
				$(".select-city").hide();
				$("#select-강원도").show();
				lat=37.745446;
				lng=128.414882;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "충청북도") {
				$(".select-city").hide();
				$("#select-충청북도").show();
				lat=36.660391;
				lng=127.818919;
				level=9;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "충청남도") {
				$(".select-city").hide();
				$("#select-충청남도").show();
				lat=36.503702;
				lng=126.948530;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "경상북도") {
				$(".select-city").hide();
				$("#select-경상북도").show();
				lat=36.372570;
				lng=128.795024;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "경상남도") {
				$(".select-city").hide();
				$("#select-경상남도").show();
				lat=35.326050;
				lng=128.269909;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "전라북도") {
				$(".select-city").hide();
				$("#select-전라북도").show();
				lat=35.738028;
				lng=127.182091;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "전라남도") {
				$(".select-city").hide();
				$("#select-전라남도").show();
				lat=34.919679;
				lng=126.942912;
				level=10;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}else if ($("#choice").text() == "제주도") {
				$(".select-city").hide();
				$("#select-제주도").show();
				lat=33.370591;
				lng=126.545562;
				level=9;
				$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
					$("#map").html(data);
				});
			}
		});

		$(".city_plan").click(function() {
			step = $(this).attr("id");
			day = $(this).attr("title");
			$.get("./days.schedule?ref=${ar[0].ref}&step="+step+"&day="+day, function(data){
				$("#myplan").html(data);
			});
			$.post("./map.schedule",{ref:ref, step:step, day:day, lat:lat, lng:lng, level:level}, function(data){
				$("#map").html(data);
			});
			
		});
		
		
	});
</script>
</head>
<body>
	<%@include file="../temp/header.jsp"%>
	<div id="contents">
		<div id="plan-day">
			<p>${date}~</p>
			<c:forEach begin="0" end="${ar.size()}" var="i">
				<c:forEach begin="1" end="${ar[i].days}" var="z">
					<div class="city_plan" id="${i}" title="${z}"
						style="cursor: pointer;">
						<p>${ar[i].city}</p>
						<p>DAY ${z}</p>
					</div>
				</c:forEach>
			</c:forEach>
		</div>
		<div id="myplan"></div>
		<div id="seltrip">
			<div id="selcity">
				<b id="choice">${ar[0].city}</b> <select name="choosecity"
					id="choosecity">
					<c:forEach items="${ar}" var="i">
						<option>${i.city}</option>
					</c:forEach>
				</select>
				<div class="select-city" id="select-서울시">
					<span style="cursor: pointer">
						<div class="mapsel" id="gyeongbokgung">경복궁</div>
					</span> 
					<span style="cursor: pointer">
						<div class="mapsel" id="changdeokgung">창덕궁</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="63building">63빌딩</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="nseoultower">서울N타워</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="cheonggyecheon">청계천</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="lotteworld">롯데월드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gwanghwamun">광화문</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="myongdongcatedral">명동성당</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="coex">코엑스</div>
					</span>
				</div>
				
				<div class="select-city" id="select-경기도">
					<span style="cursor: pointer">
						<div class="mapsel" id="seoulland">서울랜드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="everland">에버랜드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="kintex">킨텍스</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="koreanfolk">한국민속촌</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="starfield">스타필드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="wolmido">월미도</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="paldangdam">팔당댐</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gglakepark">광교호수공원</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="islakepark">일산호수공원</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="hwaseong">수원화성</div>
					</span>
				</div>
				
				<div class="select-city" id="select-강원도">
					<span style="cursor: pointer">
						<div class="mapsel" id="kyungpo">경포대</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="jeongdongjin">정동진</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="tongil">통일전망대</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="naksansa">낙산사</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gangwonland">강원랜드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="alpensia">알펜시아</div>
					</span>
				</div>
				
				<div class="select-city" id="select-충청북도">
					<span style="cursor: pointer">
						<div class="mapsel" id="chungjudam">충주댐</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gosucave">고수동굴</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="tamgumdae">탄금대</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="uirimji">의림지</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="geumgang">금강휴게소</div>
					</span>
				</div>
				
				<div class="select-city" id="select-충청남도">
					<span style="cursor: pointer">
						<div class="mapsel" id="muryeong">무령왕릉</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="hyunchungsa">현충사</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="daechungdam">대청댐</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="hanbittower">한빛탑</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="sejonglakepark">세종호수공원</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="sungsimdang">성심당</div>
					</span>
				</div>
				
				<div class="select-city" id="select-경상북도">
					<span style="cursor: pointer">
						<div class="mapsel" id="bulguksa">불국사</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="sukgulam">석굴암</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="anapji">안압지</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="cheonmachong">천마총</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gyeongjuworld">경주월드</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="hahoe">하회마을</div>
					</span>
				</div>
				
				<div class="select-city" id="select-경상남도">
					<span style="cursor: pointer">
						<div class="mapsel" id="seomun">대구서문시장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="ganjeolgot">간절곶</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="lottewaterpark">롯데워터파크</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="haeinsa">해인사</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="haeundae">해운대해수욕장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gwanganri">광안리해수욕장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="sajikstadium">사직야구장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="jagalchimarket">자갈치시장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gukjemarket">국제시장</div>
					</span>
				</div>
				
				<div class="select-city" id="select-전라북도">
					<span style="cursor: pointer">
						<div class="mapsel" id="saemangeum">새만금방조제</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="byeokgolje">벽골제</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="jeonjuhanok">전주한옥마을</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="ohmokdae">오목대</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="imsilcheese">임실치즈테마파크</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="gwanghanru">광한루</div>
					</span>
				</div>
				
				<div class="select-city" id="select-전라남도">
					<span style="cursor: pointer">
						<div class="mapsel" id="narospacecenter">나로우주센터</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="bosunggreentea">보성녹차밭</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="yeosuexpo">여수엑스포</div>
					</span>
				</div>
				
				<div class="select-city" id="select-제주도">
					<span style="cursor: pointer">
						<div class="mapsel" id="seongsan">성산일출봉</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="columnarjoint">대포해안주상절리대</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="cheonjiyeon">천지연폭포</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="seopjikoji">섭지코지</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="hyeopjae">협재해수욕장</div>
					</span>
					<span style="cursor: pointer">
						<div class="mapsel" id="woljeongri">월정리해변</div>
					</span>
				</div>
				
			</div>
		</div>
		<div id="map">
		</div>
	</div>
</body>
</html>