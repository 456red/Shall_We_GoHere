<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../css/header.css" rel="stylesheet">
<link href="../css/mypage.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$("#update").click(function(){
		location.href="./memberUpdate.member";
		
	})
	$("#delete").click(function(){
		location.href="./memberDelete.member";
		
	})
})
</script>
</head>
<body>
	<%@include file="../temp/header.jsp"%>
	<section id="myPageAll">
		<div id="myPage">
			<a href="#">
				<div class="col-sm-4">
					<img src="../images/common/회원정보.JPG"></span>
					<h4>Profile</h4>
					<h5>회원정보수정</h5>
		</div>
			</a>
		<a href="#">
			<div class="col-sm-4">
				<img src="../images/common/회원정보.JPG"></span>
				<h4>Plan</h4>
				<h5>나의여행일정</h5>
		</div>
		</a>
		<a href="#">
			<div class="col-sm-4">
				<img src="../images/common/회원정보.JPG"></span>
				<h4>Point</h4>
				<h5>포인트사용</h5>
		</div>
		</a>
		</div>
	</section>
</body>
</html>