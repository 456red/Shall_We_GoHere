<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">

</style>
<link href="../css/review.css" rel="stylesheet">
<link href="../css/sell_kate.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->
	<section class="main">
		<article class="wrap">
			<img alt="" src="../images/sell/point_1.PNG">
		</article>
	</section>

<%@include file="../temp/sell_kate.jsp"%>

	<div class="title_board">
		<ul class="title">
			<li>＜Review List＞</li>
		</ul>
	</div>

	<section class="list_board">
		<article class="list_board_2">
			<table class="table table-hover">
				<tr>
					<td>NO</td>
					<td>TITLE</td>
					<td>WRITER</td>
					<td>RGE_DATE</td>
					<td>HIT</td>
				</tr>
			</table>
		</article>
	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->

</body>
</html>