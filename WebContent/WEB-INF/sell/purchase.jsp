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

<link href="../css/sell/purchase.css" rel="stylesheet">
<link href="../css/sell/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
</head>
<body>
	<form action="./sellHome.sell" method="post">
		<!--Header 시작-->
		<%@include file="../temp/header.jsp"%>
		<!--Header 끝-->

		<!--Main 시작-->

		<%@include file="../temp/sell_kate.jsp"%>

		<div class="title_board">
			<ul class="title">
				<li>PURCHASE List</li>
			</ul>
		</div>

		<section class="product_board">
			<article class="product_board_2">
				<div class="product_title">BEST PRODUCT</div>
				<div class="product_list">
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/point_1.PNG"
							class="p"></a>
						<div class="box_title">상품권</div>
						<div>종류 : 문화 상품권</div>
						<div>Point : 25,000점</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/point_2.PNG"
							class="p"></a>
						<div class="box_title">입장권</div>
						<div>종류 : 부산 코믹월드 입장권</div>
						<div>Point : 12,000점</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/point_3.PNG"
							class="p"></a>
						<div class="box_title">입장권</div>
						<div>종류 : 용인 캐리비안 베이</div>
						<div>Point : 30,000점</div>
					</div>
				</div>

				<div class="product_2_title">NEW PRODUCT</div>
				<div class="product_list">
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/trip_1.PNG"
							class="p"></a>
						<div class="box_title">서울 관광</div>
						<div>종류 : 잠실 롯데월드 자유이용권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 25,000원</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/trip_2.PNG"
							class="p"></a>
						<div class="box_title">부산 관광</div>
						<div>종류 : 부산 코믹월드 입장권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 14,000원</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/trip_3.PNG"
							class="p"></a>
						<div class="box_title">서울 관광</div>
						<div>종류 : 잠실 아이스링크 입장권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 40,000원</div>
					</div>
				</div>

				<div class="product_list">
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/point_1.PNG"
							class="p"></a>
						<div class="box_title">서울 관광</div>
						<div>종류 : 잠실 롯데월드 자유이용권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 25,000원</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/point_2.PNG"
							class="p"></a>
						<div class="box_title">부산 관광</div>
						<div>종류 : 부산 코믹월드 입장권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 14,000원</div>
					</div>
					<div class="product_box">
						<a href="#"><img alt="" src="../images/sell/trip_1.PNG"
							class="p"></a>
						<div class="box_title">서울 관광</div>
						<div>종류 : 잠실 아이스링크 입장권</div>
						<div>기간 : 2017.12.25</div>
						<div>금액 : 40,000원</div>
					</div>
				</div>
			</article>
		</section>
		<!--Main 끝-->

		<!--Footer 시작-->
		<footer></footer>
		<!--Footer 끝-->
	</form>
</body>
</html>