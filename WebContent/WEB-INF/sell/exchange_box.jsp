<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
	
<title>Insert title here</title>
<style type="text/css">

</style>
<link href="../css/sell/exchange_box.css" rel="stylesheet">
<link href="../css/sell/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->

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