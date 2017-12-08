<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<link href="../css/sell.css" rel="stylesheet">
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->
	<section class="main">
		<article class="wrap">
			<div class="main_title">＜상품 교환 / 구매＞</div>
			<div class="main_desc">Point 사용! / 안심 거래!</div>
			<div class="search_area">
				<input class="search_input" placeholder="상품으로 검색" type="search">
				<div class="latest_search">
					추천 상품 : <a href="#" class="latest_a">티켓, </a> <a href="#"
						class="latest_a">여행 용품</a>
				</div>
			</div>
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

	<section class="product_board">
		<article class="product_board_2">
			<div class="product_title">BEST EXCHANGE</div>
			<div class="product_list">
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/point_1.PNG" class="p"></a>
					<div class="box_title">상품권</div>
					<div>종류 : 문화 상품권</div>
					<div>Point : 25,000점</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/point_2.PNG" class="p"></a>
					<div class="box_title">입장권</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>Point : 12,000점</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/point_3.PNG" class="p"></a>
					<div class="box_title">입장권</div>
					<div>종류 : 용인 캐리비안 베이</div>
					<div>Point : 30,000점</div>
				</div>
			</div>

			<div class="product_2_title">BEST PTODUCT</div>
			<div class="product_list">
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/trip_1.PNG" class="p"></a>
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 롯데월드 자유이용권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 25,000원</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/trip_2.PNG" class="p"></a>
					<div class="box_title">부산 관광</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 14,000원</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/trip_3.PNG" class="p"></a>
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 아이스링크 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 40,000원</div>
				</div>
			</div>
			
			<div class="product_list">
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/point_1.PNG" class="p"></a>
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 롯데월드 자유이용권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 25,000원</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/point_2.PNG" class="p"></a>
					<div class="box_title">부산 관광</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 14,000원</div>
				</div>
				<div class="product_box">
					<a href="#"><img alt="" src="../images/sell/trip_1.PNG" class="p"></a>
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


</body>
</html>