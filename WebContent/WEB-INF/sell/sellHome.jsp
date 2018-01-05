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
<link href="../css/sell/sellHome.css" rel="stylesheet">
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
				<li>BEST EXCHANGE</li>
			</ul>
		</div>
		
		<div class="title_board">
			<ul class="title">
				<li>BEST PRODUCT</li>
			</ul>
		</div>

		<!--Main 끝-->

		<!--Footer 시작-->
		<footer></footer>
		<!--Footer 끝-->

	</form>
</body>
</html>