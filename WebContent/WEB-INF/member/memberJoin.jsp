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
  		$("#name").keyup(function(){
  			if($("#name input").val().length==0){
  				$("#name").attr("class", "form-group has-error has-feedback");
  	  			$("#name span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
  			}else{
  			$("#name").attr("class", "form-group has-success has-feedback");
  			$("#name span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			}
  			
  		});
  		
  		$("#email").keyup(function(){
  			if($("#email input").val().length==0){
  				$("#email").attr("class", "form-group has-error has-feedback");
  	  			$("#email span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
  			}else{
  			$("#email").attr("class", "form-group has-success has-feedback");
  			$("#email span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			}
  			
  		});
  		
  		$("#password").keyup(function(){
  			if($("#password input").val().length<6 || $("#password input").val().length>12){
  				$("#password").attr("class", "form-group has-error has-feedback");
  	  			$("#password span").attr("class", "glyphicon glyphicon-remove form-control-feedback");	
  			}else{
  			$("#password").attr("class", "form-group has-success has-feedback");
  			$("#password span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			}
  		});
  			
  		$("#password2").keyup(function(){
  	  		if($("#password2 input").val().length<6 || $("#password2 input").val().length>12 || $("#password2 input").val()!=$("#password input").val()){
  	  			$("#password2").attr("class", "form-group has-error has-feedback");
  	  			$("#password2 span").attr("class", "glyphicon glyphicon-remove form-control-feedback");	
  	  		}else{
  	  		$("#password2").attr("class", "form-group has-success has-feedback");
  			$("#password2 span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  	  		}
  			
  		});
  	});
  </script>
</head>
<body>
	<form action="./member/memberJoin.member" method="post">
		<b>여기갈래 회원가입</b>
		<hr>
		<div class="form-group has-warning has-feedback" id="name">
      <label for="inputWarning2"></label>
      <input type="text" class="form-control" id="inputWarning2" placeholder="이름">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<div class="form-group has-warning has-feedback" id="email">
      <label for="inputWarning2"></label>
      <input type="text" class="form-control" id="inputWarning2" placeholder="이메일주소">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<div class="form-group has-warning has-feedback" id="password">
      <label for="inputWarning2"></label>
      <input type="password" class="form-control" id="inputWarning2" placeholder="비밀번호 (6자 ~ 20자)">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
    <div class="form-group has-warning has-feedback" id="password2">
      <label for="inputWarning2"></label>
      <input type="password" class="form-control" id="inputWarning2" placeholder="비밀번호확인 (6자 ~ 20자)">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<p>남<input type="radio" name="gender" value="M">
		여<input type="radio" name="gender" value="F"></p>
		<input type ="button" value="회원가입">
	</form>
</body>
</html>