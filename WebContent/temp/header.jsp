<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
 $(function(){
	 $("#joinbtn").click(function(){
		 window.open("./member/memberJoin.jsp", "", "top=300, left=750, width=400, height=400");
	 });
	 $("#loginbtn").click(function(){
		 window.open("./member/memberLogin.jsp", "", "top=300, left=750, width=400, height=400");
	 });
 });
</script>
	<header>
		<div id="mainMenu">
			<div id="logo"><a href="#"><img alt="" src="./images/common/logo.png"></a></div>
			<nav id="category">
				<ul>
					<li><a href="#">여행정보</a></li>
					<li><a href="#">여행일정</a></li>
					<li><a href="#">여행후기</a></li>
					<li><a href="#">중고나라</a></li>
				</ul>
			</nav>
		</div>
			
			<div id="memberMenu">
				<button type="button" class="btn btn-success btn-sm" id="loginbtn">로그인</button>
				<button type="button" class="btn btn-danger btn-sm" id= "joinbtn">회원가입</button>
			</div>
	</header>