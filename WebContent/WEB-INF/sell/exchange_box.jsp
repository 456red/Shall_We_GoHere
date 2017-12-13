<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.view_board_2 {
	width: 1200px;
	height: 2650px;
	margin: 0 auto;
	border-bottom: 1px solid black;
}

.p_2 {
	margin-left: 100px;
	width: 1000px;
	height: 650px;
	padding-top: 30px;
	padding-bottom: 30px;
}

.del_board {
	width: 1200px;
	height: 530px;
	padding-top: 33px;
	padding-bottom: 30px;
	margin: 0 auto; 
	border-bottom: 1px solid black;
	background-color: blue;
}

.del {
	width : 856px;
	height: 470px;
	margin: 0 auto; 
}
</style>
<link href="../css/exchange_box.css" rel="stylesheet">
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

	<section class="product_board">
		<article class="product_board_2">
			<div class="product_list">
				<div class="product_box">
					<img alt="" src="../images/sell/box/box_2.jpg" id="p">
				</div>
				<div class="info_board">
					<div class="info" id="product_info">잠실 롯데월드 자유이용권</div>
					<div class="info" id="point">Point : 15000P</div>
					<div id="quantity">
						수량 : <input type="number" placeholder="필수 선택">
					</div>
					<div class="info" id="tot">Point Total : 30000P</div>
					<div class="buy">
						<a href="#">BUY NOW</a>
					</div>
					<div class="cart">
						<a href="#">ADD TO CART</a>
					</div>
				</div>
			</div>
		</article>
	</section>

	<section class="view_board">
		<article class="view_board_2">
			<div>
				<img alt="" src="../images/sell/box/box_1.jpg" class="p_2">
			</div>
			<div>
				<img alt="" src="../images/sell/box/box.jpg" class="p_2">
			</div>
			<div>
				<img alt="" src="../images/sell/box/box_3.jpg" class="p_2">
			</div>
			<div>
				<img alt="" src="../images/sell/box/box_2.jpg" class="p_2">
			</div>
		</article>
		<article class="del_board">
			<div>
				<img alt="" src="../images/sell/box/deliver.PNG">
			</div>
		</article>
	</section>

	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>