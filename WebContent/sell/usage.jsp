<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<style type="text/css">

</style>
<link href="../css/usage.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->


	<!--Main 시작-->
	<section class="main">
		<article class="wrap">
			<img  alt="" src="../images/sell/use.PNG">
		</article>
	</section>

	<section class="kate_board">
		<ul class="kate_line">
			<li><a href="#">이용 방법</a></li>
			<li><a href="./exchange.jsp">상품 교환</a></li>
			<li><a href="#">상품 구매</a></li>
			<li><a href="#">이용권</a></li>
			<li><a href="#">여행 용품</a></li>
			<li><a href="#">상품 후기</a></li>
		</ul>
	</section>

	<div class="title_board">
		<ul class="title">
			<li>＜이용 방법＞</li>
		</ul>
	</div>

	<section class="use_board">
		<article class="use_board_2">
			<div class="use_title">1. 상품 교환 방법</div>
			<div class="exchange_board"></div>

			<div class="use_title_2">2. 상품 구매 방법</div>
			<div class="product_board"></div>
		</article>
	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>