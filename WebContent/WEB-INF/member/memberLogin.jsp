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
	
	  $("#loginbtn").click(function(){
		   $("form").submit();
	  })

	  $("#Joinbtn").click(function(){
		  window.open("<%=request.getContextPath()%>/member/memberJoin.member", "", "top=300, left=750, width=400, height=500");
	  })
	  $("#Serchbtn").click(function(){
		  window.open("<%=request.getContextPath()%>/member/memberSearch.member", "", "top=300, left=750, width=400, height=500");
	  })
  })
  </script>
</head>
<body>
	<div id="frmdiv">
		<b>GoHere?</b>
		<hr>
	<form action="./memberLogin.member" title="로그인" method="post">
		<div class="input-group col-xs-8">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <br>
    <div class="input-group col-xs-8">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    	<div id="btn_div">
		<button type="button" class="btn btn-default btn-sm" id="loginbtn" style="margin-top: 10px;">로그인</button>
		<button type="button" class="btn btn-default btn-sm" id="Joinbtn" style="margin-top: 10px;">회원가입</button>
		<button type="button" class="btn btn-default btn-sm" id="Serchbtn" style="margin-top: 10px;">아이디/비밀번호찾기</button>
    	</div>

	</form>
	</div>
</body>
</html>