<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.kate_board {
	width: 1903px;
	height: 50px;
	background-color: buttonface;
}

.kate_line {
	width: 1500px;
	height: 50px;
	margin: 0 auto;
}

.kate_line li {
	float : left;
	list-style-type: none;
	cursor: pointer;
	padding: 16px 0 13px;
	margin-left: 150px;
	font-size: 15px;
}

.p {
	width: 300px;
	height: 300px;
}
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
			<div class="main_title">＜상품 교환 / 중고 판매＞</div>
			<div class="main_desc">Point 사용! / 사기 NO! 안심 거래!</div>
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
			<li>전체 카테고리</li>
			<li>상품 교환</li>
			<li>상품 구매</li>
			<li>이용권</li>
			<li>여행 용품</li>
			<li>상품 후기</li>
		</ul>
	</section>

	<section class="product_board">
		<article class="product_board_2">
			<div class="product_title">!!Point 상품 BEST!!</div>
			<div class="product_list">
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">상품권</div>
					<div>종류 : 문화 상품권</div>
					<div>Point : 25,000점</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">입장권</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>Point : 12,000점</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">입장권</div>
					<div>종류 : 서울 잠실 아이스링크 입장권</div>
					<div>Point : 30,000점</div>
				</div>
			</div>

			<div class="product_2_title">!!구매 상품 BEST!!</div>
			<div class="product_list">
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 롯데월드 자유이용권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 25,000원</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">부산 관광</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 14,000원</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 아이스링크 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 40,000원</div>
				</div>
			</div>
			
			<div class="product_list">
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">서울 관광</div>
					<div>종류 : 잠실 롯데월드 자유이용권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 25,000원</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
					<div class="box_title">부산 관광</div>
					<div>종류 : 부산 코믹월드 입장권</div>
					<div>기간 : 2017.12.25</div>
					<div>금액 : 14,000원</div>
				</div>
				<div class="product_box">
					<img alt="" src="../images/sell/box.jpg" class="p">
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
	<footer>
	<h1>Footer3</h1>
	</footer>
	<!--Footer 끝-->


</body>
</html>