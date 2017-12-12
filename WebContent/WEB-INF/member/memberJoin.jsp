<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  			var check1 = false;
  			var check2 = false;
  			var check3 = false;
  			
  			if(${check != null}){
  				check1 = true;
  				check2 = true;
  			$("#name").attr("class", "form-group has-success has-feedback");
  	  		$("#name span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  	  		$("#email").attr("class", "form-group has-success has-feedback");
  			$("#email span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			}
  			
  		
  		$("#name").keyup(function(){
  			if($("#name input").val().length<2){
  				$("#name").attr("class", "form-group has-error has-feedback");
  	  			$("#name span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
  	  			
  			}else{
  			$("#name").attr("class", "form-group has-success has-feedback");
  			$("#name span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			check1 = true;
  			}
  			
  		});
  		
  		$("#email").keyup(function(){
  			if($("#email input").val().length<8){
  				$("#email").attr("class", "form-group has-error has-feedback");
  	  			$("#email span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
  			}else{
  			$("#email").attr("class", "form-group has-warning has-feedback");
  			$("#email span").attr("class", "glyphicon glyphicon-warning-sign form-control-feedback");
  			
  			}
  			
  		});
  		
  		$("#password").keyup(function(){
  			if($("#password input").val().length<6 || $("#password input").val().length>12){
  				$("#password").attr("class", "form-group has-error has-feedback");
  	  			$("#password span").attr("class", "glyphicon glyphicon-remove form-control-feedback");	
  			}else{
  			$("#password").attr("class", "form-group has-success has-feedback");
  			$("#password span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			check3 = true;
  			}
  		});
  			
  		$("#password2").keyup(function(){
  	  		if($("#password2 input").val().length<6 || $("#password2 input").val().length>12 || $("#password2 input").val()!=$("#password input").val()){
  	  			$("#password2").attr("class", "form-group has-error has-feedback");
  	  			$("#password2 span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
  	  			check3 = false;
  	  		}else{
  	  		$("#password2").attr("class", "form-group has-success has-feedback");
  			$("#password2 span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  				check3 = true;
  	  		}
  		});
  		
  		$("#recommend").keyup(function(){
  			if($("#recommend input").val().length==0){
  				$("#recommend").attr("class", "form-group has-warning has-feedback");
  	  			$("#recommend span").attr("class", "glyphicon glyphicon-warning-sign form-control-feedback");
  			}else{
  			$("#recommend").attr("class", "form-group has-success has-feedback");
  			$("#recommend span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
  			}
  			
  		});
  		
  		$("#btn").click(function(){
  			
  			if(check1 && check2 && check3){
  				if($("#recommend input").val()==""){
  					
  					$("#recommend input").attr("value", "gohere@gohere.gohere");
  				}
  				$("form").submit();
  			}else{
  				alert("다시확인해주세요")		
  			}			
  		});
  		
  		$("#btn2").click(function(){
  			window.open("../email/sendMail.email?email="+$("#email input").val()+"&&name="+$("#name input").val(),"","top=300, left=750, width=400, height=400");
  			window.close();
  		});
  		
  	
  	
  	});
  </script>
</head>
<body>
	<form action="./memberJoin.member" method="post">
		<b>여기갈래 회원가입</b>
		<hr>
		<div class="form-group has-warning has-feedback" id="name">
      <label for="inputWarning2"></label>
      Name: <input type="text" class="form-control" id="inputWarning2" name="name" placeholder="필수항목" value="${name}">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		<div class="form-group has-warning has-feedback" id="email">
      <label for="inputWarning2"></label>
    이메일: <input type="text" class="form-control" id="inputWarning2" name="email" placeholder="필수항목" value="${email}">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
      <c:if test="${check eq null}">
      <input type="button" class="btn btn-default btn-sm" value="인증번호 발급" id="btn2">
      </c:if>
      
      
   
		<div class="form-group has-warning has-feedback" id="password">
      <label for="inputWarning2"></label>
    비밀번호: <input type="password" class="form-control" id="inputWarning2" name="password" placeholder="필수항목 (6자 ~ 20자)">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
    
    <div class="form-group has-warning has-feedback" id="password2">
      <label for="inputWarning2"></label>
    비밀번호 확인: <input type="password" class="form-control" id="inputWarning2" placeholder="필수항목 (6자 ~ 20자)">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
    
    <div class="form-group has-warning has-feedback" id="recommend">
      <label for="inputWarning2"></label>
    추천인: <input type="text" class="form-control" id="inputWarning2" name="recommend" placeholder="추천하실이메일주소">
      <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
    </div>
		
		<input type="button" class="btn btn-default btn-sm" value="회원가입" id="btn">
	</form>
</body>
</html>