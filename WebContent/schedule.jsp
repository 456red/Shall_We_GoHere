<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="./css/schedule.css" rel="stylesheet">
<link href="./css/header.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#goMap").click(function(){
		location.href="./goMap.jsp";
	});
});
</script>
</head>
<body>
	<%@include file="./temp/header.jsp" %>
	<div id = "schmain">
		<p>누구나 쉽게 일정을 계획할 수 있습니다.</p>
		<input type ="button" id="goMap" value="새로운 일정 만들기">
		<input type ="button" value="나의 일정 보기">
	</div>
	<div>
		<div class="scbtxt" id="txt1">
			<b>여행자들의 일정보기</b>
		</div>
		<table class="table table-hover" id="tb">
			<tr>
				<td><div class="td">여행지</div></td>
				<td><a href="#"><div class="tbsel">서울</div></a><a href="#"><div class="tbsel">경기</div></a><a href="#"><div class="tbsel">인천</div></a></td>
			</tr>
			<tr>
				<td><div class="td">여행일</div></td>
				<td><a href="#"><div class="tbsel">1-3일</div></a><a href="#"><div class="tbsel">4-6일</div></a><a href="#"><div class="tbsel">7-10일</div></a></td>
			</tr>
			<tr>
				<td><div class="td">여행시기</div></td>
				<td><a href="#"><div class="tbsel">봄</div></a><a href="#"><div class="tbsel">여름</div></a><a href="#"><div class="tbsel">가을</div></a><a href="#"><div class="tbsel">겨울</div></a></td>
			</tr>
			<tr>
				<td><div class="td">여행테마</div></td>
				<td><a href="#"><div class="tbsel">가족여행</div></a><a href="#"><div class="tbsel">나홀로여행</div></a><a href="#"><div class="tbsel">커플여행</div></a></td>
			</tr>
		</table>
	</div>
</body>
</html>