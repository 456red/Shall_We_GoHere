<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btn").click(function(){
		if(${member.password} != $("#password").val()){
			alert("비밀번호 다시확인");
		}else{
			$("form").submit();
		}
	})
	
});
</script>
</head>
<body>
<form action="./memberDelete.member" method="post">
<div>
EMAIL:<input type="text" value="${member.email}" readonly="readonly" name="email">
</div>
<div>
NAME:<input type="text" value="${member.name}" readonly="readonly">
</div>
<div>
PASSWORD:<input type="password" name="password" id="password">
</div>
<div>
JOINDATE:<input type="text" name="join_date" value="${member.join_date}" readonly="readonly">
</div>
REASON:<select id="select" name="reason">
	<option value="가">가</option>
	<option value="나">나</option>
	<option value="다">다</option>
</select>
<input type="button" value="탈퇴" id="btn">
</form>
</body>
</html>