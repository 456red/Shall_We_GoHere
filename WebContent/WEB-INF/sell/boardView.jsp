<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="../css/boardView.css" rel="stylesheet">
<link href="../css/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
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
			<li>＜${board} View＞</li>
		</ul>
	</div>

	<section class="view_board">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>TITLE</th>
					<th>WRITER</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
				<tr>
					<th>${view.title}</th>
					<th>${view.writer}</th>
					<th>${view.reg_date}</th>
					<th>${view.hit}</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td colspan="4">${view.contents}</td>
				</tr>
			</tbody>
		</table>
		<a class="btn btn-success" href="./${board}List.sell">List</a> 
		<a class="btn btn-primary" href="${board}Update.sell?num=${view.num}">Update</a>
		<a class="btn btn-danger" href="${board}Delete.sell?num=${view.num}">Delete</a>

		<div id="btn">
			<button class="btn btn-secondary">Reply</button>
		</div>
	</section>
	<!--Main 끝-->

	<!--Footer 시작-->
	<footer></footer>
	<!--Footer 끝-->
</body>
</html>