<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
<link href="../css/login.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  $(function(){
	  $('#loginbtn').tooltip({title: "여기갈래!", placement: "right"});
	  $("#loginbtn").click(function(){
		   $("form").submit();
	  })
  })
  </script>
</head>
<body>
	<form action="./memberLogin.member" title="로그인" method="post">
		<b>여기갈래 로그인</b>
		<hr>
		<div class="input-group col-xs-8">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <br>
    <div class="input-group col-xs-8">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    	<div id="btn">
		<button type="button" class="btn btn-default btn-sm" id="loginbtn">로그인</button>
    	</div>
	</form>
</body>
</html>