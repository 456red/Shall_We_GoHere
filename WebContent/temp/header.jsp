<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="../css/header.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
 $(function(){
	 $("#joinbtn").click(function(){
		 window.open("../member/memberJoin.jsp", "", "top=300, left=750, width=400, height=400");
	 });
	 $("#loginbtn").click(function(){
		 window.open("../member/memberLogin.jsp", "", "top=300, left=750, width=400, height=400");
	 });
 });
</script>
</head>
<body>
	<header>
		<div id="mainMenu">
			<div id="logo"><a href="#"><img alt="" src="../images/common/logo.png"></a></div>
			<nav>
				<ul>
					<li><a href="#">여행정보</a></li>
					<li><a href="#">여행일정</a></li>
					<li><a href="#">여행후기</a></li>
					<li><a href="#">중고나라</a></li>
				</ul>
			</nav>
			<div id="memberMenu">
				<input type="button" value="로그인" id="loginbtn">
				<input type="button" value="회원가입" id= "joinbtn">
			</div>
		</div>
	</header>
</body>
</html>