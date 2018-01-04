<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	
	var num = [10,20,30,40,50,60,70,80,90,100,110,120];
	for(var i=0; i<12; i++){
		$("#"+(i+1)).animate({width:''+num[i]+'px'},"slow");
		$("#"+(i+1)).text(num[i]);
	}
	
	$("button").click(function(){
		
		var ar = new Array();
		var arr = new Array();
		
	 
	for(var i=1; i<13;i++){
		ar.push($("#"+i).css("width").replace("px","")*1); // 데이터 저장
		arr.push($("#x"+i));
	}
	
	ar.sort(function(a, b){
		return b-a;
	}); //데이터 큰수부터 작은수 정렬
	
	arr.sort(function(a, b){
		return b-a;
	});
	
	alert(arr[0].attr("title")*1);
	alert($("#1").css("width").replace("px","")*1);
	
	for(var i=0; i<12; i++){
		$("#"+(i+1)).animate({width:''+ar[i]+'px'},"slow");
		$("#"+(i+1)).attr("title",ar[i]);
		
	}
	
	})
});
</script>
</head>
<body>

<div class="container" style="width:1300px; height:1200px; position: absolute;">
	<div style="width:1200px; height: 1200px;  border: 1px solid black; margin: 0 auto;">
	
		<div title="120" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x1">
		<span id="y1" title="120">01월</span><div class="dv" title="10" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id='1'></div>
		</div>
		
		<div title="110" style="width:1200px; height: 100px;color:black; background-color:red; text-align: left;" id="x2">
		<span id="y2" title="02월">02월</span><div class="dv" title="20" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="2"></div>
		</div>
		
		<div title="100" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x3">
		<span id="y3" title="03월">03월</span><div class="dv" title="30" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="3"></div>
		</div>
		
		<div title="90" style="width:1200px; height: 100px; color:black;background-color:red; text-align: left;" id="x4">
		<span id="y4" title="04월">04월</span><div class="dv" title="40" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="4"></div>
		</div>
		
		<div title="80" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x5">
		<span id="y5" title="05월">05월</span><div class="dv" title="50" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="5"></div>
		</div>
		
		<div title="70" style="width:1200px; height: 100px; color:black; background-color:red; text-align: left;" id="x6">
		<span id="y6" title="06월">06월</span><div class="dv" title="60" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="6"></div>
		</div>
		
		<div title="60" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x7">
		<span id="y7" title="07월">07월</span><div class="dv" title="70" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="7"></div>
		</div>
		
		<div title="50" style="width:1200px; height: 100px; color:black; background-color:red; text-align: left;" id="x8">
		<span id="y8" title="08월">08월</span><div class="dv" title="80" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="8"></div>
		</div>
		
		<div title="40" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x9">
		<span id="y9" title="09월">09월</span><div class="dv" title="90" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="9"></div>
		</div>
		
		<div title="30" style="width:1200px; height: 100px; color:black; background-color:red; text-align: left;" id="x10">
		<span id="y10" title="10월">10월</span><div class="dv" title="100" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="10"></div>
		</div>
		
		<div title="20" style="width:1200px; height: 100px; color:black; background-color:blue; text-align: left;" id="x10">
		<span id="y11" title="11월">11월</span><div class="dv" title="110" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="11"></div>
		</div>
		
		<div title="10" style="width:1200px; height: 100px; color:black; background-color:red; text-align: left;" id="x10">
		<span id="y12" title="12월">12월</span><div class="dv" title="120" style="width: 0px; color:white; background-color: green; padding: 5px; text-align: right;" id="12"></div>
		</div>
		
	</div>
		<button>click</button>
</div>

</body>
</html>