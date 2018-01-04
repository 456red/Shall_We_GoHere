<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>7장 sample</title>
<script src="https://d3js.org/d3.v4.min.js"></script>
<style>

.chart div {
  font: 10px sans-serif;
  background-color: steelblue;
  text-align: right;
  padding: 3px;
  margin: 1px;
  color: white;
 
}

#myGraph {
	width: 800px;
	height: 400px;
	border: 1px solid black;
}

</style>
	<div id="myGraph">

<div class="chart">
</div>
        </div>

<script type="text/javascript">
var data = [7,10,13,40,13,70];


var chart = d3.select(".chart");

var bar = chart.selectAll("div");

var barUpdate = bar.data(data);

var barEnter = barUpdate.enter().append("div");

barEnter.style("width", function(d) { return d * 10 + "px"; });

barEnter.text(function(d){ return d; });


</script>
</head>
<body>



</body>

</html>