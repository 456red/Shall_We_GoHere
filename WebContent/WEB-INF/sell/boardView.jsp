<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
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

<link href="../css/sell/boardView.css" rel="stylesheet">
<link href="../css/sell/sell_kate.css" rel="stylesheet">
<link href="../css/header.css" rel="stylesheet">
<script type="text/javascript">
	<c
</script>
</head>
<body>
	<!--Header 시작-->
	<%@include file="../temp/header.jsp"%>
	<!--Header 끝-->

	<!--Main 시작-->

	<%@include file="../temp/sell_kate.jsp"%>

	<div class="title_board">
		<ul class="title">
			<li>${board}</li>
		</ul>
	</div>

	<section class="view_board">
		<article class="view_board_2">
			<table class="view_table">
				<thead>
					<tr>
						<td id="t_title">${view.title}</td>
					</tr>
					<tr>
						<th class="t_box">NAME</th>
						<td id="t_writer">${view.writer}</td>
						<th class="t_box">DATE</th>
						<td id="t_date">${view.reg_date}</td>
						<th></th>
						<th id="t_box_hit">HIT</th>
						<td id="t_hit">${view.hit}</td>
					</tr>
					<tr>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="t_con" colspan="4">${view.contents}</td>
					</tr>
				</tbody>
			</table>

			<div class="b_btn">
				<c:if test="${member.name eq view.writer || member.email eq 'gohere@gohere.gohere'}">
					<a href="${board}Update.sell?num=${view.num}">Update</a>
					<a href="${board}Delete.sell?num=${view.num}">Delete</a>
				</c:if>
				
				<c:if test="${board ne 'notice'}">
					<c:if test="${board eq 'qna' and member.name eq view.writer}">
						<a href="#">Reply</a>
					</c:if>
				</c:if>
				<c:if test="${board eq 'review' and not empty member}">
						<a href="#">Reply</a>
					</c:if>
				
				<div id="b_list">
					<a href="./${board}List.sell">List</a>
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