<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/header.css" rel="stylesheet">
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a19c66a46e7e0eef8b10f39d33359eab"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new daum.maps.LatLng(36.715917, 128.026130), //지도의 중심좌표.
		level: 12 //지도의 레벨(확대, 축소 정도)
	
	};
  
	var map = new daum.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var citynum = 0;
	
	$("#seoul").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=8 name="level"><input type="hidden" value=37.550913 name="lat"><input type="hidden" value=126.990934 name="lng"><input type="hidden" value="서울시" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="sedel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>서울특별시<span class="seminus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="seplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var ar = $(".plan-date");
		var j=0;
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".seminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		$("."+a).val($("."+a).val()*1-1);
		var ar = $(".plan-date");
		var j=0;
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".seplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		$("."+a).val($("."+a).val()*1+1);
		var ar = $(".plan-date");
		var j=0;
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".sedel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	}); 
	
	$("#gyeonggi").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=37.435819 name="lat"><input type="hidden" value=127.258403 name="lng"><input type="hidden" value="경기도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="gydel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>경기도<span class="gyminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="gyplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".gyminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		$("."+a).val($("."+a).val()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gyplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		$("."+a).val($("."+a).val()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gydel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#gangwon").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=37.745446 name="lat"><input type="hidden" value=128.414882 name="lng"><input type="hidden" value="강원도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="gadel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>강원도<span class="gaminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="gaplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".gaminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gaplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gadel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#chungbuk").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=9 name="level"><input type="hidden" value=36.660391 name="lat"><input type="hidden" value=127.818919 name="lng"><input type="hidden" value="충청북도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="cbdel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>충청북도<span class="cbminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="cbplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".cbminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".cbplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".cbdel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#chungnam").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=36.503702 name="lat"><input type="hidden" value=126.948530 name="lng"><input type="hidden" value="충청남도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="cndel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>충청남도<span class="cnminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="cnplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".cnminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".cnplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".cndel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	
	$("#gyeongbuk").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=36.372570 name="lat"><input type="hidden" value=128.795024 name="lng"><input type="hidden" value="경상북도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="gbdel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>경상북도<span class="gbminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="gbplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".gbminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gbplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gbdel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#gyeongnam").on("click", function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=35.326050 name="lat"><input type="hidden" value=128.269909 name="lng"><input type="hidden" value="경상남도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="gndel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>경상남도<span class="gnminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="gnplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".gnminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gnplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".gndel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#jeonbuk").click(function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=35.738028 name="lat"><input type="hidden" value=127.182091 name="lng"><input type="hidden" value="전라북도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="jbdel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>전라북도<span class="jbminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="jbplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".jbminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jbplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jbdel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#jeonnam").click(function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=34.919679 name="lat"><input type="hidden" value=126.942912 name="lng"><input type="hidden" value="전라남도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="jndel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>전라남도<span class="jnminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="jnplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".jnminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jnplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jndel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#jeju").click(function(){
		$("#plan").css("display", "inline-block");
		$("#plan").animate({width: '300px'}, "slow");
		$("#plan").css("height", "+=40px");
		$("#plan-city").append('<div class="plan-sel"><input type="hidden" value=10 name="level"><input type="hidden" value=33.370591 name="lat"><input type="hidden" value=126.545562 name="lng"><input type="hidden" value="제주도" name="city"><input type="hidden" class="'+citynum+'" value=2 name="days"><span class="jjdel-btn" style="cursor:pointer"><img src="../images/mapimage/del-btn.png"></span>제주도<span class="jjminus-btn" title= "'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/minus-btn.png"></span><span class="plan-date" id="'+citynum+'">'+2+'</span>일<span class="jjplus-btn" title="'+citynum+'" style="cursor:pointer"><img src="../images/mapimage/plus-btn.png"></span></div>');
		citynum = citynum+1;
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	
	$("#plan-city").on("click", ".jjminus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1-1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jjplus-btn", function(){
		var a = $(this).attr("title");
		$("#"+a).text($("#"+a).text()*1+1);
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#plan-city").on("click", ".jjdel-btn", function(){
		$("#plan").css("height", "-=40px");
		$(this).parent().remove();
		var j=0;
		var ar = $(".plan-date");
		for(var i=0;i<ar.length;i++){
			j+=ar[i].innerHTML*1;
		}
		$("#trap-day").text("총 여행 일수 :"+j);
	});
	$("#btn").click(function(){
		$("form").submit();
	});
});
</script>
<link href="../css/goMap.css" rel="stylesheet">
</head>
<body>
<%@include file="../temp/header.jsp" %>
	<div id="mapMenu">
		<div class="mapsel">어디 갈래?</div>
		<span style="cursor:pointer"><div class="mapsel" id="seoul">서울특별시</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="gyeonggi">경기도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="gangwon">강원도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="chungbuk">충청북도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="chungnam">충청남도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="gyeongbuk">경상북도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="gyeongnam">경상남도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="jeonbuk">전라북도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="jeonnam">전라남도</div></span>
		<span style="cursor:pointer"><div class="mapsel" id="jeju">제주도</div></span>
		
	</div>
	<div id="map">
		<div id="plan">
			<div><b>여기 갈래!</b></div>
			<form action="./planing.schedule" method="post">
				<p><input type="text" placeholder="여행 제목" name="title"></p>
				<p id="plan-city"></p>
				<p>출발일<input type="date" name="date"></p>
				<p id= "trap-day">
				총 여행 일수 : 0</p>
				<hr>
				<div><input type="button" value="상세 일정 만들기" id="btn"></div>
			</form>
		</div>
	</div>
</body>
</html>