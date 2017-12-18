<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
 $(function(){

	 var a = true;
	 
	 $('#joinbtn').tooltip({title: "여기갈래?", placement: "bottom"});
	 
	 $('#loginbtn').tooltip({title: "여기갈래!", placement: "bottom"});
	 
	 $("#joinbtn").click(function(){
		 window.open("<%=request.getContextPath()%>/member/memberJoin.member", "", "top=300, left=750, width=400, height=400");
	 });
	 $("#loginbtn").click(function(){
		 window.open("<%=request.getContextPath()%>/member/memberLogin.member", "", "top=300, left=750, width=400, height=400");
	 });
	 $("#logoutbtn").click(function(){
		 location.href="./member/memberLogout.member";
	 });
	 
 });
</script>
</head>
<body>
	<header>
		<div id="mainMenu">
			<div id="logo"><a href="#"><img alt="" src="<%=request.getContextPath()%>/images/common/logo.png"></a></div>
			<nav id="category">
				<ul>
					<li><a href="#">여행정보</a></li>
					<li><a href="#">여행일정</a></li>
					<li><a href="#">여행후기</a></li>
					<li><a href="./sell/sellHome.sell">상품</a></li>
				</ul>
			</nav>
		</div>
			
			<div id="memberMenu">
				<c:if test="${empty member}">
				<button type="button" class="btn btn-success btn-sm" id="loginbtn">로그인</button>
				<button type="button" class="btn btn-danger btn-sm" id= "joinbtn">회원가입</button>
				</c:if>
				<c:if test="${not empty member}">
				<button type="button" class="btn btn-success btn-sm" id="logoutbtn">로그아웃</button>
				<button type="button" class="btn btn-danger btn-sm" id= "myPagebtn">마이페이지</button>
				</c:if>
			</div>
			
			
	</header>
</body>
</html>