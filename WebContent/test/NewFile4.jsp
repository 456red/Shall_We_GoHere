<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <meta charset="utf-8">
  <title>Let's Make Bar Chart</title>
  <script type="text/javascript">
  $(function(){
	  var i1 = 60;
	  var i2 = 120;
	  var i3 = 150;
	  var i4 = 132;
	  var i5 = 40;
	  var i6 = 200;
	  var i7 = 600;
	  var i8 = 47;
	  var i9 = 300;
	  var i10 = 500;
	  var i11 = 64;
	  var i12 = 180;
	  
	  $("#dv1").animate({width: ''+i1+'px'}, "slow");
	  $("#dv2").animate({width: ''+i2+'px'}, "slow");
	  $("#dv3").animate({width: ''+i3+'px'}, "slow");
	  $("#dv4").animate({width: ''+i4+'px'}, "slow");
	  $("#dv5").animate({width: ''+i5+'px'}, "slow");
	  $("#dv6").animate({width: ''+i6+'px'}, "slow");
	  $("#dv7").animate({width: ''+i7+'px'}, "slow");
	  $("#dv8").animate({width: ''+i8+'px'}, "slow");
	  $("#dv9").animate({width: ''+i9+'px'}, "slow");
	  $("#dv10").animate({width: ''+i10+'px'}, "slow");
	  $("#dv11").animate({width: ''+i11+'px'}, "slow");
	  $("#dv12").animate({width: ''+i12+'px'}, "slow");
	  
	  $("button").click(function(){
		  
	  })
	  
  })
  </script>
<style>
#all{
 width: 1500px;
 display: inline-block;	
 float: left;

}
#sub{
	margin-top: 10px;
	width:50px;
	float: left;
	
}
#canverse{
	width: 900px;
	border: 1px solid black;
	margin-right:540px;
	margin-top:23px;
	float: right;
	
}

#sub h5{
	margin-top: 24px;
}
.chart div {
  font: 10px sans-serif;
  background-color: steelblue;
  text-align: right;
  padding: 7px;
  margin-top:13px;
  color: white;
}

</style>
</head>
<body>
<div id="all">
<div id="sub">
<h5>2013/01</h5>
<h5>2013/02</h5>
<h5>2013/03</h5>
<h5>2013/04</h5>
<h5>2013/05</h5>
<h5>2013/06</h5>
<h5>2013/07</h5>
<h5>2013/08</h5>
<h5>2013/09</h5>
<h5>2013/10</h5>
<h5>2013/11</h5>
<h5>2013/12</h5>
<h5>월/인원()</h5>
</div>
<div id="canverse">
<div class="chart">
  <div style="width: 0px;" id="dv1">4</div>
  <div style="width: 0px;" id="dv2">8</div>
  <div style="width: 0px;" id="dv3">15</div>
  <div style="width: 0px;" id="dv4">16</div>
  <div style="width: 0px;" id="dv5">100</div>
  <div style="width: 0px;" id="dv6">150</div>
  <div style="width: 0px;" id="dv7">130</div>
  <div style="width: 0px;" id="dv8">200</div>
  <div style="width: 0px;" id="dv9">300</div>
  <div style="width: 0px;" id="dv10">250</div>
  <div style="width: 0px;" id="dv11">270</div>
  <div style="width: 0px;" id="dv12">600</div>
  
  
</div>
</div>

</div>
<button>click</button>
</body>
</html>