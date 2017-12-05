<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$(function(){
  		$("#inputWarning2").keyup(function(){
  			$(".form-group has-warning has-feedback").attr("class", "form-group has-success has-feedback");
  		});
  	});
  </script>
</head>
<body>
	<form action="">
		<b>여기갈래 회원가입</b>
		<hr>
		<div class="form-group has-warning has-feedback">
      <label for="inputWarning2"></label>
      <input type="text" class="form-control" id="inputWarning2" placeholder="이름">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<div class="form-group has-warning has-feedback">
      <label for="inputWarning2"></label>
      <input type="text" class="form-control" id="inputWarning2" placeholder="이메일 주소">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<div class="form-group has-warning has-feedback">
      <label for="inputWarning2"></label>
      <input type="password" class="form-control" id="inputWarning2" placeholder="비밀번호 (6자 ~ 20자)">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<p>남<input type="radio" name="gender" value="M">
		여<input type="radio" name="gender" value="F"></p>
		<input type ="button" value="회원가입">
	</form>
</body>
</html>